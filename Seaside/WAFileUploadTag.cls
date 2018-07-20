﻿"Filed out from Dolphin Smalltalk 7"!

WAFormInputTag subclass: #WAFileUploadTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFileUploadTag guid: (GUID fromString: '{9ba7e83c-7103-4b30-a2d0-cb06e81c05e5}')!
WAFileUploadTag comment: 'I represent a file input element (<input type="file"). My callbacks will be evaluated with an instance of WAFile as an argument.'!
!WAFileUploadTag categoriesForClass!Seaside-Canvas-Tags! !
!WAFileUploadTag methodsFor!

accept: aString

beMultiple

callback: aBlock

multipleValuesCallback: aBlock

on: aSelector of: anObject 

type
!WAFileUploadTag categoriesFor: #accept:!attributes!public! !
!WAFileUploadTag categoriesFor: #beMultiple!attributes!public! !
!WAFileUploadTag categoriesFor: #callback:!callbacks!public! !
!WAFileUploadTag categoriesFor: #multipleValuesCallback:!callbacks!public! !
!WAFileUploadTag categoriesFor: #on:of:!callbacks!public! !
!WAFileUploadTag categoriesFor: #type!accessing!public! !
