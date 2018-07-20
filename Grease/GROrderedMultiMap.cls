﻿"Filed out from Dolphin Smalltalk 7"!

GRSmallDictionary subclass: #GROrderedMultiMap
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GROrderedMultiMap guid: (GUID fromString: '{74cfff28-5ba0-4c9c-b304-93744660bebc}')!
GROrderedMultiMap comment: 'I am an implementation of an ordered multi-map. I allow multiple values to be associated with the same key and maintain the order of addition. #at: and its derivatives all operate on the first matching key, while #allAt: returns the complete list of values for a key in the order they were added.'!
!GROrderedMultiMap categoriesForClass!Grease-Core-Collections! !
!GROrderedMultiMap methodsFor!

add: anAssociation

allAt: aKey

allAt: aKey ifAbsent: absentBlock

at: aKey add: aValue

removeKey: aKey ifAbsent: aBlock
!GROrderedMultiMap categoriesFor: #add:!accessing!public! !
!GROrderedMultiMap categoriesFor: #allAt:!accessing!public! !
!GROrderedMultiMap categoriesFor: #allAt:ifAbsent:!accessing!public! !
!GROrderedMultiMap categoriesFor: #at:add:!accessing!public! !
!GROrderedMultiMap categoriesFor: #removeKey:ifAbsent:!accessing!public! !
