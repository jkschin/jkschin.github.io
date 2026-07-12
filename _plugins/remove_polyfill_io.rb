require 'nokogiri'
require 'uri'

module Jekyll
  module RemovePolyfillIo
    ALLOWED_POLYFILL_HOSTS = ['polyfill.io', 'cdn.polyfill.io'].freeze

    def self.polyfill_io_src?(src)
      uri = URI.parse(src)
      return false unless uri.is_a?(URI::HTTP)

      ALLOWED_POLYFILL_HOSTS.include?(uri.host&.downcase)
    rescue URI::InvalidURIError
      false
    end

    def self.remove_polyfill_io_script!(document)
      return unless document.output_ext == '.html'
      return if document.output.to_s.empty?

      html = Nokogiri::HTML(document.output)
      removed = false

      html.css('script[src]').each do |script|
        next unless polyfill_io_src?(script['src'])

        script.remove
        removed = true
      end

      document.output = html.to_html if removed
    end
  end
end

Jekyll::Hooks.register [:pages, :documents], :post_render do |document|
  Jekyll::RemovePolyfillIo.remove_polyfill_io_script!(document)
end
