" travisCI.st file:"

| gitPath |
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

Metacello new
  configuration: 'Olivand-Core-Phonetics';
  repository: 'filetree://', gitPath, '/Olivand-Core-Phonetics';
  load.
  
"Run the tests"
TravisCIHarness
  value: #( 'ConfigurationOfOlivandColognePhonetic' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
