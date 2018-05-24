



doc.pdf: doc.tex .figures
	git rev-parse HEAD > gitrevision
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode -shell-escape" -use-make doc.tex


.figures:
	cd figures && make

clean:
	latexmk -CA
	rm doc.pdf
