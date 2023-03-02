TARGETS ?= main.pdf main.docx

SOURCE = main.md

all: $(TARGETS)

watch:
	echo $(SOURCE) | entr -sc $(MAKE)

main.pdf: $(SOURCE)
	pandoc \
		--citeproc \
		--from=markdown+raw_tex \
		--to=latex \
		--pdf-engine=xelatex \
		--pdf-engine-opt=-output-directory=_output \
		-o $@ $<
	rm _output -rf

main.docx: $(SOURCE)
	pandoc \
	--pdf-engine-opt=-output-directory=_output \
	-o $@ $<
	rm _output -rf

clean:
	rm -rfv *.pdf *.docx *.html *.log result result-* _*


install: $(TARGETS)
	mkdir -p $(out)
	mv $^ $(out)

.PHONY: all install clean
