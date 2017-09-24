PAPER = rv128-arch-spec
TEX = $(wildcard *.tex)
BIB = $(PAPER).bib
FIGS = $(wildcard figures/*.pdf figures/*.png figures/*.jpg ./*.jpg)

.PHONY: all clean

$(PAPER).pdf: $(TEX) $(BIB) $(FIGS)
	echo $(FIGS)
	pdflatex $(PAPER)
	makeglossaries $(PAPER)
	bibtex $(PAPER)
	pdflatex $(PAPER)
	pdflatex $(PAPER)
clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc $(PAPER).pdf
