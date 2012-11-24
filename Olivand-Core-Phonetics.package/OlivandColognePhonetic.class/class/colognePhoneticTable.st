phonetics
colognePhoneticTable
	
	colognePhoneticTable
		ifNil:
			[colognePhoneticTable := (Dictionary new)
				at: $a put: 0;
				at: $ä put: 0;
				at: $e put: 0;
				at: $i put: 0;
				at: $j put: 0;
				at: $o put: 0;
				at: $ö put: 0;
				at: $u put: 0;
				at: $ü put: 0;
				at: $y put: 0;
				at: $b put: 1;
				at: $f put: 3;
				at: $v put: 3;
				at: $w put: 3;
				at: $g put: 4;
				at: $k put: 4;
				at: $q put: 4;
				at: $l put: 5;
				at: $m put: 6;
				at: $n put: 6;
				at: $r put: 7;
				at: $s put: 8;
				at: $z put: 8;
				yourself].
	^colognePhoneticTable