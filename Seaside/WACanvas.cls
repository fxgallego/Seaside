﻿"Filed out from Dolphin Smalltalk 7"!

WARenderer subclass: #WACanvas
	instanceVariableNames: 'currentBrush parentBrush'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACanvas guid: (GUID fromString: '{406fb139-8254-4d08-b11b-0d0228e29311}')!
WACanvas comment: 'This is the superclass of all canvas. It''s a rendering interface that generates brushes (see WABrush).
!WACanvas categoriesForClass!Seaside-Canvas! !
!WACanvas methodsFor!

brush: aBrush

flush

insert: aBlock

nest: aBlock

render: anObject

text: anObject
!WACanvas categoriesFor: #brush:!public! !
!WACanvas categoriesFor: #flush!private! !
!WACanvas categoriesFor: #insert:!private! !
!WACanvas categoriesFor: #nest:!private! !
!WACanvas categoriesFor: #render:!public! !
!WACanvas categoriesFor: #text:!public! !
