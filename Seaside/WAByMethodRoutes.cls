﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAByMethodRoutes
	instanceVariableNames: 'fixedContainers flexibleContainers'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAByMethodRoutes guid: (GUID fromString: '{0d957045-3538-400b-9fd4-303d4b617cb0}')!
WAByMethodRoutes comment: 'A WAByMethodRoutes is a collection of routes first organized by HTTP method and then by number of URL path elements. It allows users to look up possible routes for a given HTTP request.
!WAByMethodRoutes categoriesForClass!Seaside-REST-Core-Route! !
!WAByMethodRoutes methodsFor!

addRoute: aRoute to: aDictionary

buildContainers: aDictionary

fixedRoutesForContext: aRequestContext

flexibleRoutesForContext: aRequestContext

initializeWithRoutes: aCollectionOfRoutes

mergedRoutesForContext: aRequestContext

privateRouteForContext: aRequestContext ifAbsent: aNiladicBlock

routeForContext: aRequestContext consume: aBoolean ifAbsent: aNiladicBlock
!WAByMethodRoutes categoriesFor: #addRoute:to:!private! !
!WAByMethodRoutes categoriesFor: #buildContainers:!private! !
!WAByMethodRoutes categoriesFor: #fixedRoutesForContext:!private! !
!WAByMethodRoutes categoriesFor: #flexibleRoutesForContext:!private! !
!WAByMethodRoutes categoriesFor: #initializeWithRoutes:!initialization!public! !
!WAByMethodRoutes categoriesFor: #mergedRoutesForContext:!private! !
!WAByMethodRoutes categoriesFor: #privateRouteForContext:ifAbsent:!private! !
!WAByMethodRoutes categoriesFor: #routeForContext:consume:ifAbsent:!public! !

!WAByMethodRoutes class methodsFor!

routes: aCollectionOfRoutes
!WAByMethodRoutes class categoriesFor: #routes:!instance creation!public! !
