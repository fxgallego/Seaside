﻿"Filed out from Dolphin Smalltalk 7"!

WAScriptGenerator subclass: #WADefaultScriptGenerator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADefaultScriptGenerator guid: (GUID fromString: '{638a42a7-e595-44d9-b5de-0286f7975916}')!
WADefaultScriptGenerator comment: 'A WADefaultScriptGenerator uses the onLoad event on the body to trigger the load scripts. Events handlers are directly inlined with the respective elements. Both techniques are considered outdated and should be avoided if possible.'!
!WADefaultScriptGenerator categoriesForClass!Seaside-Core-Document! !
!WADefaultScriptGenerator methodsFor!

close: aHtmlRoot on: aDocument

open: aHtmlRoot on: aDocument
!WADefaultScriptGenerator categoriesFor: #close:on:!actions!public! !
!WADefaultScriptGenerator categoriesFor: #open:on:!actions!public! !
