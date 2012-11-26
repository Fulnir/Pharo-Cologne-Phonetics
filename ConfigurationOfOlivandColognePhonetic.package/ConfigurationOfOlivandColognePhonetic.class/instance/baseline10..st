baselines
baseline10: spec
	<version: '1.0-baseline'>

	| gitPath |
	spec for: #'common' do: [
		spec blessing: #'baseline'.
		gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.
		spec repository:  'filetree://', gitPath, '/Olivand-Core-Phonetics'.
		spec repository: 'filetree:///Users/ed/Projekt-Olivand/Repositories/Olivand-Repositories/Olivand-Core-Phonetics'. 
		spec project: 'Gofer' with: [
				spec
					className: 'ConfigurationOfGofer';
					versionString: #'stable';
					repository: 'http://seaside.gemstone.com/ss/metacello' ].
		spec repository: 'http://www.squeaksource.com/SoundsLike'.
		spec 
			package: 'SoundsLike' with: 'SoundsLike-RobRothwell.1' .			
		spec 
			package: 'Olivand-Core-Phonetics' with: [
				spec requires: #('SoundsLike' ). ];
			package: 'Olivand-Tests-Core-Phonetics' with: [
				spec requires: #('Olivand-Core-Phonetics' ). ].
		spec 
			group: 'default' with: #('Core' );
			group: 'Core' with: #('Olivand-Core-Phonetics' );
			group: 'Tests' with: #('Olivand-Tests-Core-Phonetics' ). ].
