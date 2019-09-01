tests
testLatLongExtentCreation
	| regions |
	<todo: 'using extent: means that rightLong is added to leftLong, which is not what I want'>
	regions := instance
		parseString:
			'<svg><defs><amcharts:ammap xmlns="http://www.w3.org/2000/svg" xmlns:amcharts="http://amcharts.com/ammap" xmlns:xlink="http://www.w3.org/1999/xlink" projection="mercator" leftLongitude="6.624181" topLatitude="47.087088" rightLongitude="18.517034" bottomLatitude="35.490552"/></defs></svg>'.
	self
		assert: regions latLongRectangle topLeft equals: 6.624181 @ 47.087088;
		assert: regions latLongRectangle bottomRight equals: 18.517034 @ 35.490552