﻿"Filed out from Dolphin Smalltalk 7"!

WAAttribute subclass: #WAListAttribute
	instanceVariableNames: 'optionsBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAListAttribute guid: (GUID fromString: '{384f1521-ef2e-461e-bd48-268dbd4e3a8d}')!
WAListAttribute comment: 'WAListAttribute is an attribute that is restricted to a list of values. 
!WAListAttribute categoriesForClass!Seaside-Core-Configuration! !
!WAListAttribute methodsFor!

accept: aVisitor

options

options: aBlock

valueFromString: aString 
!WAListAttribute categoriesFor: #accept:!public!visiting! !
!WAListAttribute categoriesFor: #options!accessing!public! !
!WAListAttribute categoriesFor: #options:!accessing!public! !
!WAListAttribute categoriesFor: #valueFromString:!converting!public! !
