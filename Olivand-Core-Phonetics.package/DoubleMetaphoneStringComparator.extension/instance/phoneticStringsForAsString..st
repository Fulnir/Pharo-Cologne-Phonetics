*Olivand-Core-Phonetics
phoneticStringsForAsString: aString
	"Private - Answers an array of alternate phonetic strings for the given input string."	
	| result |
	self phoneticStringsFor: aString.
	result := self primaryTranslation.
	result = self secondaryTranslation
		ifFalse: [result := result , '-' , self secondaryTranslation].
	^result