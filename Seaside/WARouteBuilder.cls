﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WARouteBuilder
	instanceVariableNames: 'compiled method path produces consumes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'configuration'!
WARouteBuilder guid: (GUID fromString: '{4c101e83-03a2-4b7a-8243-ae3b288ccd56}')!
WARouteBuilder comment: 'I am a builder for building WARoute instances from a CompiledMethod.
!WARouteBuilder categoriesForClass!Seaside-REST-Core-Route! !
!WARouteBuilder methodsFor!

consumes: aString

copy

create

createComplexRoute

createMimeTypeMatch: aCollection

createSimpleRoute

delete

get

initializeOn: aCompiledMethod

method: aString

move

options

patch

path: aString

post

produces: aString

put
!WARouteBuilder categoriesFor: #consumes:!configuration!public! !
!WARouteBuilder categoriesFor: #copy!configuration methods!public! !
!WARouteBuilder categoriesFor: #create!private! !
!WARouteBuilder categoriesFor: #createComplexRoute!private! !
!WARouteBuilder categoriesFor: #createMimeTypeMatch:!private! !
!WARouteBuilder categoriesFor: #createSimpleRoute!private! !
!WARouteBuilder categoriesFor: #delete!configuration methods!public! !
!WARouteBuilder categoriesFor: #get!configuration methods!public! !
!WARouteBuilder categoriesFor: #initializeOn:!initialization!public! !
!WARouteBuilder categoriesFor: #method:!configuration!public! !
!WARouteBuilder categoriesFor: #move!configuration methods!public! !
!WARouteBuilder categoriesFor: #options!configuration methods!public! !
!WARouteBuilder categoriesFor: #patch!configuration methods!public! !
!WARouteBuilder categoriesFor: #path:!configuration!public! !
!WARouteBuilder categoriesFor: #post!configuration methods!public! !
!WARouteBuilder categoriesFor: #produces:!configuration!public! !
!WARouteBuilder categoriesFor: #put!configuration methods!public! !

!WARouteBuilder class methodsFor!

createRoutesFor: aClass

createRoutesFrom: aClass to: aSuperClass

initialize

on: aCompiledMethod
!WARouteBuilder class categoriesFor: #createRoutesFor:!public! !
!WARouteBuilder class categoriesFor: #createRoutesFrom:to:!public! !
!WARouteBuilder class categoriesFor: #initialize!initialization!public! !
!WARouteBuilder class categoriesFor: #on:!instance creation!public! !
