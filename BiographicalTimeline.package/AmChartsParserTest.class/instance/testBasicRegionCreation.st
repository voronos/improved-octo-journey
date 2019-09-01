tests
testBasicRegionCreation
|regions|
regions := 	instance parseString: '<svg><path></path></svg>'.
	self assert: regions size equals: 1