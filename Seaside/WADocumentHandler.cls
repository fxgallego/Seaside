﻿"Filed out from Dolphin Smalltalk 7"!

WARequestHandler subclass: #WADocumentHandler
	instanceVariableNames: 'document'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADocumentHandler guid: (GUID fromString: '{633bab0f-9175-4f34-bbc0-30327050a9ef}')!
WADocumentHandler comment: 'WADocumentHandler handles requests for images, text documents and binary files (byte arrays). This class is not normally used directly. A number of WA*Tag classes implement document:mimeType:fileName: which use WADocumentHandler. Given a document, #document:mimeType:fileName: creates a WADocumentHandler for the document, registers the handler with a Registry, and adds the correct url in the tag for the document.
!WADocumentHandler categoriesForClass!Seaside-Core-RequestHandling! !
!WADocumentHandler methodsFor!

= anObject

document

handleFiltered: aRequestContext

hash

initializeOn: aDocument

postCopy
!WADocumentHandler categoriesFor: #=!comparing!public! !
!WADocumentHandler categoriesFor: #document!accessing!public! !
!WADocumentHandler categoriesFor: #handleFiltered:!handling!public! !
!WADocumentHandler categoriesFor: #hash!comparing!public! !
!WADocumentHandler categoriesFor: #initializeOn:!initialization!public! !
!WADocumentHandler categoriesFor: #postCopy!copying!public! !

!WADocumentHandler class methodsFor!

document: anObject

document: anObject mimeType: aMimeType

document: anObject mimeType: aMimeType fileName: aString
!WADocumentHandler class categoriesFor: #document:!instance creation!public! !
!WADocumentHandler class categoriesFor: #document:mimeType:!instance creation!public! !
!WADocumentHandler class categoriesFor: #document:mimeType:fileName:!instance creation!public! !
