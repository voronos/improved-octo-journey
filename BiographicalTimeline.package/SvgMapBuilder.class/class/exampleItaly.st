examples
exampleItaly
	| inst xml |
	inst := self new.
	xml := (XMLDOMParser parseFileNamed: '/media/mnelson/spinner/Downloads/italyLow.svg')
		// 'path'
		collect: [ :node | 
			Region new
				title: (node attributeAt: 'title');
				id: (node attributeAt: 'id');
				path: (node attributeAt: 'd');
				yourself ].
	inst countries: xml collection named: [ :e | e first ].
	^ inst