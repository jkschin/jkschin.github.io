module Jekyll
  module RemovePolyfillIo
    POLYFILL_IO_SCRIPT_PATTERN = %r{<script[^>]+src=["']https?://(?:cdn\.)?polyfill\.io/[^"']+["'][^>]*>\s*</script>}i

    def self.remove_polyfill_io_script!(document)
      return unless document.output_ext == '.html'
      return unless document.output&.include?('polyfill.io')

      document.output = document.output.gsub(POLYFILL_IO_SCRIPT_PATTERN, '')
    end
  end
end

Jekyll::Hooks.register [:pages, :documents], :post_render do |document|
  Jekyll::RemovePolyfillIo.remove_polyfill_io_script!(document)
end
