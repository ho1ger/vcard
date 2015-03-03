#!/bin/bash
qrencode -t eps -o tmp.eps < qrcode.txt
ps2pdf tmp.eps tmp.pdf
pdfcrop tmp.pdf qrcode.pdf
xelatex vcard.tex
rm tmp* *.fls *.aux *.fdb_latexmk *.log
open vcard.pdf
