﻿"Filed out from Dolphin Smalltalk 7"!

WACanvasWidget subclass: #WATableReport
	instanceVariableNames: 'sortColumn isReversed columns rowPeriod rowColors rows'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATableReport guid: (GUID fromString: '{e77ba62e-f5f8-442c-ada6-e25731406886}')!
WATableReport comment: 'WATableReport presents tabular data. A WATableReport contains a collections of objects, one per row, and a collection of WAReportColumns. The WAReportColumn objects are configured to produce the text for the table cell based on the each row object. Each column has a header and an optional column sum. The table can be sorted on a column by clicking its header, unless the column handles rendering on the canvas itself. A table can be given a set of html colors (rowColors), used to colors the rows to aid in viewing. 
!WATableReport categoriesForClass!Seaside-Widgets-Components! !
!WATableReport methodsFor!

chooseRow: aRow column: aColumn

colorForRowNumber: aNumber

columns: anArray

initialize

isReversed

renderColumn: aColumn row: aRow on: html

renderContentOn: html

renderFooterForColumn: aColumn on: html

renderHeaderForColumn: aColumn on: html

renderRowNumber: index item: row on: html

renderRowsOn: html 

renderTableFooterOn: html

renderTableHeaderOn: html

reverse

rowColors: colorArray

rowPeriod: aNumber

rows

rows: anArray

sortColumn

sortColumn: anObject

states
!WATableReport categoriesFor: #chooseRow:column:!private! !
!WATableReport categoriesFor: #colorForRowNumber:!private! !
!WATableReport categoriesFor: #columns:!accessing!public! !
!WATableReport categoriesFor: #initialize!initialization!public! !
!WATableReport categoriesFor: #isReversed!public!testing! !
!WATableReport categoriesFor: #renderColumn:row:on:!public!rendering! !
!WATableReport categoriesFor: #renderContentOn:!public!rendering! !
!WATableReport categoriesFor: #renderFooterForColumn:on:!public!rendering! !
!WATableReport categoriesFor: #renderHeaderForColumn:on:!public!rendering! !
!WATableReport categoriesFor: #renderRowNumber:item:on:!public!rendering! !
!WATableReport categoriesFor: #renderRowsOn:!public!rendering! !
!WATableReport categoriesFor: #renderTableFooterOn:!public!rendering! !
!WATableReport categoriesFor: #renderTableHeaderOn:!public!rendering! !
!WATableReport categoriesFor: #reverse!public!state variables! !
!WATableReport categoriesFor: #rowColors:!accessing!public! !
!WATableReport categoriesFor: #rowPeriod:!accessing!public! !
!WATableReport categoriesFor: #rows!accessing!public! !
!WATableReport categoriesFor: #rows:!accessing!public! !
!WATableReport categoriesFor: #sortColumn!public!state variables! !
!WATableReport categoriesFor: #sortColumn:!public!state variables! !
!WATableReport categoriesFor: #states!hooks!public! !
