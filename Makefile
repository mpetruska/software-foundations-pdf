
all: volume1 volume2 volume3 volume4 volume5 volume6 clean

.PHONY: help
help:
	@echo "Usage: make <target>"
	@echo
	@echo "Targets:"
	@echo "  help    -- show this help"
	@echo "  all     -- build all pdf files"
	@echo "  clean   -- clean up all intermediary pdf files"
	@echo "  volume1 -- build Volume 1"
	@echo "  volume2 -- build Volume 2"
	@echo "  volume3 -- build Volume 3"
	@echo "  volume4 -- build Volume 4"
	@echo "  volume5 -- build Volume 5"
	@echo "  volume6 -- build Volume 6"

.PHONY: volume1
volume1:
	nix-shell --run "make SofwareFoundations-Volume1.pdf"

.PHONY: volume2
volume2:
	nix-shell --run "make SofwareFoundations-Volume2.pdf"

.PHONY: volume3
volume3:
	nix-shell --run "make SofwareFoundations-Volume3.pdf"

.PHONY: volume4
volume4:
	nix-shell --run "make SofwareFoundations-Volume4.pdf"

.PHONY: volume5
volume5:
	nix-shell --run "make SofwareFoundations-Volume5.pdf"

.PHONY: volume6
volume6:
	nix-shell --run "make SofwareFoundations-Volume6.pdf"

1-01.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/index.html         1-01.pdf
1-02.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/toc.html           1-02.pdf
1-03.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/Preface.html       1-03.pdf
1-04.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/Basics.html        1-04.pdf
1-05.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/Induction.html     1-05.pdf
1-06.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/Lists.html         1-06.pdf
1-07.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/Poly.html          1-07.pdf
1-08.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/Tactics.html       1-08.pdf
1-09.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/Logic.html         1-09.pdf
1-10.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/IndProp.html       1-10.pdf
1-11.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/Maps.html          1-11.pdf
1-12.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/ProofObjects.html  1-12.pdf
1-13.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/IndPrinciples.html 1-13.pdf
1-14.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/Rel.html           1-14.pdf
1-15.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/Imp.html           1-15.pdf
1-16.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/ImpParser.html     1-16.pdf
1-17.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/ImpCEvalFun.html   1-17.pdf
1-18.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/Extraction.html    1-18.pdf
1-19.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/Auto.html          1-19.pdf
1-20.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/AltAuto.html       1-20.pdf
1-21.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/Postscript.html    1-21.pdf
1-22.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/lf-current/Bib.html           1-22.pdf

SofwareFoundations-Volume1.pdf: 1-01.pdf 1-02.pdf 1-03.pdf 1-04.pdf 1-05.pdf 1-06.pdf 1-07.pdf 1-08.pdf 1-09.pdf 1-10.pdf 1-11.pdf 1-12.pdf 1-13.pdf 1-14.pdf 1-15.pdf 1-16.pdf 1-17.pdf 1-18.pdf 1-19.pdf 1-20.pdf 1-21.pdf 1-22.pdf
	pdfunite 1-01.pdf 1-02.pdf 1-03.pdf 1-04.pdf 1-05.pdf 1-06.pdf 1-07.pdf 1-08.pdf 1-09.pdf 1-10.pdf 1-11.pdf 1-12.pdf 1-13.pdf 1-14.pdf 1-15.pdf 1-16.pdf 1-17.pdf 1-18.pdf 1-19.pdf 1-20.pdf 1-21.pdf 1-22.pdf SofwareFoundations-Volume1.pdf

2-01.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/index.html         2-01.pdf
2-02.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/toc.html           2-02.pdf
2-03.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/Preface.html       2-03.pdf
2-04.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/Hoare.html         2-04.pdf
2-05.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/Hoare2.html        2-05.pdf
2-06.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/HoareAsLogic.html  2-06.pdf
2-07.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/Smallstep.html     2-07.pdf
2-08.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/Types.html         2-08.pdf
2-09.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/Stlc.html          2-09.pdf
2-10.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/StlcProp.html      2-10.pdf
2-11.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/MoreStlc.html      2-11.pdf
2-12.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/Sub.html           2-12.pdf
2-13.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/Typechecking.html  2-13.pdf
2-14.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/Records.html       2-14.pdf
2-15.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/Norm.html          2-15.pdf
2-16.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/PE.html            2-16.pdf
2-17.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/Postscript.html    2-17.pdf
2-18.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/Bib.html           2-18.pdf
2-19.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/LibTactics.html    2-19.pdf
2-20.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/UseTactics.html    2-20.pdf
2-21.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/plf-current/UseAuto.html       2-21.pdf

