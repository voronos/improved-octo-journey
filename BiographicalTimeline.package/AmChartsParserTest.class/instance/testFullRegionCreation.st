tests
testFullRegionCreation
	| regions |
	regions := instance
		parseString:
			'<path xmlns="http://www.w3.org/2000/svg" xmlns:amcharts="http://amcharts.com/ammap" xmlns:xlink="http://www.w3.org/1999/xlink" id="VA" title="Vatican City" class="land" d="M298.99,371.87L298.88,371.76L298.78,371.79L298.61,371.83L298.45,372.09L298.42,372.15L298.48,372.23L298.54,372.21L298.8,372.27L299,372.19L299.02,372.13L298.98,372.05z"/>'.
	self
		assert: regions size equals: 1;
		assert: regions first title equals: 'Vatican City';
		assert: regions first id equals: 'VA';
		assert: regions first path
			equals:
			'M298.99,371.87L298.88,371.76L298.78,371.79L298.61,371.83L298.45,372.09L298.42,372.15L298.48,372.23L298.54,372.21L298.8,372.27L299,372.19L299.02,372.13L298.98,372.05z'