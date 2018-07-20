﻿"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAComponentStub
	instanceVariableNames: 'initialRequestBlock updateRootBlock updateUrlBlock updateStatesBlock renderBlock childrenBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAComponentStub guid: (GUID fromString: '{3fbf0b7b-0062-44b6-b72a-5685636d5ea3}')!
WAComponentStub comment: ''!
!WAComponentStub categoriesForClass!Seaside-Tests-Component-Stubs! !
!WAComponentStub methodsFor!

children

initialRequest: aRequest

onChildren: aBlock

onInitialRequest: aBlock

onRender: aBlock

onUpdateRoot: aBlock

onUpdateStates: aBlock

onUpdateUrl: aBlock

renderContentOn: html

updateRoot: anHtmlRoot

updateStates: aSnapshot

updateUrl: aUrl
!WAComponentStub categoriesFor: #children!hooks!public! !
!WAComponentStub categoriesFor: #initialRequest:!hooks!public! !
!WAComponentStub categoriesFor: #onChildren:!events!public! !
!WAComponentStub categoriesFor: #onInitialRequest:!events!public! !
!WAComponentStub categoriesFor: #onRender:!events!public! !
!WAComponentStub categoriesFor: #onUpdateRoot:!events!public! !
!WAComponentStub categoriesFor: #onUpdateStates:!events!public! !
!WAComponentStub categoriesFor: #onUpdateUrl:!events!public! !
!WAComponentStub categoriesFor: #renderContentOn:!public!rendering! !
!WAComponentStub categoriesFor: #updateRoot:!public!updating! !
!WAComponentStub categoriesFor: #updateStates:!public!updating! !
!WAComponentStub categoriesFor: #updateUrl:!public!updating! !
