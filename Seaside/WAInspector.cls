﻿"Filed out from Dolphin Smalltalk 7"!

WATool subclass: #WAInspector
	instanceVariableNames: 'path selected input'
	classVariableNames: 'Current'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAInspector guid: (GUID fromString: '{a8aca017-107d-440d-8775-4791b13372f6}')!
WAInspector comment: 'This is an abstract implementation of a web-based object inspector. Platforms should implement their own subclasses, specifying behaviour for all unimplemented methods.
!WAInspector categoriesForClass!Seaside-Development-Core! !
!WAInspector methodsFor!

actions

children

chooseObject: anObject named: aString

doIt

evaluate

fieldsFor: anObject

initialize

inspectIt

isPrimitiveType: anObject

object

object: anObject 

renderContentOn: html

renderEditAreaOn: html

renderMembersOn: html

renderRow: anObject named: aString group: aRadioGroup on: html

style
!WAInspector categoriesFor: #actions!actions!public! !
!WAInspector categoriesFor: #children!hooks!public! !
!WAInspector categoriesFor: #chooseObject:named:!actions!public! !
!WAInspector categoriesFor: #doIt!actions!public! !
!WAInspector categoriesFor: #evaluate!actions!public! !
!WAInspector categoriesFor: #fieldsFor:!private! !
!WAInspector categoriesFor: #initialize!initialization!public! !
!WAInspector categoriesFor: #inspectIt!actions!public! !
!WAInspector categoriesFor: #isPrimitiveType:!public!testing! !
!WAInspector categoriesFor: #object!accessing!public! !
!WAInspector categoriesFor: #object:!accessing!public! !
!WAInspector categoriesFor: #renderContentOn:!public!rendering! !
!WAInspector categoriesFor: #renderEditAreaOn:!public!rendering! !
!WAInspector categoriesFor: #renderMembersOn:!public!rendering! !
!WAInspector categoriesFor: #renderRow:named:group:on:!public!rendering! !
!WAInspector categoriesFor: #style!hooks!public! !

!WAInspector class methodsFor!

current

current: anInspectorClass

on: anObject

select

unselect
!WAInspector class categoriesFor: #current!public!registration! !
!WAInspector class categoriesFor: #current:!public!registration! !
!WAInspector class categoriesFor: #on:!instance creation!public! !
!WAInspector class categoriesFor: #select!public!registration! !
!WAInspector class categoriesFor: #unselect!public!registration! !
