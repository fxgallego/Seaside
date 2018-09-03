﻿"Filed out from Dolphin Smalltalk 7"!

WARequestHandler subclass: #WARestfulHandler
	instanceVariableNames: 'routes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARestfulHandler guid: (GUID fromString: '{b3444667-03bb-48fb-ae20-e9f01f47da2b}')!
WARestfulHandler comment: ''!
!WARestfulHandler categoriesForClass!Seaside-REST-Core-Handler! !
!WARestfulHandler methodsFor!

createRoutes

executeResult: aRouteResult

handleFiltered: aRequestContext

isImplemented: aString

noRouteFound: aRequestContext

routeForContext: aRequestContext ifAbsent: aNiladicBlock

routes

shouldCacheRoutes

shouldConsumePath
!WARestfulHandler categoriesFor: #createRoutes!private! !
!WARestfulHandler categoriesFor: #executeResult:!handling!public! !
!WARestfulHandler categoriesFor: #handleFiltered:!handling!public! !
!WARestfulHandler categoriesFor: #isImplemented:!private! !
!WARestfulHandler categoriesFor: #noRouteFound:!handling!public! !
!WARestfulHandler categoriesFor: #routeForContext:ifAbsent:!private! !
!WARestfulHandler categoriesFor: #routes!accessing!public! !
!WARestfulHandler categoriesFor: #shouldCacheRoutes!private! !
!WARestfulHandler categoriesFor: #shouldConsumePath!private! !
