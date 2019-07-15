Class {
	#name : #SGPlanet,
	#superclass : #Object,
	#instVars : [
		'inhabitants',
		'owner',
		'position',
		'graphicalElement',
		'graphicalLabel'
	],
	#category : #StrategyGame
}

{ #category : #accessing }
SGPlanet >> color [
	^ owner color
]

{ #category : #'as yet unclassified' }
SGPlanet >> endTurn [
	owner actOn: self
]

{ #category : #accessing }
SGPlanet >> graphicalElement [
	^ graphicalElement
]

{ #category : #accessing }
SGPlanet >> graphicalElement: anObject [
	graphicalElement := anObject
]

{ #category : #accessing }
SGPlanet >> graphicalLabel [
	^ graphicalLabel
]

{ #category : #accessing }
SGPlanet >> graphicalLabel: anObject [
	graphicalLabel := anObject
]

{ #category : #accessing }
SGPlanet >> inhabitants [
	^ inhabitants
]

{ #category : #accessing }
SGPlanet >> inhabitants: anObject [
	inhabitants := anObject
]

{ #category : #initialization }
SGPlanet >> initialize [
	super initialize.
	inhabitants := 0.
	position := 0 @ 0.
	owner := SGNobody new
]

{ #category : #accessing }
SGPlanet >> owner [
	^ owner
]

{ #category : #accessing }
SGPlanet >> owner: anObject [
	owner := anObject
]

{ #category : #accessing }
SGPlanet >> position [
	^ position
]

{ #category : #accessing }
SGPlanet >> position: anObject [
	position := anObject
]
