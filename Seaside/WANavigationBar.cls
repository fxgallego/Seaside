﻿"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WANavigationBar
	instanceVariableNames: 'actionsSelector owner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WANavigationBar guid: (GUID fromString: '{2888aada-763d-4c43-8ddb-9f245b83b446}')!
WANavigationBar comment: 'WANavigationBar provides navigation links for a component, the WANavigationBar''s owner. WANavigationBar is vertical in that all items in the bar are rendered in a column. WANavigationBar''s owner typically is a top level component that renders a number of children components, including the WANavigationBar. When a user selects an item in the WANavigationBar a message is sent to the owner, so it can change.
!WANavigationBar categoriesForClass!Seaside-Widgets-Components! !
!WANavigationBar methodsFor!

actions

actionsSelector: aSymbol

initialize

owner: anObject

renderContentOn: html

renderInput: aSymbol on: html

renderLink: aSymbol on: html

target
!WANavigationBar categoriesFor: #actions!accessing!public! !
!WANavigationBar categoriesFor: #actionsSelector:!accessing!public! !
!WANavigationBar categoriesFor: #initialize!initialization!public! !
!WANavigationBar categoriesFor: #owner:!accessing!public! !
!WANavigationBar categoriesFor: #renderContentOn:!public!rendering! !
!WANavigationBar categoriesFor: #renderInput:on:!public!rendering! !
!WANavigationBar categoriesFor: #renderLink:on:!public!rendering! !
!WANavigationBar categoriesFor: #target!accessing!public! !
