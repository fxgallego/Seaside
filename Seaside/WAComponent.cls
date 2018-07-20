﻿"Filed out from Dolphin Smalltalk 7"!

WAPresenter subclass: #WAComponent
	instanceVariableNames: 'decoration'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAComponent guid: (GUID fromString: '{7fb54a47-0bd4-4e06-b418-7f1a9ffe18f9}')!
WAComponent comment: 'I am a Presenter with the additional abilities of wrapping myself with Decorations and displaying another Component with #call:.
!WAComponent categoriesForClass!Seaside-Component! !
!WAComponent methodsFor!

accept: aVisitor

acceptDecorated: aVisitor

activeComponent

addDecoration: aDecoration

answer

answer: anObject

call: aComponent onAnswer: aBlock

decoratedComponent

decorateWith: aDecoration during: aBlock

decoration

decoration: aDecoration

decoration: oldDecoration shouldWrap: newDecoration

decorations

delegations

home

initialize

onAnswer: aBlock

removeDecoration: aDecoration 

removeDelegation

show: aComponent

show: aComponent onAnswer: aBlock

show: aComponent onAnswer: aBlock delegation: aDelegation

updateStates: aSnapshot
!WAComponent categoriesFor: #accept:!public!visiting! !
!WAComponent categoriesFor: #acceptDecorated:!public!visiting! !
!WAComponent categoriesFor: #activeComponent!convenience!public! !
!WAComponent categoriesFor: #addDecoration:!decorations!public! !
!WAComponent categoriesFor: #answer!delegation!public! !
!WAComponent categoriesFor: #answer:!delegation!public! !
!WAComponent categoriesFor: #call:onAnswer:!delegation!public! !
!WAComponent categoriesFor: #decoratedComponent!decorations!public! !
!WAComponent categoriesFor: #decorateWith:during:!decorations!public! !
!WAComponent categoriesFor: #decoration!accessing!public! !
!WAComponent categoriesFor: #decoration:!accessing!public! !
!WAComponent categoriesFor: #decoration:shouldWrap:!decorations!public! !
!WAComponent categoriesFor: #decorations!accessing!public! !
!WAComponent categoriesFor: #delegations!accessing!public! !
!WAComponent categoriesFor: #home!accessing!public! !
!WAComponent categoriesFor: #initialize!initialization!public! !
!WAComponent categoriesFor: #onAnswer:!delegation!public! !
!WAComponent categoriesFor: #removeDecoration:!decorations!public! !
!WAComponent categoriesFor: #removeDelegation!delegation!public! !
!WAComponent categoriesFor: #show:!delegation!public! !
!WAComponent categoriesFor: #show:onAnswer:!delegation!public! !
!WAComponent categoriesFor: #show:onAnswer:delegation:!delegation!public! !
!WAComponent categoriesFor: #updateStates:!public!updating! !

!WAComponent class methodsFor!

canBeRoot

description
!WAComponent class categoriesFor: #canBeRoot!public!testing! !
!WAComponent class categoriesFor: #description!accessing!public! !
