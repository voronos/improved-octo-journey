tests
testMultipleRegionCreationWithShapes
	| regions |
	regions := instance
		parseString: '<svg><path d="Foo"></path><path d="Bar"></path></svg>'.
	self
		assert: regions first path equals: 'Foo';
		assert: regions second path equals: 'Bar'