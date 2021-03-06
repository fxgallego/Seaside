﻿"Filed out from Dolphin Smalltalk 7"!

WAPlaceholderPathMatch subclass: #WAMultiPlaceholderPathMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMultiPlaceholderPathMatch guid: (GUID fromString: '{baa382c1-4b79-47b4-a268-fa6a8f0cc167}')!
WAMultiPlaceholderPathMatch comment: ''!
!WAMultiPlaceholderPathMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAMultiPlaceholderPathMatch methodsFor!

mapArgumentsWithElements: aCollection into: anArray usingOffset: anInteger	anArray		at: targetIndex		put: (aCollection copyFrom: sourceIndex to: sourceIndex + anInteger)!

matches: aString	^ true!

matchesJustOneElement	^ false!

priority	^ 1! !
!WAMultiPlaceholderPathMatch categoriesFor: #mapArgumentsWithElements:into:usingOffset:!public! !
!WAMultiPlaceholderPathMatch categoriesFor: #matches:!public!testing! !
!WAMultiPlaceholderPathMatch categoriesFor: #matchesJustOneElement!public!testing! !
!WAMultiPlaceholderPathMatch categoriesFor: #priority!accessing!public! !

!WAMultiPlaceholderPathMatch class methodsFor!

fromString: aString index: anInteger arguments: aCollectionOfStrings	^ self		source: anInteger		target: (self			targetIndexOf: (aString copyFrom: 2 to: aString size - 1)			arguments: aCollectionOfStrings)!

source: anFirstInteger target: aSecondInteger	^ self basicNew initializeWithSourceIndex: anFirstInteger targetIndex: aSecondInteger! !
!WAMultiPlaceholderPathMatch class categoriesFor: #fromString:index:arguments:!instance creation!public! !
!WAMultiPlaceholderPathMatch class categoriesFor: #source:target:!instance creation!public! !

