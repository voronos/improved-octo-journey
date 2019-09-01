tests
testBasicMultipleRegionCreation
	| regions |
	regions := instance parseString: '<svg><path></path><path></path><path></path></svg>'.
	self assert: regions size equals: 3