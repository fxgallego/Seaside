﻿"Filed out from Dolphin Smalltalk 7"!

JSObject subclass: #JSStream
	instanceVariableNames: 'stream'
	classVariableNames: 'Arguments JavascriptCharacters This'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSStream guid: (GUID fromString: '{6366dfaf-d300-4c9e-9e7f-a351c83b9cfe}')!
JSStream comment: 'I represent a verbatim JavaScript string. I support streaming facilities to efficiently encode JavaScript input.'!
!JSStream categoriesForClass!Javascript-Core! !
!JSStream methodsFor!

argument: anObject

arguments: aCollection

contents

copy

initialize

javascript: anObject

javascriptContentOn: aStream

json: anObject

nextPut: aCharacter

nextPutAll: aString

stream
!JSStream categoriesFor: #argument:!convenience!public! !
!JSStream categoriesFor: #arguments:!convenience!public! !
!JSStream categoriesFor: #contents!accessing!public! !
!JSStream categoriesFor: #copy!copying!public! !
!JSStream categoriesFor: #initialize!initialization!public! !
!JSStream categoriesFor: #javascript:!public!streaming! !
!JSStream categoriesFor: #javascriptContentOn:!printing!public! !
!JSStream categoriesFor: #json:!public!streaming! !
!JSStream categoriesFor: #nextPut:!public!streaming! !
!JSStream categoriesFor: #nextPutAll:!public!streaming! !
!JSStream categoriesFor: #stream!accessing!public! !

!JSStream class methodsFor!

argument: anInteger

argumentAt: anInteger

encodeArguments: aCollection on: aStream 

encodeCollection: aCollection on: aStream

encodeDictionary: aDictionary on: aStream 

encodeKey: aKey value: aValue on: aStream 

encodeString: aString on: aStream 

initialize

initializeEncoding

initializeSnippets

on: aString

this
!JSStream class categoriesFor: #argument:!instance creation!public! !
!JSStream class categoriesFor: #argumentAt:!instance creation!public! !
!JSStream class categoriesFor: #encodeArguments:on:!encoding!public! !
!JSStream class categoriesFor: #encodeCollection:on:!encoding!public! !
!JSStream class categoriesFor: #encodeDictionary:on:!encoding!public! !
!JSStream class categoriesFor: #encodeKey:value:on:!encoding!public! !
!JSStream class categoriesFor: #encodeString:on:!encoding!public! !
!JSStream class categoriesFor: #initialize!initialization!public! !
!JSStream class categoriesFor: #initializeEncoding!initialization!public! !
!JSStream class categoriesFor: #initializeSnippets!initialization!public! !
!JSStream class categoriesFor: #on:!instance creation!public! !
!JSStream class categoriesFor: #this!instance creation!public! !
