﻿"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #GRPrinter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRPrinter guid: (GUID fromString: '{78774525-3544-42fc-8cc7-b8eb223cf663}')!
GRPrinter comment: ''!
!GRPrinter categoriesForClass!Grease-Core-Text! !
!GRPrinter methodsFor!

, aPrinter 

pad: aString center: aCharacter to: anInteger

pad: aString left: aCharacter to: anInteger

pad: aString right: aCharacter to: anInteger

print: anObject

print: anObject on: aStream
!GRPrinter categoriesFor: #,!operators!public! !
!GRPrinter categoriesFor: #pad:center:to:!public!utilities! !
!GRPrinter categoriesFor: #pad:left:to:!public!utilities! !
!GRPrinter categoriesFor: #pad:right:to:!public!utilities! !
!GRPrinter categoriesFor: #print:!printing!public! !
!GRPrinter categoriesFor: #print:on:!printing!public! !

!GRPrinter class methodsFor!

abbreviatedMonthName

abbreviatedWeekName

absOffsetHoursPadded

absOffsetMinutesPadded

binaryFileSize

cookieTimestamp

decimalFileSize

fullMonthName

fullWeekName

httpDate

isoDate

isoTime

monthName: anArray 

numberWithAtLeastDigits: anInteger

offsetSign

paddedCentury

paddedDay

paddedHour12

paddedHour24

paddedMinute

paddedMonth

paddedSecond

paddedYear

rfc1123

rfc822

rfc822WithTimeZone: aString

swissCurrency

unpaddedCentury

unpaddedDay

unpaddedHour12

unpaddedHour24

unpaddedMinute

unpaddedMonth

unpaddedSecond

unpaddedYear

usCurrency

weekName: anArray 
!GRPrinter class categoriesFor: #abbreviatedMonthName!parts/date!public! !
!GRPrinter class categoriesFor: #abbreviatedWeekName!parts/date!public! !
!GRPrinter class categoriesFor: #absOffsetHoursPadded!parts/date!public! !
!GRPrinter class categoriesFor: #absOffsetMinutesPadded!parts/date!public! !
!GRPrinter class categoriesFor: #binaryFileSize!parts/units!public! !
!GRPrinter class categoriesFor: #cookieTimestamp!factory/http!public! !
!GRPrinter class categoriesFor: #decimalFileSize!parts/units!public! !
!GRPrinter class categoriesFor: #fullMonthName!parts/date!public! !
!GRPrinter class categoriesFor: #fullWeekName!parts/date!public! !
!GRPrinter class categoriesFor: #httpDate!factory/http!public! !
!GRPrinter class categoriesFor: #isoDate!factory/http!public! !
!GRPrinter class categoriesFor: #isoTime!factory/http!public! !
!GRPrinter class categoriesFor: #monthName:!parts/date!public! !
!GRPrinter class categoriesFor: #numberWithAtLeastDigits:!parts/units!public! !
!GRPrinter class categoriesFor: #offsetSign!parts/date!public! !
!GRPrinter class categoriesFor: #paddedCentury!parts/date!public! !
!GRPrinter class categoriesFor: #paddedDay!parts/date!public! !
!GRPrinter class categoriesFor: #paddedHour12!parts/time!public! !
!GRPrinter class categoriesFor: #paddedHour24!parts/time!public! !
!GRPrinter class categoriesFor: #paddedMinute!parts/time!public! !
!GRPrinter class categoriesFor: #paddedMonth!parts/date!public! !
!GRPrinter class categoriesFor: #paddedSecond!parts/time!public! !
!GRPrinter class categoriesFor: #paddedYear!parts/date!public! !
!GRPrinter class categoriesFor: #rfc1123!factory/http!public! !
!GRPrinter class categoriesFor: #rfc822!factory/http!public! !
!GRPrinter class categoriesFor: #rfc822WithTimeZone:!factory/http!public! !
!GRPrinter class categoriesFor: #swissCurrency!factory/currency!public! !
!GRPrinter class categoriesFor: #unpaddedCentury!parts/date!public! !
!GRPrinter class categoriesFor: #unpaddedDay!parts/date!public! !
!GRPrinter class categoriesFor: #unpaddedHour12!parts/time!public! !
!GRPrinter class categoriesFor: #unpaddedHour24!parts/time!public! !
!GRPrinter class categoriesFor: #unpaddedMinute!parts/time!public! !
!GRPrinter class categoriesFor: #unpaddedMonth!parts/date!public! !
!GRPrinter class categoriesFor: #unpaddedSecond!parts/time!public! !
!GRPrinter class categoriesFor: #unpaddedYear!parts/date!public! !
!GRPrinter class categoriesFor: #usCurrency!factory/currency!public! !
!GRPrinter class categoriesFor: #weekName:!parts/date!public! !
