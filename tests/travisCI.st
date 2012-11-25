"Sample travisCI.st file:

  Edit the Metacello api and test harness invocation
  using the correct configuration name and repository 
  location"

"Use Metacello to load your project and tests"
Metacello new
  configuration: 'Olivand-Core-Phonetics';
  repository: 'filetree://', MetacelloBuilderTravisCI gitPath, '/Olivand-Core-Phonetics/packages';
  load: 'Tests'.

"Run the tests"
TravisCIHarness
  value: #( 'ConfigurationOfOlivandColognePhonetic' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
