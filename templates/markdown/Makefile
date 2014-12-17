all: iclc2015.pdf iclc2015.html

iclc2015.html: iclc2015.txt references.bib
	pandoc --template=pandoc/iclc.html --filter pandoc-citeproc --number-sections iclc2015.txt -o iclc2015.html

iclc2015.pdf: iclc2015.txt references.bib pandoc/iclc.latex pandoc/iclc.sty
	pandoc --template=pandoc/iclc.latex --filter pandoc-citeproc --number-sections iclc2015.txt -o iclc2015.pdf

iclc2015.docx: iclc2015.txt references.bib
	pandoc --filter pandoc-citeproc --number-sections iclc2015.txt -o iclc2015.docx

iclc2015x.pdf: iclc2015.txt references.bib pandoc/iclc.latex pandoc/iclc.sty
	pandoc --template=pandoc/iclc.latex --filter pandoc-citeproc --number-sections iclc2015.txt --latex-engine=xelatex -o iclc2015x.pdf
