parsing
parseString: anSvgString
	| xml regions mapDef |
	xml := XMLDOMParser parse: anSvgString.
	regions := RegionCollection new.
	mapDef := xml findElementNamed: 'amcharts:ammap'.
	mapDef
		ifNotNil: [ regions
				latLongRectangle:
					((mapDef floatAttributeAt: 'leftLongitude') @ (mapDef floatAttributeAt: 'topLatitude')
						extent: (mapDef floatAttributeAt: 'rightLongitude') @ (mapDef floatAttributeAt: 'bottomLatitude')) ].
	xml // 'path'
		collect: [ :node | 
			Region new
				title: (node attributeAt: 'title');
				id: (node attributeAt: 'id');
				path: (node attributeAt: 'd');
				yourself ]
		into: regions.
	^ regions