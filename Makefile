.PHONY: all clean lint

LATEX ?= pdflatex

all: src/example.pdf

clean:
	latexmk -C

lint:
	npx eclint check *.cls *.sty *.tex src/lib/

%.pdf: %.tex
	latexmk --interaction=nonstopmode --pdf --pdflatex=$(LATEX) $<
