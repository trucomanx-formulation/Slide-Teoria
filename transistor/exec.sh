
filename=transistor

latex $filename
latex $filename
bibtex $filename
makeindex -s nomencl.ist -t $filename.nlg -o $filename.nls $filename.nlo
latex $filename
latex $filename
dvips -o $filename.ps $filename.dvi
ps2pdf $filename.ps $filename.pdf

#latex2html -split +1 -image_type png $filename.tex 
./clean.sh
