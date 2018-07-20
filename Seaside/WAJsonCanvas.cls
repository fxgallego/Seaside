﻿"Filed out from Dolphin Smalltalk 7"!

WACanvas subclass: #WAJsonCanvas
	instanceVariableNames: 'first'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAJsonCanvas guid: (GUID fromString: '{cfd84c75-c515-4dbf-b150-d6c03e5e656f}')!
WAJsonCanvas comment: ''!
!WAJsonCanvas categoriesForClass!Seaside-JSON-Core! !
!WAJsonCanvas methodsFor!

array: aBlock

boolean: aBoolean

dateAndTime: aDateAndTime

initializeWithContext: aRenderContext

key: aKeyString value: aValueObject

nest: aBlock

nextPut: aCharacter 

null

number: aNumber

object: aBlock

render: anObject

string: aString

value: aBlock

writeIfNotFirst: aString
!WAJsonCanvas categoriesFor: #array:!public! !
!WAJsonCanvas categoriesFor: #boolean:!double/disptach!public! !
!WAJsonCanvas categoriesFor: #dateAndTime:!double/disptach!public! !
!WAJsonCanvas categoriesFor: #initializeWithContext:!initialization!public! !
!WAJsonCanvas categoriesFor: #key:value:!public! !
!WAJsonCanvas categoriesFor: #nest:!private! !
!WAJsonCanvas categoriesFor: #nextPut:!public! !
!WAJsonCanvas categoriesFor: #null!double/disptach!public! !
!WAJsonCanvas categoriesFor: #number:!double/disptach!public! !
!WAJsonCanvas categoriesFor: #object:!public! !
!WAJsonCanvas categoriesFor: #render:!public! !
!WAJsonCanvas categoriesFor: #string:!double/disptach!public! !
!WAJsonCanvas categoriesFor: #value:!public! !
!WAJsonCanvas categoriesFor: #writeIfNotFirst:!private! !

!WAJsonCanvas class methodsFor!

builder
!WAJsonCanvas class categoriesFor: #builder!instance creation!public! !
