read -p "Compile CV? " yn
case $yn in
	[Yy]* ) pdflatex --shell-escape antonellasuccurro_CV.tex;;
esac
read -p "Compile extras? " yn
case $yn in
	[Yy]* ) cd contents && pdflatex extra.tex && cp extra.pdf ../succurro_publications.pdf && cd .. ;;
esac

#pdftk antonellasuccurro_CV_academic.pdf succurro_publications.pdf cat output succurro_CV.pdf
#pdftk antonellasuccurro_CV_linkedin.pdf succurro_publications.pdf cat output succurro_CV_web.pdf
qpdf --empty --pages antonellasuccurro_CV_academic.pdf 1-z succurro_publications.pdf 1-z -- succurro_CV.pdf
qpdf --empty --pages antonellasuccurro_CV_linkedin.pdf 1-z succurro_publications.pdf 1-z -- succurro_CV.pdf
