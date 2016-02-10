all: formura-specification.pdf   formura-users-manual.pdf

formura-specification.pdf: formura-specification.tex
	platex --shell-escape formura-specification.tex
	bibtex formura-specification
	platex --shell-escape formura-specification.tex
	platex --shell-escape formura-specification.tex
	dvipdfmx formura-specification.dvi

formura-users-manual.pdf: formura-users-manual.tex input-*.tex
	platex --shell-escape formura-users-manual.tex
	bibtex formura-users-manual
	platex --shell-escape formura-users-manual.tex
	platex --shell-escape formura-users-manual.tex
	dvipdfmx formura-users-manual.dvi
