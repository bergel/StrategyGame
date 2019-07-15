Class {
	#name : #SGMapTest,
	#superclass : #TestCase,
	#category : #StrategyGame
}

{ #category : #tests }
SGMapTest >> testBasicOpening [
	| map |
	map := SGMap new scenario1.
	map open delete
]

{ #category : #tests }
SGMapTest >> testEndTurn [
	| map |
	map := SGMap new scenario1.
	10 timesRepeat: [ map endTurn ]
]
