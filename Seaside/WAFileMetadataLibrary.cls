﻿"Filed out from Dolphin Smalltalk 7"!

WAAbstractFileLibrary subclass: #WAFileMetadataLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFileMetadataLibrary guid: (GUID fromString: '{fcbfcc75-bc0f-4240-90a4-fb3fee6ee83a}')!
WAFileMetadataLibrary comment: 'I seek to address the following WAFileLibrary related issues:
!WAFileMetadataLibrary categoriesForClass!Seaside-Core-Libraries! !
!WAFileMetadataLibrary methodsFor!

asFileAndFoldername: aSelector

asFilename: aSelector

deployFiles

fileResourceOf: aSelector

fileSelectors

fileSizeOf: aSelector

handle: aRequestContext

isFileSelector: aSymbol

mimetypeOf: aSelector
!WAFileMetadataLibrary categoriesFor: #asFileAndFoldername:!private! !
!WAFileMetadataLibrary categoriesFor: #asFilename:!private! !
!WAFileMetadataLibrary categoriesFor: #deployFiles!actions!public! !
!WAFileMetadataLibrary categoriesFor: #fileResourceOf:!private! !
!WAFileMetadataLibrary categoriesFor: #fileSelectors!private! !
!WAFileMetadataLibrary categoriesFor: #fileSizeOf:!accessing!public! !
!WAFileMetadataLibrary categoriesFor: #handle:!handling!public! !
!WAFileMetadataLibrary categoriesFor: #isFileSelector:!private! !
!WAFileMetadataLibrary categoriesFor: #mimetypeOf:!accessing!public! !

!WAFileMetadataLibrary class methodsFor!

absolutePathFromRelative: aRelativeFilePath

addFileAt: aPath relativeToRootDirectory: relativeRootDirectory

addFileNamed: filename contents: aByteArrayOrString

recursivelyAddAllFilesIn: aPathString 

recursivelyAddAllFilesIn: aPathString relativeToRootDirectory: relativeRootDirectory
!WAFileMetadataLibrary class categoriesFor: #absolutePathFromRelative:!private! !
!WAFileMetadataLibrary class categoriesFor: #addFileAt:relativeToRootDirectory:!private! !
!WAFileMetadataLibrary class categoriesFor: #addFileNamed:contents:!file addition!public! !
!WAFileMetadataLibrary class categoriesFor: #recursivelyAddAllFilesIn:!file addition!public! !
!WAFileMetadataLibrary class categoriesFor: #recursivelyAddAllFilesIn:relativeToRootDirectory:!file addition!public! !
