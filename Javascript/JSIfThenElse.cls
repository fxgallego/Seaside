﻿"Filed out from Dolphin Smalltalk 7"!

JSDecoration subclass: #JSIfThenElse
	instanceVariableNames: 'trueStatement falseStatement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSIfThenElse guid: (GUID fromString: '{c11c178c-2404-4e36-854a-be5af3adcd70}')!
JSIfThenElse comment: 'I execute different code snippets depending if the receiver is true (defined) or false (null).'!
!JSIfThenElse categoriesForClass!Javascript-Core-Decorations! !
!JSIfThenElse methodsFor!

falseStatement

falseStatement: anObject

javascriptContentOn: aStream

trueStatement

trueStatement: anObject
!JSIfThenElse categoriesFor: #falseStatement!accessing!public! !
!JSIfThenElse categoriesFor: #falseStatement:!accessing!public! !
!JSIfThenElse categoriesFor: #javascriptContentOn:!printing!public! !
!JSIfThenElse categoriesFor: #trueStatement!accessing!public! !
!JSIfThenElse categoriesFor: #trueStatement:!accessing!public! !
