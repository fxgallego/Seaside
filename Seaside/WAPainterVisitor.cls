﻿"Filed out from Dolphin Smalltalk 7"!

WAVisitor subclass: #WAPainterVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPainterVisitor guid: (GUID fromString: '{48bc9043-97c7-4625-adac-0775d057544d}')!
WAPainterVisitor comment: 'An implementation of the Visitor pattern for Painter subclasses.'!
!WAPainterVisitor categoriesForClass!Seaside-Core-Rendering! !
!WAPainterVisitor methodsFor!

copyForRenderContext: aRenderContext 

postCopyForRenderContext: aRenderContext

visitPainter: aPainter! !
!WAPainterVisitor categoriesFor: #copyForRenderContext:!copying!public! !
!WAPainterVisitor categoriesFor: #postCopyForRenderContext:!copying!public! !
!WAPainterVisitor categoriesFor: #visitPainter:!public!visiting! !
