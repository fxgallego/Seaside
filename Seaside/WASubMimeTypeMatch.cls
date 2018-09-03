﻿"Filed out from Dolphin Smalltalk 7"!

WAMimeTypeMatch subclass: #WASubMimeTypeMatch
	instanceVariableNames: 'sub'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASubMimeTypeMatch guid: (GUID fromString: '{94904444-8874-48ad-9cc3-b69be236caf3}')!
WASubMimeTypeMatch comment: ''!
!WASubMimeTypeMatch categoriesForClass!Seaside-REST-Core-Route! !
!WASubMimeTypeMatch methodsFor!

initializeWithSub: aSubString

matches: aMimeType

printOn: aStream

priority

priorityFor: aMimeType
!WASubMimeTypeMatch categoriesFor: #initializeWithSub:!initialization!public! !
!WASubMimeTypeMatch categoriesFor: #matches:!public!testing! !
!WASubMimeTypeMatch categoriesFor: #printOn:!printing!public! !
!WASubMimeTypeMatch categoriesFor: #priority!accessing!public! !
!WASubMimeTypeMatch categoriesFor: #priorityFor:!accessing!public! !

!WASubMimeTypeMatch class methodsFor!

sub: aSubString
!WASubMimeTypeMatch class categoriesFor: #sub:!instance creation!public! !
