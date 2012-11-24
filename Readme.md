# Olivand-Core-Phonetics

(Pharo Smalltalk) An extension for SoundsLike.

**Kölner Phonetik**

Die Kölner Phonetik (auch Kölner Verfahren) ist ein phonetischer Algorithmus, der Wörtern 
nach ihrem Sprachklang eine Zeichenfolge zuordnet, den phonetischen Code. Ziel dieses 
Verfahrens ist es, gleich klingenden Wörtern denselben Code zuzuordnen, um bei 
Suchfunktionen eine Ähnlichkeitssuche zu implementieren. Damit ist es beispielsweise 
möglich, in einer Namensliste Einträge wie "Meier" auch unter anderen Schreibweisen, 
wie "Maier", "Mayer" oder "Mayr", zu finden. Die Kölner Phonetik ist, im Vergleich zum 
bekannteren Russell-Soundex-Verfahren, besser auf die deutsche Sprache abgestimmt. 
Sie wurde 1969 von Postel veröffentlicht.

more at: http://de.wikipedia.org/wiki/Kölner_Phonetik

MCHttpRepository
	location: 'http://www.squeaksource.com/SoundsLike'
	user: ''
	password: ''
	
use also greaseString from Seaside

