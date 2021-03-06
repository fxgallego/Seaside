﻿"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WAWelcomeConfigure
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWelcomeConfigure guid: (GUID fromString: '{3bdb68fe-a465-406a-bfe3-aa8a39f5db65}')!
WAWelcomeConfigure comment: ''!
!WAWelcomeConfigure categoriesForClass!Seaside-Welcome! !
!WAWelcomeConfigure methodsFor!

clearServerUrl	WAWelcomeUrlDialog clearServerUrl!

disableErrorWalkbacks	WAAdmin applicationExceptionHandlingDefaults at: #exceptionHandler put: WAHtmlErrorHandler!

enableErrorWalkbacks	WAAdmin applicationExceptionHandlingDefaults at: #exceptionHandler put: WAWalkbackErrorHandler!

errorWalkbacksEnabled	^ (WAAdmin applicationExceptionHandlingDefaults at: #exceptionHandler) = WAWalkbackErrorHandler!

renderButtonsOn: html	html div class: 'buttons'; with: [		html anchor			url: '/config';			script: (html jQuery this button				primaryIcon: 'ui-icon-gear');			with: 'Advanced Configuration'.		html anchor			callback: [ self answer ];			script: (html jQuery this button				primaryIcon: 'ui-icon-arrowreturnthick-1-w');			title: 'Go back';			with: 'Back' ]!

renderContentOn: html	html form class: 'config'; with: [ 		html heading: 'Basic Configuration'.		html anchor			class: 'goback';			callback: [ self answer ];			with: '[ go back ]'.		self renderDescriptionOn: html.		self renderToolsOn: html.		self renderWalkbacksOn: html.		self renderServerUrlOn: html.		self renderButtonsOn: html ]!

renderDescriptionOn: html	html paragraph: [		html text: 'Here are a few common settings you might want to change. Once you''re ready for more, you can jump over to the '.		html anchor			url: '/config';			with: 'advanced configuration tool'.		html text: '.' ]!

renderServerUrlOn: html	| id |	html div		id: (id := html nextId);		class: 'dialog';	      script: (html jQuery new dialog			html: WAWelcomeUrlDialog new;			title: 'Configure server URL';			resizable: false;			modal: true).	html paragraph: [		html text: 'Public server URL: '; text: self serverUrl; text: ' [ '.		html anchor			url: '#';			onClick: ((html jQuery id: id) dialog open return: false);			with: 'set'.		self serverUrl isNil ifFalse: [			html text: ' / '.			html anchor				callback: [ self clearServerUrl ];				with: 'clear' ].		html text: ' ]' ]!

renderToolsOn: html	html paragraph: [		html checkbox			id: html nextId;			value: WAAdmin developmentToolsEnabled;			onTrue: [ WAAdmin enableDevelopmentTools ]			onFalse: [ WAAdmin disableDevelopmentTools ];			onChange: (html jQuery ajax serializeForm).		html label			for: html lastId;			with: 'Show development toolbar' ]!

renderWalkbacksOn: html	html paragraph: [		html checkbox			id: html nextId;			value: self errorWalkbacksEnabled;			onTrue: [ self enableErrorWalkbacks ]			onFalse: [ self disableErrorWalkbacks ];			onChange: (html jQuery ajax serializeForm).		html label			for: html lastId;			with: 'Allow debugging of errors' ]!

serverUrl	^ WAWelcomeUrlDialog serverUrl! !
!WAWelcomeConfigure categoriesFor: #clearServerUrl!private! !
!WAWelcomeConfigure categoriesFor: #disableErrorWalkbacks!actions!public! !
!WAWelcomeConfigure categoriesFor: #enableErrorWalkbacks!actions!public! !
!WAWelcomeConfigure categoriesFor: #errorWalkbacksEnabled!public!testing! !
!WAWelcomeConfigure categoriesFor: #renderButtonsOn:!public!rendering/parts! !
!WAWelcomeConfigure categoriesFor: #renderContentOn:!public!rendering! !
!WAWelcomeConfigure categoriesFor: #renderDescriptionOn:!public!rendering/parts! !
!WAWelcomeConfigure categoriesFor: #renderServerUrlOn:!public!rendering/parts! !
!WAWelcomeConfigure categoriesFor: #renderToolsOn:!public!rendering/parts! !
!WAWelcomeConfigure categoriesFor: #renderWalkbacksOn:!public!rendering/parts! !
!WAWelcomeConfigure categoriesFor: #serverUrl!private! !

