﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WARoot
	instanceVariableNames: 'context'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARoot guid: (GUID fromString: '{807be8d8-7240-455d-9131-9d9c8a52a58a}')!
WARoot comment: 'A WARoot is the root of a document. It is responsible to generate header and footer of a document.'!
!WARoot categoriesForClass!Seaside-Core-Document! !
!WARoot methodsFor!

absoluteUrlForResource: aString	^ self context absoluteUrlForResource: aString!

closeOn: aDocument	"Close aDocument and optionally write its footer."!

context	^ context!

openOn: aDocument	"Open aDocument and optionally write its header."!

setContext: aRenderContext	context := aRenderContext! !
!WARoot categoriesFor: #absoluteUrlForResource:!accessing!public! !
!WARoot categoriesFor: #closeOn:!public!writing! !
!WARoot categoriesFor: #context!accessing!public! !
!WARoot categoriesFor: #openOn:!public!writing! !
!WARoot categoriesFor: #setContext:!initialization!public! !

!WARoot class methodsFor!

context: aRenderContext	^ self new setContext: aRenderContext! !
!WARoot class categoriesFor: #context:!instance creation!public! !

