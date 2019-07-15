Class {
	#name : #SGHuman,
	#superclass : #SGPlayer,
	#category : #StrategyGame
}

{ #category : #initialization }
SGHuman >> setUp [
	map planets do: [ :p |
		p graphicalElement @ RTHighlightable
		 ]
]
