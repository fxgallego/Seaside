﻿"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WAInputDialog
	instanceVariableNames: 'label value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAInputDialog guid: (GUID fromString: '{86a3af4b-d565-4e22-8b7b-94258c5ed6f3}')!
WAInputDialog comment: 'WAInputDialog generates a simple form with a text input field and a submit button. The instance variable "value" is used for initial value of the text field and hold the text entered by user. WAInputDialog answers with text entered by user (value of "value"). See WAComponent>>request:label:default: for sample use and easy way to use WAInputDialog.
!WAInputDialog categoriesForClass!Seaside-Widgets-Components! !
!WAInputDialog methodsFor!

default: aString

label

label: aString

renderContentOn: html

value

value: aString
!WAInputDialog categoriesFor: #default:!accessing!public! !
!WAInputDialog categoriesFor: #label!accessing!public! !
!WAInputDialog categoriesFor: #label:!accessing!public! !
!WAInputDialog categoriesFor: #renderContentOn:!public!rendering! !
!WAInputDialog categoriesFor: #value!accessing!public! !
!WAInputDialog categoriesFor: #value:!accessing!public! !
