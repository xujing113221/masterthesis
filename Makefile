TEX_IN=MasterThesis
TEX_OUT=JingXu_Masterthesis_2021

.PHONY: clean depclean 

#-----------------------------------------------------------
# build masterthesis
#-----------------------------------------------------------
default : $(TEX_OUT).pdf

$(TEX_OUT).pdf: $(TEX_IN).tex 
	pdflatex -synctex=1 -interaction=nonstopmode $(TEX_IN).tex
	-@mv $(TEX_IN).pdf $(TEX_OUT).pdf


#-----------------------------------------------------------
# clean & depclean
#-----------------------------------------------------------
clean:
	-@rm -f \
		*~ \
		*.aux \
		*.bak \
		*.synctex.gz \
		core \
		*.blg \
		*.toc \
		*.log \
		*.out \
		*.bcf \
		*.xml \
		*.fls\
		*.lot \
		*.lof \
		sections/*.aux \
		sections/*.log \
		__latexindent_temp.tex


depclean: clean
	-@rm -rf $(TEX_OUT).pdf
