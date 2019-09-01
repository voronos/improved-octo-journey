tests
testMultipleRegionCreationWithTitles
	| regions |
	regions := instance
		parseString: '<svg><path title="Foo"></path><path title="Bar"></path></svg>'.
	self
		assert: regions first title equals: 'Foo';
		assert: regions second title equals: 'Bar'