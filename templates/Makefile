all: iclc2015.pdf iclc2015.html

iclc2015.html: iclc2015.txt
	pandoc --template=pandoc/iclc.html --filter pandoc-citeproc --number-sections iclc2015.txt -o iclc2015.html

iclc2015.pdf: iclc2015.txt
	pandoc --template=pandoc/iclc.latex --filter pandoc-citeproc --number-sections iclc2015.txt -o iclc2015.pdf
