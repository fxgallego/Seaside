﻿"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WABacktrackingTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABacktrackingTest guid: (GUID fromString: '{beda9cad-79a7-47ee-a352-d24c27b93889}')!
WABacktrackingTest comment: ''!
!WABacktrackingTest categoriesForClass!Seaside-Tests-Core-Backtracking! !
!WABacktrackingTest methodsFor!

testArray	| original snapshot1 snapshot2 snapshot3 |	original := Array with: 1 with: 2 with: 3.	snapshot1 := original snapshotCopy.	original at: 1 put: #a.	snapshot2 := original snapshotCopy.	original at: 2 put: #b.	snapshot3 := original snapshotCopy.	original restoreFromSnapshot: snapshot1.	self assert: original = #( 1 2 3 ).	original restoreFromSnapshot: snapshot2.	self assert: original = #( a 2 3 ).	original restoreFromSnapshot: snapshot3.	self assert: original = #( a b 3 )!

testBag	| original snapshot1 snapshot2 snapshot3 |	original := Bag with: 1 with: 2.	snapshot1 := original snapshotCopy.	original add: 3.	snapshot2 := original snapshotCopy.	original remove: 1.	snapshot3 := original snapshotCopy.	original restoreFromSnapshot: snapshot1.	self assert: original size = 2.	self assert: (original includes: 1).	self assert: (original includes: 2).	self deny: (original includes: 3).	original restoreFromSnapshot: snapshot2.	self assert: original size = 3.	self assert: (original includes: 1).	self assert: (original includes: 2).	self assert: (original includes: 3).	original restoreFromSnapshot: snapshot3.	self assert: original size = 2.	self deny: (original includes: 1).	self assert: (original includes: 2).	self assert: (original includes: 3).	original add: 4.	original restoreFromSnapshot: snapshot3.	self assert: original size = 2.	self deny: (original includes: 1).	self assert: (original includes: 2).	self assert: (original includes: 3).	self deny: (original includes: 4)!

testDictionary	| original snapshot1 snapshot2 snapshot3 snapshot4 |	original := Dictionary new.	original at: 1 put: #a; at: 2 put: #b.	snapshot1 := original snapshotCopy.	original at: 3 put: #c.	snapshot2 := original snapshotCopy.	original at: 3 put: #d.	snapshot3 := original snapshotCopy.	original removeKey: 1.	snapshot4 := original snapshotCopy.	original restoreFromSnapshot: snapshot1.	self assert: original size = 2.	self assert: (original at: 1 ifAbsent: [ ]) = #a.	self assert: (original at: 2 ifAbsent: [ ]) = #b.	self assert: (original at: 3 ifAbsent: [ ]) isNil.	self assert: (original at: 4 ifAbsent: [ ]) isNil.	original restoreFromSnapshot: snapshot2.	self assert: (original at: 1 ifAbsent: [ ]) = #a.	self assert: (original at: 2 ifAbsent: [ ]) = #b.	self assert: (original at: 3 ifAbsent: [ ]) = #c.	self assert: (original at: 4 ifAbsent: [ ]) isNil.	original restoreFromSnapshot: snapshot3.	self assert: (original at: 1 ifAbsent: [ ]) = #a.	self assert: (original at: 2 ifAbsent: [ ]) = #b.	self assert: (original at: 3 ifAbsent: [ ]) = #d.	self assert: (original at: 4 ifAbsent: [ ]) isNil.	original restoreFromSnapshot: snapshot4.	self assert: (original at: 1 ifAbsent: [ ]) isNil.	self assert: (original at: 2 ifAbsent: [ ]) = #b.	self assert: (original at: 3 ifAbsent: [ ]) = #d.	self assert: (original at: 4 ifAbsent: [ ]) isNil.	original at: 2 put: #!!.	original restoreFromSnapshot: snapshot4.	self assert: (original at: 1 ifAbsent: [ ]) isNil.	self assert: (original at: 2 ifAbsent: [ ]) = #b.	self assert: (original at: 3 ifAbsent: [ ]) = #d.	self assert: (original at: 4 ifAbsent: [ ]) isNil!

testHolder	| original snapshot1 snapshot2 snapshot3 |	original := WAValueHolder new.	snapshot1 := original snapshotCopy.	original contents: 1.	snapshot2 := original snapshotCopy.	original contents: 2.	snapshot3 := original snapshotCopy.	original restoreFromSnapshot: snapshot1.	self assert: original contents isNil.	original restoreFromSnapshot: snapshot2.	self assert: original contents = 1.	original restoreFromSnapshot: snapshot3.	self assert: original contents = 2!

testObject	| original snapshot |	original := Object new.	snapshot := original snapshotCopy.	original restoreFromSnapshot: snapshot!

testOrderedCollection	| original snapshot |	original := OrderedCollection with: 1 with: 2.	snapshot := original snapshotCopy.		original restoreFromSnapshot: snapshot.	self assert: original asArray = #(1 2).		original removeLast.		original restoreFromSnapshot: snapshot.	self assert: original asArray = #(1 2)!

testSet	| original snapshot1 snapshot2 snapshot3 |	original := Set with: 1 with: 2.	snapshot1 := original snapshotCopy.	original add: 3.	snapshot2 := original snapshotCopy.	original remove: 1.	snapshot3 := original snapshotCopy.	original restoreFromSnapshot: snapshot1.	self assert: original size = 2.	self assert: (original includes: 1).	self assert: (original includes: 2).	self deny: (original includes: 3).	original restoreFromSnapshot: snapshot2.	self assert: original size = 3.	self assert: (original includes: 1).	self assert: (original includes: 2).	self assert: (original includes: 3).	original restoreFromSnapshot: snapshot3.	self assert: original size = 2.	self deny: (original includes: 1).	self assert: (original includes: 2).	self assert: (original includes: 3).	original add: 4.	original restoreFromSnapshot: snapshot3.	self assert: original size = 2.	self deny: (original includes: 1).	self assert: (original includes: 2).	self assert: (original includes: 3).	self deny: (original includes: 4)! !
!WABacktrackingTest categoriesFor: #testArray!public!tests! !
!WABacktrackingTest categoriesFor: #testBag!public!tests! !
!WABacktrackingTest categoriesFor: #testDictionary!public!tests! !
!WABacktrackingTest categoriesFor: #testHolder!public!tests! !
!WABacktrackingTest categoriesFor: #testObject!public!tests! !
!WABacktrackingTest categoriesFor: #testOrderedCollection!public!tests! !
!WABacktrackingTest categoriesFor: #testSet!public!tests! !

