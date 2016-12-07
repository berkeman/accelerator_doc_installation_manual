



doc.pdf: doc.tex
	git rev-parse HEAD > gitrevision
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode -shell-escape" -use-make doc.tex

clean:
	latexmk -CA
	rm doc.pdf
