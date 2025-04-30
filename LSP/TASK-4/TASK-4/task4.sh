#!/bin/bash

count_lines() {
    local file=$1
    if [ -f "$file" ]; then
        lines=$(wc -l < "$file")
        echo "File '$file' has $lines lines."
    else
        echo "File '$file' does not exist."
    fi
}

files=("file1.txt" "file2.txt" "file3.txt")

for file in "${files[@]}"; do
    count_lines "$file"
done

