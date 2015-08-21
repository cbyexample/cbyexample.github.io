#!/bin/sh

for file in `ls mdpages | sed 's/\..*$//'`; do
    echo "$file"
    pandoc -o "pages/$file.html" "mdpages/$file.md"
done

cat index_template.html | fsub SECTIONS sections > index.html
