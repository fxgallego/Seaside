﻿"Filed out from Dolphin Smalltalk 7"!

WAWelcomeExample subclass: #WAWelcomeExampleCounter
	instanceVariableNames: 'counter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWelcomeExampleCounter guid: (GUID fromString: '{e1daf351-938f-4011-9c3b-8ee563b9eda5}')!
WAWelcomeExampleCounter comment: ''!
!WAWelcomeExampleCounter categoriesForClass!Seaside-Welcome! !
!WAWelcomeExampleCounter methodsFor!

children	^ Array with: self counter!

counter	^ counter ifNil: [ counter := WACounter new ]!

renderExampleOn: html	html paragraph: 'The counter is an example of a very simple Seaside component. It increments and decrements a number by clicking on a link. Test the example below by clicking on the "++" and "--" links:'.	html div class: #seasideExample; with: counter.	html paragraph: [				html text: 'This application is coded in two short methods. It is implemented in class ';	code: 'WACounter';  text: ', a subclass of '; code: 'WAComponent' ].	html paragraph: 'The first method initializes the counter to 0:'.	self renderInitializeCodeOn: html.		html paragraph: 'The second method generates the output and assigns the actions to the anchors (links) which update the current value.'.		self renderRenderContentOnCodeOn: html	!

renderInitializeCodeOn: html	html preformatted class: #codeSample; with: [		html span class: #patternUnary; with: 'initialize'. html break.		html span class: #super; with:'    super'. html text:' initialize.'. html break.		html span class: #instanceVar; with:'    count'. html text: ' := '. html span class: #number; with: '0'	 ]!

renderRenderContentOnCodeOn: html	html preformatted class: #codeSample; with: [		html span class: #patternKeyword; with: 'renderContentOn: '. html span class: #patternArg; with: 'html'. html break.    		html span class: #receiver; with: '    html'. html text: ' heading: '. html span class: #instanceVar; with: 'count.'. html break.		html span class: #receiver; with: '    html'. html text: ' anchor'. html break.		html text: '        callback: [ '. html span class: #instanceVar; with: 'count '. html text: ':= '. html span class: #instanceVar; with: 'count'. html text: ' + '. html span class: #number; with: '1'. html text: ' ];'. html break.		html text: '        with: '. html span class: #string; with: '''++'''. html text: '.'. html break.		html span class: #receiver; with: '    html'. html text: ' space.'. html break.		html span class: #receiver; with: '    html'. html text: ' anchor'. html break.		html text: '        callback: [ '. html span class: #instanceVar; with: 'count '. html text: ':= '. html span class: #instanceVar; with: 'count'. html text: ' - '. html span class: #number; with: '1'. html text: ' ];'. html break.		html text: '        with: '. html span class: #string; with: '''--'''. html text: '.' ]!

title	^ 'Counter'! !
!WAWelcomeExampleCounter categoriesFor: #children!hooks!public! !
!WAWelcomeExampleCounter categoriesFor: #counter!accessing!public! !
!WAWelcomeExampleCounter categoriesFor: #renderExampleOn:!public!rendering! !
!WAWelcomeExampleCounter categoriesFor: #renderInitializeCodeOn:!public!rendering! !
!WAWelcomeExampleCounter categoriesFor: #renderRenderContentOnCodeOn:!public!rendering! !
!WAWelcomeExampleCounter categoriesFor: #title!private! !

