hooks
renderCountries: aView
	| el  countryElems |
	countryElems := countries
		collect: [ :o | 
			el := (RTSVGPath new
				path: o path;
				fillColor: Color random;
				borderWidth: 0.5;
				scale: scale) element model: o.
			el @ (RTPopup text: o title).
			aView add: el.
			el ].
	^ countryElems