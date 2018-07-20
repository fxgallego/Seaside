﻿"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WAFormDialog
	instanceVariableNames: 'validationError form'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFormDialog guid: (GUID fromString: '{8be95eb6-3385-4a01-a2c3-4475437d59e9}')!
WAFormDialog comment: 'WAFormDialog is an empty html form. Used in WAComponent>>inform: to create a dialog component that displays text and an "Ok" button to close the component. See subclasses for sample usage & more functionality.
!WAFormDialog categoriesForClass!Seaside-Widgets-Components! !
!WAFormDialog methodsFor!

addForm

addFormByDefault

buttons

defaultButton

divClass

initialize

isValid

model

ok

removeForm

renderContentOn: html

renderDialogOn: html!

renderSpacerRowOn: html

renderValidationError: aString on: html

validationError: aString
!WAFormDialog categoriesFor: #addForm!actions!public! !
!WAFormDialog categoriesFor: #addFormByDefault!public!testing! !
!WAFormDialog categoriesFor: #buttons!accessing!public! !
!WAFormDialog categoriesFor: #defaultButton!accessing!public! !
!WAFormDialog categoriesFor: #divClass!accessing!public! !
!WAFormDialog categoriesFor: #initialize!initialization!public! !
!WAFormDialog categoriesFor: #isValid!public!testing! !
!WAFormDialog categoriesFor: #model!accessing!public! !
!WAFormDialog categoriesFor: #ok!actions!public! !
!WAFormDialog categoriesFor: #removeForm!actions!public! !
!WAFormDialog categoriesFor: #renderContentOn:!public!rendering! !
!WAFormDialog categoriesFor: #renderDialogOn:!public!rendering! !
!WAFormDialog categoriesFor: #renderSpacerRowOn:!public!rendering! !
!WAFormDialog categoriesFor: #renderValidationError:on:!public!rendering! !
!WAFormDialog categoriesFor: #validationError:!public!validation! !
