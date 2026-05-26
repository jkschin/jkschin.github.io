#!/usr/bin/env python3
import sys
import os

def install_and_import(package):
    import importlib
    try:
        importlib.import_module(package)
    except ImportError:
        import subprocess
        print(f"Installing {package}...")
        subprocess.check_call([sys.executable, "-m", "pip", "install", package])
    finally:
        globals()[package] = importlib.import_module(package)

# Ensure scholarly is installed
try:
    install_and_import('scholarly')
except Exception as e:
    print(f"Error: Could not install or import 'scholarly'. Please run 'pip install scholarly' manually.\nDetail: {e}")
    sys.exit(1)

from scholarly import scholarly

SCHOLAR_ID = 'dY5xc7IAAAAJ'
BIB_FILE_PATH = os.path.join(os.path.dirname(__file__), '../_bibliography/papers.bib')

def generate_bibtex(pub):
    bib = pub.get('bib', {})
    title = bib.get('title', 'Unknown Title')
    author = bib.get('author', 'Unknown Author')
    year = bib.get('pub_year', bib.get('year', ''))
    journal = bib.get('journal', '')
    abstract = bib.get('abstract', '')
    
    first_author_last = "chin"
    if author:
        first_author = author.split(' and ')[0]
        if ',' in first_author:
            first_author_last = first_author.split(',')[0].strip().lower()
        else:
            first_author_last = first_author.split(' ')[-1].strip().lower()
    
    clean_title = "".join(c for c in title.split(' ')[0] if c.isalnum()).lower()
    bibkey = f"{first_author_last}{year}{clean_title}"
    
    entry_type = "article" if journal else "misc"
    
    bibtex = f"@{entry_type}{{{bibkey},\n"
    bibtex += f"  title={{{title}}},\n"
    bibtex += f"  author={{{author}}},\n"
    if year:
        bibtex += f"  year={{{year}}},\n"
    if journal:
        bibtex += f"  journal={{{journal}}},\n"
    
    # Add optional fields if present
    for field in ['volume', 'number', 'pages', 'publisher', 'doi']:
        if field in bib:
            bibtex += f"  {field}={{{bib[field]}}},\n"
            
    pub_url = pub.get('pub_url', '')
    if pub_url:
        bibtex += f"  html={{{pub_url}}},\n"
        
    if abstract:
        bibtex += f"  abstract={{{abstract}}},\n"
        
    bibtex += "  selected={true},\n"
    bibtex += "  abbr={arXiv},\n"
    bibtex += "  bibtex_show={true}\n"
    bibtex += "}"
    
    return bibtex

def main():
    print(f"Fetching Google Scholar profile for ID: {SCHOLAR_ID}...")
    try:
        author = scholarly.search_author_id(SCHOLAR_ID)
        author = scholarly.fill(author, sections=['publications'])
    except Exception as e:
        print(f"Error fetching profile: {e}")
        print("Note: Google Scholar frequently rate-limits requests. If this fails, try using a VPN or wait a few minutes.")
        sys.exit(1)

    publications = author.get('publications', [])
    # Sort publications by year descending (newest first)
    publications.sort(key=lambda p: p.get('bib', {}).get('pub_year', 0), reverse=True)
    print(f"Found {len(publications)} publications. Fetching details and generating BibTeX...")

    bibtex_entries = []
    
    # Header for the bib file
    bibtex_entries.append("---\n---\n\n@string{aps = {American Physical Society,}}\n")

    for i, pub in enumerate(publications):
        title = pub.get('bib', {}).get('title', 'Unknown Title')
        print(f"[{i+1}/{len(publications)}] Fetching: {title}...")
        try:
            # Fill the publication to get details
            filled_pub = scholarly.fill(pub)
            bibtex_str = generate_bibtex(filled_pub)
            bibtex_entries.append(bibtex_str)
        except Exception as e:
            print(f"  Warning: Could not generate BibTeX for '{title}': {e}")

    # Write to _bibliography/papers.bib
    try:
        with open(BIB_FILE_PATH, 'w', encoding='utf-8') as f:
            f.write('\n\n'.join(bibtex_entries))
        print(f"\nSuccess! Successfully wrote {len(publications)} entries to {BIB_FILE_PATH}")
    except Exception as e:
        print(f"Error writing to file: {e}")
        sys.exit(1)

if __name__ == '__main__':
    main()
