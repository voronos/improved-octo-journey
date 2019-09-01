tests
testMultipleRegionCreationWithIds
	| regions |
	regions := instance
		parseString: '<svg><path id="Foo"></path><path id="Bar"></path></svg>'.
	self
		assert: regions first id equals: 'Foo';
		assert: regions second id equals: 'Bar'