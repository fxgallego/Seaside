﻿"Filed out from Dolphin Smalltalk 7"!

WACallback subclass: #WAActionCallback
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAActionCallback guid: (GUID fromString: '{52a00db6-5423-42dd-aee7-b6d2c4f76076}')!
WAActionCallback comment: ''!
!WAActionCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAActionCallback methodsFor!

block: aZeroOrOneArgBlock	block := aZeroOrOneArgBlock fixCallbackTemps!

evaluateWithArgument: anObject	block valueWithPossibleArguments: (Array with: anObject).	self signalRenderNotification!

isEnabledFor: aRequestContext	^ aRequestContext request isXmlHttpRequest not!

priority	^ 5!

signalRenderNotification	WARenderNotification signal! !
!WAActionCallback categoriesFor: #block:!accessing!public! !
!WAActionCallback categoriesFor: #evaluateWithArgument:!evaluation!public! !
!WAActionCallback categoriesFor: #isEnabledFor:!public!testing! !
!WAActionCallback categoriesFor: #priority!accessing!public! !
!WAActionCallback categoriesFor: #signalRenderNotification!evaluation!public! !

