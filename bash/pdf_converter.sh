#!/bin/bash

# Loop through all .html files in the current directory
for file in *.html; do
    # Extract filename without extension
    filename="${file%.html}"
    
    # Convert HTML to PDF using pandoc and weasyprint
    pandoc "$file" -o "$filename.pdf" --pdf-engine=weasyprint -V mainfont="Arial"
    
    echo "Converted $file -> $filename.pdf"
done