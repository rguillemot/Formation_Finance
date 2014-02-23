TEX = pdflatex -interaction nonstopmode -output-directory=./compile/ 
PDF = ./pdf
COMPILE = ./compile

DERIVES_DE_TAUX = \
		Derives_de_taux/jour1_derivatives.pdf \
		Derives_de_taux/jour2_curve_hedge.pdf \
		Derives_de_taux/jour3_options.pdf \
		Derives_de_taux/jour3_convexity_adj.pdf

%.pdf: %.tex
	$(TEX) $<
	cp $(COMPILE)/$(notdir $@) $(PDF)/$(notdir $@)

Derives_de_taux: $(DERIVES_DE_TAUX)

all:  Derives_de_taux

clean:
	rm -fr $(COMPILE)/*
	rm -fr $(PDF)/*
