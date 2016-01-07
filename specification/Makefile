TARGET=formura-specification

all:
	platex --shell-escape $(TARGET).tex
	bibtex $(TARGET)
	platex --shell-escape $(TARGET).tex
	platex --shell-escape $(TARGET).tex
	dvipdfmx $(TARGET).dvi
