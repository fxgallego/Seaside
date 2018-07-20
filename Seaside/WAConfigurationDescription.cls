﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAConfigurationDescription
	instanceVariableNames: 'attributes expressions'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAConfigurationDescription guid: (GUID fromString: '{aba6f011-d67e-4d4e-8747-3b19de98ea01}')!
WAConfigurationDescription comment: 'I hold a collection of attributes and present methods to construct new methods, providing an interface a bit like WACanvas and #renderContentOn: to WASystemConfiguration>>addAttributes:.
!WAConfigurationDescription categoriesForClass!Seaside-Core-Configuration! !
!WAConfigurationDescription methodsFor!

add: aDescriptor to: aDictionary

addAttribute: anAttribute

addExpression: anExpression

at: aSymbol addAll: aCollection

at: aSymbol addAll: additions removeAll: removals

at: aSymbol put: anObject 

at: aSymbol putClass: aClass 

attributes

boolean: aSymbol

classBinding: aSymbol

classBindingCollection: aSymbol

collection: aSymbol

expressions

initialize

integer: aSymbol

list: aSymbol

listOfClasses: aSymbol

number: aSymbol

password: aSymbol

string: aSymbol

url: aSymbol
!WAConfigurationDescription categoriesFor: #add:to:!private! !
!WAConfigurationDescription categoriesFor: #addAttribute:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #addExpression:!public!values! !
!WAConfigurationDescription categoriesFor: #at:addAll:!public!values! !
!WAConfigurationDescription categoriesFor: #at:addAll:removeAll:!public!values! !
!WAConfigurationDescription categoriesFor: #at:put:!public!values! !
!WAConfigurationDescription categoriesFor: #at:putClass:!public!values! !
!WAConfigurationDescription categoriesFor: #attributes!accessing!public! !
!WAConfigurationDescription categoriesFor: #boolean:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #classBinding:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #classBindingCollection:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #collection:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #expressions!accessing!public! !
!WAConfigurationDescription categoriesFor: #initialize!initialization!public! !
!WAConfigurationDescription categoriesFor: #integer:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #list:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #listOfClasses:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #number:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #password:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #string:!attribute creation!public! !
!WAConfigurationDescription categoriesFor: #url:!attribute creation!public! !
