phonetics
asColognePhonetic: aString 
	| phoneticString trimmedPhoneticString code previousCode space |
	phoneticString := ''.
	space := Character space.
	previousCode := space.
	1
		to: aString size
		do: [:stringPostion | 
			| each prevoius follower |
			each := (aString at: stringPostion) asLowercase.
			stringPostion > 1
				ifTrue: [prevoius := (aString at: stringPostion - 1) asLowercase].
			stringPostion < aString size
				ifTrue: [follower := (aString at: stringPostion + 1) asLowercase].
			self class colognePhoneticTable
				at: each
				ifPresent: [:aCode | code := aCode]
				ifAbsent: [each = $h
						ifTrue: [code := space].
					each = $p
						ifTrue: [follower = $h
								ifTrue: [code := 3]
								ifFalse: [code := 1]].
					each = $d
						ifTrue: [(#($c $s $z $ß ) includes: follower)
								ifTrue: [code := 8]
								ifFalse: [code := 2]].
					each = $t
						ifTrue: [(#($c $s $z $ß ) includes: follower)
								ifTrue: [code := 8]
								ifFalse: [code := 2]].
					each = $c
						ifTrue: [stringPostion = 1
								ifTrue: [(#($a $h $k $l $o $q $r $u $x ) includes: follower)
										ifTrue: [code := 4]
										ifFalse: [code := 8]]
								ifFalse: [((prevoius = $s
												or: [prevoius = $z])
											or: [prevoius = $ß])
										ifTrue: [(#($a $h $k $o $q $u $x ) includes: follower)
												ifTrue: [code := 8]
												ifFalse: [code := 4]]
										ifFalse: [code := 4]]].
					each = $x
						ifTrue: [(#($c $k $q ) includes: prevoius)
								ifTrue: [code := 8]
								ifFalse: [code := 48]]].
			previousCode = code
				ifFalse: [phoneticString := phoneticString , code greaseString].
			previousCode := code].
	trimmedPhoneticString := ''.
	phoneticString
		do: [:each | (each = space
					or: [each = $0])
				ifFalse: [trimmedPhoneticString := trimmedPhoneticString , each greaseString]].
	"greaseString"
	^ trimmedPhoneticString