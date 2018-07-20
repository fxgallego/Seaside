﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WAPresenter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPresenter guid: (GUID fromString: '{eda12722-75e4-4abb-bfff-de7fd0ad2164}')!
WAPresenter comment: 'WAPresenter holds the functionality that is common to WAComponent and WADecoration. Subclasses of this class may have state and can be stored in instance variables of other Presenters.
!WAPresenter categoriesForClass!Seaside-Component! !
!WAPresenter methodsFor!

accept: aVisitor

allPresentersDo: aBlock

children

childrenDo: aBlock

decoratedComponent

handleAnswer: anObject

initialRequest: aRequest

isDecoration

renderContentOn: aRenderer

renderUndecoratedWithContext: aRenderContext

script

states

style

updateRoot: anHtmlRoot

updateStates: aSnapshot

visiblePresentersDo: aBlock
!WAPresenter categoriesFor: #accept:!public!visiting! !
!WAPresenter categoriesFor: #allPresentersDo:!convenience!public! !
!WAPresenter categoriesFor: #children!hooks!public! !
!WAPresenter categoriesFor: #childrenDo:!iterating!public! !
!WAPresenter categoriesFor: #decoratedComponent!decorations!public! !
!WAPresenter categoriesFor: #handleAnswer:!delegation!public! !
!WAPresenter categoriesFor: #initialRequest:!hooks!public! !
!WAPresenter categoriesFor: #isDecoration!public!testing! !
!WAPresenter categoriesFor: #renderContentOn:!public!rendering! !
!WAPresenter categoriesFor: #renderUndecoratedWithContext:!public!rendering! !
!WAPresenter categoriesFor: #script!hooks!public! !
!WAPresenter categoriesFor: #states!hooks!public! !
!WAPresenter categoriesFor: #style!hooks!public! !
!WAPresenter categoriesFor: #updateRoot:!public!updating! !
!WAPresenter categoriesFor: #updateStates:!public!updating! !
!WAPresenter categoriesFor: #visiblePresentersDo:!convenience!public! !
