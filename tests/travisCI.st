" travisCI.st file:"

| gitPath |
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

Metacello new
  configuration: 'OlivandColognePhonetic';
  repository: 'filetree://', gitPath, '/Olivand';
  load: 'Tests'.
  
"Run the tests"
TravisCIHarness
  value: #( 'ConfigurationOfOlivand' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