SofwareFoundations-Volume2.pdf: 2-01.pdf 2-02.pdf 2-03.pdf 2-04.pdf 2-05.pdf 2-06.pdf 2-07.pdf 2-08.pdf 2-09.pdf 2-10.pdf 2-11.pdf 2-12.pdf 2-13.pdf 2-14.pdf 2-15.pdf 2-16.pdf 2-17.pdf 2-18.pdf 2-19.pdf 2-20.pdf 2-21.pdf
	pdfunite 2-01.pdf 2-02.pdf 2-03.pdf 2-04.pdf 2-05.pdf 2-06.pdf 2-07.pdf 2-08.pdf 2-09.pdf 2-10.pdf 2-11.pdf 2-12.pdf 2-13.pdf 2-14.pdf 2-15.pdf 2-16.pdf 2-17.pdf 2-18.pdf 2-19.pdf 2-20.pdf 2-21.pdf SofwareFoundations-Volume2.pdf

3-01.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/index.html       3-01.pdf
3-02.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/toc.html         3-02.pdf
3-03.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/Preface.html     3-03.pdf
3-04.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/Perm.html        3-04.pdf
3-05.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/Sort.html        3-05.pdf
3-06.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/Multiset.html    3-06.pdf
3-07.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/BagPerm.html     3-07.pdf
3-08.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/Selection.html   3-08.pdf
3-09.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/Merge.html       3-09.pdf
3-10.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/Maps.html        3-10.pdf
3-11.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/SearchTree.html  3-11.pdf
3-12.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/ADT.html         3-12.pdf
3-13.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/Extract.html     3-13.pdf
3-14.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/Redblack.html    3-14.pdf
3-15.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/Trie.html        3-15.pdf
3-16.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/Priqueue.html    3-16.pdf
3-17.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/Binom.html       3-17.pdf
3-18.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/Decide.html      3-18.pdf
3-19.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vfa-current/Color.html       3-19.pdf

SofwareFoundations-Volume3.pdf: 3-01.pdf 3-02.pdf 3-03.pdf 3-04.pdf 3-05.pdf 3-06.pdf 3-07.pdf 3-08.pdf 3-09.pdf 3-10.pdf 3-11.pdf 3-12.pdf 3-13.pdf 3-14.pdf 3-15.pdf 3-16.pdf 3-17.pdf 3-18.pdf 3-19.pdf
	pdfunite 3-01.pdf 3-02.pdf 3-03.pdf 3-04.pdf 3-05.pdf 3-06.pdf 3-07.pdf 3-08.pdf 3-09.pdf 3-10.pdf 3-11.pdf 3-12.pdf 3-13.pdf 3-14.pdf 3-15.pdf 3-16.pdf 3-17.pdf 3-18.pdf 3-19.pdf SofwareFoundations-Volume3.pdf

4-01.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/qc-current/index.html                4-01.pdf
4-02.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/qc-current/toc.html                  4-02.pdf
4-03.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/qc-current/Preface.html              4-03.pdf
4-04.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/qc-current/Typeclasses.html          4-04.pdf
4-05.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/qc-current/QC.html                   4-05.pdf
4-06.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/qc-current/TImp.html                 4-06.pdf
4-07.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/qc-current/QuickChickTool.html       4-07.pdf
4-08.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/qc-current/QuickChickInterface.html  4-08.pdf
4-09.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/qc-current/Postscript.html           4-09.pdf
4-10.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/qc-current/Bib.html                  4-10.pdf

SofwareFoundations-Volume4.pdf: 4-01.pdf 4-02.pdf 4-03.pdf 4-04.pdf 4-05.pdf 4-06.pdf 4-07.pdf 4-08.pdf 4-09.pdf 4-10.pdf
	pdfunite 4-01.pdf 4-02.pdf 4-03.pdf 4-04.pdf 4-05.pdf 4-06.pdf 4-07.pdf 4-08.pdf 4-09.pdf 4-10.pdf SofwareFoundations-Volume4.pdf

