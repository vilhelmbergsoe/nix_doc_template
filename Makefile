BUILDDIR=build
FILENAME=main

pdf:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
		--citeproc \
		--from=markdown+raw_tex \
		--to=latex \
		--output=$(BUILDDIR)/$(FILENAME).pdf \
		--pdf-engine=xelatex

docx:
	mkdir $BUILDDIR) -p
	pandoc $(FILENAME).md \
		--output=$(BUILDDIR)/$(FILENAME).pdf

watch:
	ls main.md | entr make
