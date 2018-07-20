﻿"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WATree
	instanceVariableNames: 'root selected expanded childrenBlock labelBlock canSelectBlock selectBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATree guid: (GUID fromString: '{7d030d8f-e64a-466e-b4bb-33cd100d653a}')!
WATree comment: 'WATree implements a tree menu, which supports nesting, collapsing and expanding. Prefixes items with "+/-" to indicate items that can be expanded/collapsed.
!WATree categoriesForClass!Seaside-Widgets-Components! !
!WATree methodsFor!

canSelect: aNode

canSelectBlock

canSelectBlock: aBlock

childrenBlock

childrenBlock: aBlock

childrenOf: aNode

collapse: aNode

expand: aNode

expandAll: aCollection

hasChildren: aNode

initialize

isExpanded: aNode

labelBlock

labelBlock: aBlock

labelOf: aNode

renderContentOn: html

renderNode: aNode on: html

renderNodeButton: aNode on: html 

renderNodeButtonLink: aNode action: aBlock text: anObject on: html

renderNodeChildren: aNode on: html

renderNodeLabel: aNode on: html 

renderNodeLabelLink: aNode action: aBlock text: anObject on: html

renderTreeOn: html

root

root: aNode

select: aNode 

selectBlock

selectBlock: aBlock

selected

selected: aNode

states
!WATree categoriesFor: #canSelect:!public!testing! !
!WATree categoriesFor: #canSelectBlock!accessing/configuration!public! !
!WATree categoriesFor: #canSelectBlock:!accessing/configuration!public! !
!WATree categoriesFor: #childrenBlock!accessing/configuration!public! !
!WATree categoriesFor: #childrenBlock:!accessing/configuration!public! !
!WATree categoriesFor: #childrenOf:!accessing/nodes!public! !
!WATree categoriesFor: #collapse:!actions!public! !
!WATree categoriesFor: #expand:!actions!public! !
!WATree categoriesFor: #expandAll:!actions!public! !
!WATree categoriesFor: #hasChildren:!public!testing! !
!WATree categoriesFor: #initialize!initialization!public! !
!WATree categoriesFor: #isExpanded:!public!testing! !
!WATree categoriesFor: #labelBlock!accessing/configuration!public! !
!WATree categoriesFor: #labelBlock:!accessing/configuration!public! !
!WATree categoriesFor: #labelOf:!accessing/nodes!public! !
!WATree categoriesFor: #renderContentOn:!public!rendering! !
!WATree categoriesFor: #renderNode:on:!public!rendering/nodes! !
!WATree categoriesFor: #renderNodeButton:on:!public!rendering/nodes! !
!WATree categoriesFor: #renderNodeButtonLink:action:text:on:!public!rendering/nodes! !
!WATree categoriesFor: #renderNodeChildren:on:!public!rendering/nodes! !
!WATree categoriesFor: #renderNodeLabel:on:!public!rendering/nodes! !
!WATree categoriesFor: #renderNodeLabelLink:action:text:on:!public!rendering/nodes! !
!WATree categoriesFor: #renderTreeOn:!public!rendering! !
!WATree categoriesFor: #root!accessing!public! !
!WATree categoriesFor: #root:!accessing!public! !
!WATree categoriesFor: #select:!actions!public! !
!WATree categoriesFor: #selectBlock!accessing/configuration!public! !
!WATree categoriesFor: #selectBlock:!accessing/configuration!public! !
!WATree categoriesFor: #selected!accessing!public! !
!WATree categoriesFor: #selected:!accessing!public! !
!WATree categoriesFor: #states!hooks!public! !

!WATree class methodsFor!

exampleClassBrowser

root: anObject

root: anObject path: anArray
!WATree class categoriesFor: #exampleClassBrowser!examples!public! !
!WATree class categoriesFor: #root:!instance creation!public! !
!WATree class categoriesFor: #root:path:!instance creation!public! !
