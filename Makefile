.PHONY: build
build: candidate.pdf interviewer.pdf

.PHONY: clean
clean:
	${RM} *.aux
	${RM} *.fdb_latexmk
	${RM} *.fls
	${RM} *.log
	${RM} *.out
	${RM} *.pdf
	${RM} *.synctex.gz

%.pdf: %.tex
	$(info generating $@)
	@lualatex --output-directory="$(dir $@)" --interaction=nonstopmode "$<" > /dev/null
