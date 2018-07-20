﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WABulkReapingCacheEntry
	instanceVariableNames: 'value creationTime accessTime count lastCount'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABulkReapingCacheEntry guid: (GUID fromString: '{aeb581dc-2247-40dd-a76a-ae6afaa1ccaa}')!
WABulkReapingCacheEntry comment: 'I am a value in a WABulkReapingCache. It''s important that my values are not concurrently updated in order to avoid commit conflicts on GemStone/S.
!WABulkReapingCacheEntry categoriesForClass!Seaside-Core-Cache! !
!WABulkReapingCacheEntry methodsFor!

accessTime

creationTime

hasBeenAccessedSinceLastReap

incrementCount

initializeWithValue: anObject

setAccessTime: anInteger

value

value: anObject
!WABulkReapingCacheEntry categoriesFor: #accessTime!accessing!public! !
!WABulkReapingCacheEntry categoriesFor: #creationTime!accessing!public! !
!WABulkReapingCacheEntry categoriesFor: #hasBeenAccessedSinceLastReap!public!testing! !
!WABulkReapingCacheEntry categoriesFor: #incrementCount!public! !
!WABulkReapingCacheEntry categoriesFor: #initializeWithValue:!initialization!public! !
!WABulkReapingCacheEntry categoriesFor: #setAccessTime:!public! !
!WABulkReapingCacheEntry categoriesFor: #value!accessing!public! !
!WABulkReapingCacheEntry categoriesFor: #value:!accessing!public! !

!WABulkReapingCacheEntry class methodsFor!

value: anObject
!WABulkReapingCacheEntry class categoriesFor: #value:!instance creation!public! !
