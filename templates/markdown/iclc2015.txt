---
title: 'Your paper title goes here'
author:
  - name: Author one
    affiliation: University of Somewhere
    email: one@roulette.mx
  - name: Author two
    affiliation: University of Elsewhere
    email: algo@rave.ac.uk
abstract: |
  Replace this text with a 100-250 word abstract. You'll find it in the
  'metadata block' at the top of your markdown document), be sure that
  each line of the abstract is indented.
fontsize: 11pt
geometry: margin=2cm
fontfamily: libertine
fontfamily: inconsolata
mainfont: Linux Libertine O
monofont: Inconsolata
bibliography: references.bib
...

# Introduction

Welcome to the markdown (aka commonmark) template for the first
International Conference on Live Coding, 2015.

This document is a guide to using markdown for the conference, and is
itself written in markdown. For full understanding, refer to
iclc2015.txt to see the source of this document, and iclc2015.pdf to
see the typeset output. Use of this template is currently only
recommended for those familiar with commandline tools.

We suggest you take a copy of this template (iclc2015.txt), and use it
as a starting point for your ICLC paper.

It is unusual for a conference to ask for papers to be created in this
markdown format. We have done so to enable us to make proceedings
available both in PDF files suitable for print, and in HTML suitable
for the web. This is useful for making sure your paper is fully
accessible, via Internet search, and with assistive technology such as
screen readers for blind people. However, it is a bit of an
experiment, and you may find certain things turn out to be difficult
to do with markdown. We recommend taking a straightforward approach to
formatting your document.

If you do not wish to use markdown, please do not be discouraged from
submitting your paper, there is also a word document template
available from the conference website.

# Learning and using markdown

We realise learning new technology takes time, but we are happy to
answer any questions you have. This is best done via our online
community forum:
  [http://lurk.org/groups/lcrn/](http://lurk.org/groups/lcrn/)

Alternatively you may email the conference chairs directly:
  [livecodenet@gmail.com](mailto:livecodenet@gmail.com)

## Running pandoc {#pandoc}

Pandoc is software which turns text written in markdown into a
beautiful looking document, complete with references. You will need to
run it to create PDF documents of your paper for checking and
uploading for peer review.

You may download pandoc for all major operating systems (including MS
Windows, Apple Mac OS and GNU/Linux) from the following website:
[http://johnmacfarlane.net/pandoc/](http://johnmacfarlane.net/pandoc/)

To produce PDF files you will need to have LaTeX installed, as well as
pandoc. Again, see the pandoc website for installation instructions:
[http://johnmacfarlane.net/pandoc/installing.html](http://johnmacfarlane.net/pandoc/installing.html). LaTeX
is used internally, you will not have to edit any LaTeX documents.

To render your markdown source as HTML, open a terminal window, change
into the folder where the template is and run the following command:

~~~~ {.bash}
pandoc --template=pandoc/iclc.html --filter pandoc-citeproc -N iclc2015.txt -o iclc2015.html
~~~~

To produce a PDF document, make sure you have LaTeX installed (see
above), and run the following:

~~~~ {.bash}
pandoc --template=pandoc/iclc.latex --filter pandoc-citeproc -N iclc2015.txt -o iclc2015.pdf
~~~~

For a higher quality output, add the option `--latex-engine=xelatex`
to the above. You will need the [Inconsolata](http://levien.com/type/myfonts/inconsolata.html) and [Linux Libertine](http://www.linuxlibertine.org/index.php?id=91&L=1) opentype fonts installed.

An example Makefile is also provided to run these commands for you.

## Bibliographic references

Pandoc accepts bibliographic databases in a range of formats, make
sure you have the right extension on your file.

  Format            File extension
  ------------      --------------
  MODS              .mods
  BibLaTeX          .bib
  BibTeX            .bibtex
  RIS               .ris
  EndNote           .enl
  EndNote XML       .xml
  ISI               .wos
  MEDLINE           .medline
  Copac             .copac
  JSON citeproc     .json

Table: Supported bibliography formats with file extension.

Authors may be referenced in two ways; inline, e.g. @Schwitters32
wrote the Ursonate sound poem, or in parenthesis, e.g. Ursonate is a
sound poem [@Schwitters32]. Multiple references should be grouped
together like so [@Schwitters32;@Miller56;@Greenewalt46].

The pandoc command given in the [above section](#pandoc) will automatically
render your references according to Chicago author-date style.

## Code

We have chosen a single column layout to better support code examples
without having to break lines. The following shows how to include a
code example with syntax highlighting:

~~~~ {.haskell}
d1 $ every 3 (iter 4) $ brak $ "bd [sn [[sn bd] sn]]*1/3"
~~~~

For a list of supported languages, you can visit this page:
[http://johnmacfarlane.net/highlighting-kate/]

If your favourite language isn't listed, perhaps a language with a
similar syntax will still work.

## Figures

Images should be included as figures, with captions provided and
formatted as shown in Figure 1. Be prepared for the page layout and
image size to be changed during the editing and layout process, and
consider this when referring to the figures in the text.

![*A descriptive caption should be given for all figures, understandable without reference to the rest of the article.*](images/pomeroy.jpg)

# Conclusion

Again, if you have any questions or problems, please share them on the forum:
  http://lurk.org/groups/lcrn/

Or email the conference organisers directly:
  livecodenet@gmail.com

# References
