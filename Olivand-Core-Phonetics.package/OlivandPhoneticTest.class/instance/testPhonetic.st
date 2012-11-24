as yet unclassified
testPhonetic
	
	| p |
	self assert: (OlivandColognePhonetic new asColognePhonetic: 'Guss') = '48'.
	self assert: (OlivandColognePhonetic new asColognePhonetic: 'Kuss') = '48'.
	self
		assert: (OlivandColognePhonetic new asColognePhonetic: 'Ding') = '264'.
	self
		assert: (OlivandColognePhonetic new asColognePhonetic: 'Dink') = '264'.
	self
		assert:
			(OlivandColognePhonetic new asColognePhonetic: 'Edwin Bühler') = '236157'.
	self
		assert:
			(OlivandColognePhonetic new asColognePhonetic: 'Breschnew') = '17863'.
	self
		assert:
			(OlivandColognePhonetic new asColognePhonetic: 'Müller-Lüdenscheidt') =
					'65752682'.
	self
		assert: (OlivandColognePhonetic new asColognePhonetic: 'Müller') = '657'.
	self
		assert: (OlivandColognePhonetic new asColognePhonetic: 'Nuelr') = '657'.	"Database"
	"self
		assert:
			(OlivandDatabase new asColognePhonetic: 'Edwin Bühler') = '236157'."
"	p := DoubleMetaphoneStringComparator new initialize.
	self
		assert:
			(p initialize phoneticStringsForAsString: 'Edwin Bühler') = 'ATTNN'.
	self
		assert: (p initialize phoneticStringsForAsString: 'Breschnew') = 'PPRRXX'.
	self
		assert:
			(p initialize phoneticStringsForAsString: 'Müller-Lüdenscheidt') = 'MMLLRR'.
	self
		assert:
			(p initialize phoneticStringsForAsString: 'This is the Basic thing') =
					'00SSS-TTSSS'."
	"self
		assert:
			(OlivandDatabase new asDoubleMetaphonePhonetic: 'This is the Basic thing')
				= '00SSS-TTSSS'"