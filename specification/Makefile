TARGET=spec-main

all:
	platex --shell-escape $(TARGET).tex
	bibtex $(TARGET)
	platex --shell-escape $(TARGET).tex
	platex --shell-escape $(TARGET).tex
	dvipdfmx $(TARGET).dvi
