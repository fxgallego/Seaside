﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAFile
	instanceVariableNames: 'contents contentType fileName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFile guid: (GUID fromString: '{dd50dc84-270b-4034-bb11-912b136f71c5}')!
WAFile comment: 'I represent a file that was uploaded by the user via #fileInput.
!WAFile categoriesForClass!Seaside-Core-HTTP! !
!WAFile methodsFor!

contents: aByteArray

contentsDecoded

contentsDecodedUsing: aCharSetName

contentType

contentType: aMimeTypeOrString

fileName

fileName: aString

isWindowsPath

rawContents

size
!WAFile categoriesFor: #contents:!accessing!public! !
!WAFile categoriesFor: #contentsDecoded!accessing!public! !
!WAFile categoriesFor: #contentsDecodedUsing:!accessing!public! !
!WAFile categoriesFor: #contentType!accessing!public! !
!WAFile categoriesFor: #contentType:!accessing!public! !
!WAFile categoriesFor: #fileName!accessing!public! !
!WAFile categoriesFor: #fileName:!accessing!public! !
!WAFile categoriesFor: #isWindowsPath!private! !
!WAFile categoriesFor: #rawContents!accessing!public! !
!WAFile categoriesFor: #size!accessing!public! !
