versions
version10: spec
	<version: '1.0' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'initial version'.
		spec author: 'EdwinBuehler'.
		spec timestamp: '11/25/2012 18:21'.
		spec project: 'Gofer' with: #'stable'.
		spec 
			package: 'Olivand-Core-Phonetics' with: 'Olivand-Core-Phonetics-EdwinBuehler'; "'Olivand-Core-Phonetics-EdwinBuehler.1'"
			package: 'Olivand-Tests-Core-Phonetics' with: 'Olivand-Tests-Core-Phonetics'. ].
