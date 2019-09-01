accessing
latLongRectangle
	^ latLongRectangle ifNil: [ latLongRectangle := 0 @ 0 extent: 0 @ 0 ]