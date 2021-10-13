wbh:
	pandoc -s --template="wbh.tex" -o Beispiel/beispiel.tex Beispiel/beispiel.md	
	pandoc -s --template="wbh.tex" -o Beispiel/beispiel.pdf Beispiel/beispiel.md
	# uncomment following line to run PDF for review
	#mupdf Beispiel/beispiel.pdf
