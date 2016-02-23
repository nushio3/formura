#!/usr/bin/env bash

# Thanks to Braiam and terdon in
# http://superuser.com/questions/601198/how-can-i-automatically-convert-all-source-code-files-in-a-folder-recursively
#
# We need pdflatex, color and listings to run this, which can be installed by
#    sudo apt-get install texlive-latex-extra latex-xcolor texlive-latex-recommended


filename_body=$(mktemp)
tex_file=$filename_body.tex ## Random temp file name

cat<<EOF >$tex_file   ## Print the tex file header
\documentclass{article}
\usepackage{listings}
\usepackage[usenames,dvipsnames]{color}  %% Allow color names
\lstdefinestyle{customasm}{
  belowcaptionskip=1\baselineskip,
  xleftmargin=\parindent,
  language=Haskell,   %% Change this to whatever you write in
  breaklines=true, %% Wrap long lines
  basicstyle=\footnotesize\ttfamily,
  commentstyle=\itshape\color{Gray},
  stringstyle=\color{Black},
  keywordstyle=\bfseries\color{OliveGreen},
  identifierstyle=\color{blue},
  xleftmargin=-8em,
}
\usepackage[colorlinks=true,linkcolor=blue]{hyperref}
\begin{document}
\tableofcontents

EOF

find src/ -type f ! -regex ".*/\..*" ! -name ".*" ! -name "*~"  -name '*.hs' !  -name '*_flymake.hs'| sort |
sed 's/^\..//' |                 ## Change ./foo/bar.src to foo/bar.src

while read  i; do                ## Loop through each file

   echo "\newpage" >> $tex_file   ## start each section on a new page
    echo "\section{$i}" >> $tex_file  ## Create a section for each file

   ## This command will include the file in the PDF
    echo "\lstinputlisting[style=customasm]{$i}" >>$tex_file
done &&
echo "\end{document}" >> $tex_file &&
pdflatex -output-directory /tmp $tex_file &&
pdflatex -output-directory /tmp $tex_file  ## This needs to be run twice
                                           ## for the TOC to be generated
mv $filename_body.pdf all-sources.pdf
