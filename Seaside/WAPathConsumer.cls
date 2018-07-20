﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAPathConsumer
	instanceVariableNames: 'path'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPathConsumer guid: (GUID fromString: '{30a68dd4-ca1f-4334-a919-98a329ed2a28}')!
WAPathConsumer comment: 'A WAPathConsumer keeps track of the unconsumed path elements in request handling.
!WAPathConsumer categoriesForClass!Seaside-Core-RequestHandling! !
!WAPathConsumer methodsFor!

atEnd

initializeWith: aCollectionOfStrings

next

nextIfPresentDo: aOneArgumentBlock

peek

peekToEnd

try: aString

upToEnd
!WAPathConsumer categoriesFor: #atEnd!accessing!public! !
!WAPathConsumer categoriesFor: #initializeWith:!initialization!public! !
!WAPathConsumer categoriesFor: #next!accessing!public! !
!WAPathConsumer categoriesFor: #nextIfPresentDo:!accessing!public! !
!WAPathConsumer categoriesFor: #peek!accessing!public! !
!WAPathConsumer categoriesFor: #peekToEnd!accessing!public! !
!WAPathConsumer categoriesFor: #try:!accessing!public! !
!WAPathConsumer categoriesFor: #upToEnd!accessing!public! !

!WAPathConsumer class methodsFor!

path: aCollectionOfStrings
!WAPathConsumer class categoriesFor: #path:!instance creation!public! !
