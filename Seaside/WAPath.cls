﻿"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WAPath
	instanceVariableNames: 'stack'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPath guid: (GUID fromString: '{be4ac48c-9f5c-4cfa-b665-3bb7555b9acf}')!
WAPath comment: 'WAPath represents a path navigation (breadcrumbs) for a web page and displays standard breadcrumbs(xxx >> yyy >> zzz). WAPath maintains a stack of associations, one for each "location" or "page" in the path. The association key is the text that is displayed in the breadcrimb. The association value is an object of your choosing, which your code uses to restore that "page". 
!WAPath categoriesForClass!Seaside-Widgets-Components! !
!WAPath methodsFor!

choose: anAssociation 

currentSegment

initialize

pushSegment: anObject name: aString

renderContentOn: html

states
!WAPath categoriesFor: #choose:!behavior!public! !
!WAPath categoriesFor: #currentSegment!accessing!public! !
!WAPath categoriesFor: #initialize!initialization!public! !
!WAPath categoriesFor: #pushSegment:name:!behavior!public! !
!WAPath categoriesFor: #renderContentOn:!public!rendering! !
!WAPath categoriesFor: #states!hooks!public! !

!WAPath class methodsFor!

exampleComponent
!WAPath class categoriesFor: #exampleComponent!example!public! !
