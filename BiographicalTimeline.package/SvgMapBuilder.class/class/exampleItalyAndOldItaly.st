examples
exampleItalyAndOldItaly
	| inst xml |
	inst := self new.
	xml := ((XMLDOMParser parseFileNamed: '/media/mnelson/spinner/Downloads/italyLow.svg')
		// 'path'
		collect: [ :node | 
			Region new
				title: (node attributeAt: 'title');
				id: (node attributeAt: 'id');
				path: (node attributeAt: 'd');
				yourself ]) collection.
	xml
		add:
			(Region new
				title: 'Old Italy';
				id: 'builtin_map';
				path: RTSVGPath Italy;
				yourself).
	inst countries: xml named: [ :e | e first ].
	^ inst