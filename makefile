TEX = pandoc
src = template.tex details.yml
FLAGS = --pdf-engine=xelatex

resume_hernandez-sean.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm resume_hernandez-sean.pdf
