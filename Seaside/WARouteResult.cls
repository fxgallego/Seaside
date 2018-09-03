﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WARouteResult
	instanceVariableNames: 'route elements parameters'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARouteResult guid: (GUID fromString: '{a5ef936d-ab16-4ebc-86a6-b9efbad64f22}')!
WARouteResult comment: 'I am the result of a route look up. I contain all the information required to "execute" the result.
!WARouteResult categoriesForClass!Seaside-REST-Core-Route! !
!WARouteResult methodsFor!

elements

initializeWithRoute: aRoute elements: anArray parameters: aDictionary

route

seasideMimeType

sendMessageTo: anObject
!WARouteResult categoriesFor: #elements!accessing!public! !
!WARouteResult categoriesFor: #initializeWithRoute:elements:parameters:!initialization!public! !
!WARouteResult categoriesFor: #route!accessing!public! !
!WARouteResult categoriesFor: #seasideMimeType!accessing!public! !
!WARouteResult categoriesFor: #sendMessageTo:!public! !

!WARouteResult class methodsFor!

route: aRoute elements: anArray parameters: aDictionary
!WARouteResult class categoriesFor: #route:elements:parameters:!instance creation!public! !
