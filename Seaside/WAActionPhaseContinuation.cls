﻿"Filed out from Dolphin Smalltalk 7"!

WARenderLoopContinuation subclass: #WAActionPhaseContinuation
	instanceVariableNames: 'renderContext'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAActionPhaseContinuation guid: (GUID fromString: '{c58978c5-52f7-414d-930b-125ec3eaf661}')!
WAActionPhaseContinuation comment: ''!
!WAActionPhaseContinuation categoriesForClass!Seaside-RenderLoop! !
!WAActionPhaseContinuation methodsFor!

basicPerformAction

continue

handleFiltered: aRequestContext

initializeWithSnapshot: aSnapshot renderContext: aRenderContext

performAction

renderContext

renderContext: aRenderContext

shouldRedirect

startTasks
!WAActionPhaseContinuation categoriesFor: #basicPerformAction!processing!public! !
!WAActionPhaseContinuation categoriesFor: #continue!processing!public! !
!WAActionPhaseContinuation categoriesFor: #handleFiltered:!handling!public! !
!WAActionPhaseContinuation categoriesFor: #initializeWithSnapshot:renderContext:!initialization!public! !
!WAActionPhaseContinuation categoriesFor: #performAction!processing!public! !
!WAActionPhaseContinuation categoriesFor: #renderContext!accessing!public! !
!WAActionPhaseContinuation categoriesFor: #renderContext:!accessing!public! !
!WAActionPhaseContinuation categoriesFor: #shouldRedirect!private! !
!WAActionPhaseContinuation categoriesFor: #startTasks!private! !

!WAActionPhaseContinuation class methodsFor!

defaultRenderContext

isActionContinuation

snapshot: aSnapshot

snapshot: aSnapshot renderContext: aRenderContext
!WAActionPhaseContinuation class categoriesFor: #defaultRenderContext!private! !
!WAActionPhaseContinuation class categoriesFor: #isActionContinuation!public!testing! !
!WAActionPhaseContinuation class categoriesFor: #snapshot:!instance creation!public! !
!WAActionPhaseContinuation class categoriesFor: #snapshot:renderContext:!instance creation!public! !
