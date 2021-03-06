TEX = pdflatex -interaction nonstopmode -output-directory=./compile/ 
PDF = ./pdf
COMPILE = ./compile

DERIVES_DE_TAUX = \
		Derives_de_taux/jour1_derivatives.pdf \
		Derives_de_taux/jour2_curve_hedge.pdf \
		Derives_de_taux/jour3_options.pdf \
		Derives_de_taux/jour4_convexity_adj.pdf \
		Derives_de_taux/jour4_multi_curve.pdf \
		Derives_de_taux/multi_courbe.pdf \
		Derives_de_taux/jour4_multi_curve.pdf \
		Derives_de_taux/jour4_post2008.pdf \
		Derives_de_taux/evaluation.pdf \
		Derives_de_taux/evaluation_qcm.pdf \
		Forex_Credit_Change/jour1_forex.pdf \
		Forex_Credit_Change/jour1_forex_option.pdf \
		Forex_Credit_Change/webex_forex.pdf \
		Forex_Credit_Change/jour2_forex.pdf \
		Forex_Credit_Change/jour2_forex_quizz.pdf \
		Forex_Credit_Change/jour3_credit.pdf

%.pdf: %.tex
	$(TEX) $<
	cp $(COMPILE)/$(notdir $@) $(PDF)/$(notdir $@)

Derives_de_taux: $(DERIVES_DE_TAUX)

all:  Derives_de_taux

clean:
	rm -fr $(COMPILE)/*
	rm -fr $(PDF)/*
