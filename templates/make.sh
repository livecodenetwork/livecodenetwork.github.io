#!/bin/bash
pandoc --variable mainfont="Linux Libertine O" --latex-engine=xelatex  -V geometry:margin=1in --bibliography=references.bib template.md -o template.pdf
#pandoc --variable mainfont="Linux Libertine O" --latex-engine=xelatex  -V geometry:margin=1in --bibliography=references.bib --reference-odt=iclc2015-reference.odt template.md -o template.odt
#pandoc -N -V geometry:margin=2cm --bibliography=references.bib template.md -o template.html
#pandoc -N -V geometry:margin=2cm --bibliography=references.bib template.md -o template.docx
