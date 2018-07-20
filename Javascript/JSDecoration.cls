﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #JSDecoration
	instanceVariableNames: 'owner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSDecoration guid: (GUID fromString: '{6ba20a76-2603-44d1-ade2-7f6fa875550f}')!
JSDecoration comment: 'I decorate JavaScript objects.'!
!JSDecoration categoriesForClass!Javascript-Core-Decorations! !
!JSDecoration methodsFor!

isJavascript

javascriptContentOn: aStream

owner

renderContext

setOwner: anObject
!JSDecoration categoriesFor: #isJavascript!public!testing! !
!JSDecoration categoriesFor: #javascriptContentOn:!printing!public! !
!JSDecoration categoriesFor: #owner!accessing!public! !
!JSDecoration categoriesFor: #renderContext!accessing!public! !
!JSDecoration categoriesFor: #setOwner:!initialization!public! !
