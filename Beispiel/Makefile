wbh:
	pandoc -s --template="../wbh.tex" -o beispiel.tex beispiel.md	
	pandoc -s --template="../wbh.tex" -o beispiel.pdf beispiel.md
	# Entferne die Kommentare um das erstellte PDF mit mupdf anzuzeigen
	#mupdf beispiel.pdf

wbh_acronym:

	pandoc -s --template="../wbh.tex" -o beispiel.tex --metadata-file=acronyms.yaml beispiel.md	
	pandoc -s --template="../wbh.tex" -o beispiel.pdf --metadata-file=acronyms.yaml beispiel.md
	# Entferne die Kommentare um das erstellte PDF mit mupdf anzuzeigen
	#mupdf beispiel.pdf
