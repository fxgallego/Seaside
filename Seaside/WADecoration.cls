﻿"Filed out from Dolphin Smalltalk 7"!

WAPresenter subclass: #WADecoration
	instanceVariableNames: 'next'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADecoration guid: (GUID fromString: '{7e156703-b05b-49cd-8274-b91d2a821ad4}')!
WADecoration comment: 'I am an abstract decoration around instances of WAComponent. I can be added to aComponent by calling #addDecoration: and I change the basic behaviour or look of a component. There are several methods that can be overriden to archive this:
!WADecoration categoriesForClass!Seaside-Component! !
!WADecoration methodsFor!

accept: aVisitor

decoratedComponent

handleAnswer: anObject

handleAnswer: anObject continueWith: aBlock

initialize

isDecoration

isDelegation

isGlobal

isLocal

next

remove

renderContentOn: html

renderNextOn: html

setNext: aDecoration

updateStates: aSnapshot
!WADecoration categoriesFor: #accept:!public!visiting! !
!WADecoration categoriesFor: #decoratedComponent!decorations!public! !
!WADecoration categoriesFor: #handleAnswer:!delegation!public! !
!WADecoration categoriesFor: #handleAnswer:continueWith:!processing!public! !
!WADecoration categoriesFor: #initialize!initialization!public! !
!WADecoration categoriesFor: #isDecoration!public!testing! !
!WADecoration categoriesFor: #isDelegation!public!testing! !
!WADecoration categoriesFor: #isGlobal!public!testing! !
!WADecoration categoriesFor: #isLocal!public!testing! !
!WADecoration categoriesFor: #next!accessing!public! !
!WADecoration categoriesFor: #remove!actions!public! !
!WADecoration categoriesFor: #renderContentOn:!public!rendering! !
!WADecoration categoriesFor: #renderNextOn:!public!rendering! !
!WADecoration categoriesFor: #setNext:!initialization!public! !
!WADecoration categoriesFor: #updateStates:!public!updating! !

!WADecoration class methodsFor!

canBeRoot
!WADecoration class categoriesFor: #canBeRoot!public!testing! !
