Class {
	#name : #SGPlayer,
	#superclass : #Object,
	#instVars : [
		'color',
		'map'
	],
	#category : #StrategyGame
}

{ #category : #'public interface' }
SGPlayer >> actOn: aPlanet [
	aPlanet inhabitants: (aPlanet inhabitants + 4)
]

{ #category : #accessing }
SGPlayer >> color [
	^ color
]

{ #category : #accessing }
SGPlayer >> color: anObject [
	color := anObject
]

{ #category : #initialization }
SGPlayer >> initialize [
	super initialize.
	color := Color gray
]

{ #category : #initialization }
SGPlayer >> initializePlanet: aPlanetElement [
	"Do nothing per default"
]

{ #category : #accessing }
SGPlayer >> map [
	^ map
]

{ #category : #accessing }
SGPlayer >> map: anObject [
	map := anObject
]

{ #category : #'as yet unclassified' }
SGPlayer >> ownPlanets [
	^ map planets select: [ :p | p owner == self ]
]

{ #category : #initialization }
SGPlayer >> setUp [
	"do nothing"
]
