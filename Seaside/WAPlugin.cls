﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WAPlugin
	instanceVariableNames: 'requestor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPlugin guid: (GUID fromString: '{26eade0f-9055-4ab4-9143-68cb1baa1a97}')!
WAPlugin comment: 'I am an abstract root class for all plugins. Plugins are an easy way to add or remove additional tools without changing the codebase. To add a new plugin make sure you choose the right superclass so that the tool can detect your code.
!WAPlugin categoriesForClass!Seaside-Tools-Web! !
!WAPlugin methodsFor!

<= aPlugin

clickScript

cssClass

execute

initializeRequestor: aRequestorObject

isActive

label

open: aComponent

open: aComponent onAnswer: aBlock

priority

renderContentOn: html

rendererClass

requestor

title

tooltip
!WAPlugin categoriesFor: #<=!comparing!public! !
!WAPlugin categoriesFor: #clickScript!accessing!public! !
!WAPlugin categoriesFor: #cssClass!accessing!public! !
!WAPlugin categoriesFor: #execute!actions!public! !
!WAPlugin categoriesFor: #initializeRequestor:!initialization!public! !
!WAPlugin categoriesFor: #isActive!public!testing! !
!WAPlugin categoriesFor: #label!accessing!public! !
!WAPlugin categoriesFor: #open:!actions!public! !
!WAPlugin categoriesFor: #open:onAnswer:!actions!public! !
!WAPlugin categoriesFor: #priority!accessing!public! !
!WAPlugin categoriesFor: #renderContentOn:!public!rendering! !
!WAPlugin categoriesFor: #rendererClass!public!rendering! !
!WAPlugin categoriesFor: #requestor!accessing!public! !
!WAPlugin categoriesFor: #title!accessing!public! !
!WAPlugin categoriesFor: #tooltip!accessing!public! !
