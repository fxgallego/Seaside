﻿"Filed out from Dolphin Smalltalk 7"!

WASessionTrackingStrategy subclass: #WACookieForBrowserIPForCrawlerTrackingStrategy
	instanceVariableNames: 'cookieStrategy ipStrategy'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACookieForBrowserIPForCrawlerTrackingStrategy guid: (GUID fromString: '{90112d1e-f203-44f6-ab6f-95b92a932554}')!
WACookieForBrowserIPForCrawlerTrackingStrategy comment: 'WACookieForBrowserIPForCrawlerTrackingStrategy uses cookie based session tracking for browsers and IPs for crawlers (they don''t support cookies). This way there is never a session key in any URL.
!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesForClass!Seaside-Session! !
!WACookieForBrowserIPForCrawlerTrackingStrategy methodsFor!

addKey: aString toContext: aRequestContext

addKey: aString toUrl: aUrl

crawlerSubStrings

initialize

isFromCrawler: aRequestContext

keyFromContext: aRequestContext

noHandlerFoundForKey: aString in: anApplication context: aRequestContext

strategyFor: aRequestContext
!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesFor: #addKey:toContext:!public! !
!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesFor: #addKey:toUrl:!public! !
!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesFor: #crawlerSubStrings!private! !
!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesFor: #initialize!initialization!public! !
!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesFor: #isFromCrawler:!private! !
!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesFor: #keyFromContext:!public! !
!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesFor: #noHandlerFoundForKey:in:context:!public! !
!WACookieForBrowserIPForCrawlerTrackingStrategy categoriesFor: #strategyFor:!private! !