5-01.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/index.html           5-01.pdf
5-02.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/toc.html             5-02.pdf
5-03.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/Preface.html         5-03.pdf
5-04.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/Verif_sumarray.html  5-04.pdf
5-05.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/Verif_reverse.html   5-05.pdf
5-06.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/Verif_stack.html     5-06.pdf
5-07.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/Verif_triang.html    5-07.pdf
5-08.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/Verif_append1.html   5-08.pdf
5-09.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/Verif_append2.html   5-09.pdf
5-10.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/Verif_strlib.html    5-10.pdf
5-11.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/Hashfun.html         5-11.pdf
5-12.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/Verif_hash.html      5-12.pdf
5-13.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/VSU_intro.html       5-13.pdf
5-14.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/Spec_stack.html      5-14.pdf
5-15.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/Spec_triang.html     5-15.pdf
5-16.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/Spec_stdlib.html     5-16.pdf
5-17.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/VSU_stack.html       5-17.pdf
5-18.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/VSU_triang.html      5-18.pdf
5-19.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/VSU_stdlib.html      5-19.pdf
5-20.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/VSU_main.html        5-20.pdf
5-21.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/VSU_stdlib2.html     5-21.pdf
5-22.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/VSU_main2.html       5-22.pdf
5-23.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/Postscript.html      5-23.pdf
5-24.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/vc-current/Bib.html             5-24.pdf

SofwareFoundations-Volume5.pdf: 5-01.pdf 5-02.pdf 5-03.pdf 5-04.pdf 5-05.pdf 5-06.pdf 5-07.pdf 5-08.pdf 5-09.pdf 5-10.pdf 5-11.pdf 5-12.pdf 5-13.pdf 5-14.pdf 5-15.pdf 5-16.pdf 5-17.pdf 5-18.pdf 5-19.pdf 5-20.pdf 5-21.pdf 5-22.pdf 5-23.pdf 5-24.pdf
	pdfunite 5-01.pdf 5-02.pdf 5-03.pdf 5-04.pdf 5-05.pdf 5-06.pdf 5-07.pdf 5-08.pdf 5-09.pdf 5-10.pdf 5-11.pdf 5-12.pdf 5-13.pdf 5-14.pdf 5-15.pdf 5-16.pdf 5-17.pdf 5-18.pdf 5-19.pdf 5-20.pdf 5-21.pdf 5-22.pdf 5-23.pdf 5-24.pdf SofwareFoundations-Volume5.pdf

6-01.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/index.html            6-01.pdf
6-02.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/toc.html              6-02.pdf
6-03.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/Preface.html          6-03.pdf
6-04.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/Basic.html            6-04.pdf
6-05.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/Repr.html             6-05.pdf
6-06.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/Hprop.html            6-06.pdf
6-07.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/Himpl.html            6-07.pdf
6-08.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/Triples.html          6-08.pdf
6-09.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/Rules.html            6-09.pdf
6-10.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/Wand.html             6-10.pdf
6-11.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/WPsem.html            6-11.pdf
6-12.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/WPgen.html            6-12.pdf
6-13.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/WPsound.html          6-13.pdf
6-14.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/Affine.html           6-14.pdf
6-15.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/Arrays.html           6-15.pdf
6-16.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/Records.html          6-16.pdf
6-17.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/Postscript.html       6-17.pdf
6-18.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/Bib.html              6-18.pdf
6-19.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/LibSepReference.html  6-19.pdf
6-20.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/LibSepFmap.html       6-20.pdf
6-21.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/LibSepVar.html        6-21.pdf
6-22.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/LibSepSimpl.html      6-22.pdf
6-23.pdf:
	wkhtmltopdf https://softwarefoundations.cis.upenn.edu/slf-current/LibSepMinimal.html    6-23.pdf

SofwareFoundations-Volume6.pdf: 6-01.pdf 6-02.pdf 6-03.pdf 6-04.pdf 6-05.pdf 6-06.pdf 6-07.pdf 6-08.pdf 6-09.pdf 6-10.pdf 6-11.pdf 6-12.pdf 6-13.pdf 6-14.pdf 6-15.pdf 6-16.pdf 6-17.pdf 6-18.pdf 6-19.pdf 6-20.pdf 6-21.pdf 6-22.pdf 6-23.pdf
	pdfunite 6-01.pdf 6-02.pdf 6-03.pdf 6-04.pdf 6-05.pdf 6-06.pdf 6-07.pdf 6-08.pdf 6-09.pdf 6-10.pdf 6-11.pdf 6-12.pdf 6-13.pdf 6-14.pdf 6-15.pdf 6-16.pdf 6-17.pdf 6-18.pdf 6-19.pdf 6-20.pdf 6-21.pdf 6-22.pdf 6-23.pdf SofwareFoundations-Volume6.pdf

.PHONY: clean
clean:
	rm -f 1-*.pdf
	rm -f 2-*.pdf
	rm -f 3-*.pdf
	rm -f 4-*.pdf
	rm -f 5-*.pdf
	rm -f 6-*.pdf
