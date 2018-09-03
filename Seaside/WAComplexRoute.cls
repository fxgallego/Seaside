﻿"Filed out from Dolphin Smalltalk 7"!

WARoute subclass: #WAComplexRoute
	instanceVariableNames: 'pathMatches parameterMatches isOverlyComplex'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAComplexRoute guid: (GUID fromString: '{498dd459-ee0f-49ec-9d50-85001dc32ea5}')!
WAComplexRoute comment: ''!
!WAComplexRoute categoriesForClass!Seaside-REST-Core-Route! !
!WAComplexRoute methodsFor!

argumentCount

buildPathMatchesFrom: aUrl arguments: aCollectionOfStrings

initializeQueryFieldParameters: queryFields arguments: aCollectionOfStrings

initializeWithMethod: aString selector: aSymbol url: aUrl arguments: aCollectionOfStrings produces: aProducesMimeTypeMatch consumes: aConsumesMimeTypeMatch

isOverlyComplex

mapArgumentsWithElements: anArrayOfStrings parameters: aDictionary into: anArray

matchesFlexibleNumberOfPathElements

matchesModeratelyComplex: aCollectionOfStrings

matchesOverlyComplex: aCollectionOfStrings

matchesParameters: aDictionary

matchesPath: aCollectionOfStrings

pathElementCount

printOn: aStream

priority
!WAComplexRoute categoriesFor: #argumentCount!accessing!public! !
!WAComplexRoute categoriesFor: #buildPathMatchesFrom:arguments:!private! !
!WAComplexRoute categoriesFor: #initializeQueryFieldParameters:arguments:!initialization!public! !
!WAComplexRoute categoriesFor: #initializeWithMethod:selector:url:arguments:produces:consumes:!initialization!public! !
!WAComplexRoute categoriesFor: #isOverlyComplex!private! !
!WAComplexRoute categoriesFor: #mapArgumentsWithElements:parameters:into:!public! !
!WAComplexRoute categoriesFor: #matchesFlexibleNumberOfPathElements!public!testing! !
!WAComplexRoute categoriesFor: #matchesModeratelyComplex:!private! !
!WAComplexRoute categoriesFor: #matchesOverlyComplex:!private! !
!WAComplexRoute categoriesFor: #matchesParameters:!public!testing! !
!WAComplexRoute categoriesFor: #matchesPath:!public!testing! !
!WAComplexRoute categoriesFor: #pathElementCount!accessing!public! !
!WAComplexRoute categoriesFor: #printOn:!printing!public! !
!WAComplexRoute categoriesFor: #priority!accessing!public! !

!WAComplexRoute class methodsFor!

example

method: aMethodString selector: aSymbol pattern: aPatternString

method: aMethodString selector: aSymbol pattern: aPatternString arguments: aCollectionOfStrings produces: aProducesMimeTypeMatch consumes: aConsumesMimeTypeMatch 

method: aString selector: aSymbol url: aUrl arguments: aCollectionOfStrings produces: aProducesMimeTypeMatch consumes: aConsumesMimeTypeMatch
!WAComplexRoute class categoriesFor: #example!examples!public! !
!WAComplexRoute class categoriesFor: #method:selector:pattern:!instance creation!public! !
!WAComplexRoute class categoriesFor: #method:selector:pattern:arguments:produces:consumes:!instance creation!public! !
!WAComplexRoute class categoriesFor: #method:selector:url:arguments:produces:consumes:!instance creation!public! !
