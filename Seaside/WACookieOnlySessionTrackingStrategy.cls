﻿"Filed out from Dolphin Smalltalk 7"!

WACookieSessionTrackingStrategy subclass: #WACookieOnlySessionTrackingStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACookieOnlySessionTrackingStrategy guid: (GUID fromString: '{922c6755-a6ca-4d49-b3af-35aa29ad7e73}')!
WACookieOnlySessionTrackingStrategy comment: 'I track sessions using cookies and everything else using query fields. This works fine as long as the client accepts cookies. This breaks for web crawlers (they don''t accept cookies).'!
!WACookieOnlySessionTrackingStrategy categoriesForClass!Seaside-Session! !
!WACookieOnlySessionTrackingStrategy methodsFor!

addKey: aString toUrl: aUrl

noHandlerFoundForKey: aString in: anApplication context: aRequestContext
!WACookieOnlySessionTrackingStrategy categoriesFor: #addKey:toUrl:!public! !
!WACookieOnlySessionTrackingStrategy categoriesFor: #noHandlerFoundForKey:in:context:!public! !

!WACookieOnlySessionTrackingStrategy class methodsFor!

isAbstract
!WACookieOnlySessionTrackingStrategy class categoriesFor: #isAbstract!public!testing! !
