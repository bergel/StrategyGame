Class {
	#name : #SGMap,
	#superclass : #Object,
	#instVars : [
		'players',
		'planets',
		'labels'
	],
	#category : #StrategyGame
}

{ #category : #adding }
SGMap >> addPlanet: aPlanet [
	planets add: aPlanet
]

{ #category : #adding }
SGMap >> addPlayer: aPlayer [
	players add: aPlayer.
	aPlayer map: self
]

{ #category : #'as yet unclassified' }
SGMap >> endTurn [
	planets do: #endTurn.
	labels do: [ :l | l updateShape ].
]

{ #category : #initialization }
SGMap >> initialize [
	super initialize.
	planets := OrderedCollection new.
	players := OrderedCollection new.
	labels := OrderedCollection new
]

{ #category : #'as yet unclassified' }
SGMap >> open [
	<script: 'self new scenario1; open'>
	| v planetElements |
	v := RTView new.
	planetElements := RTEllipse new
						size: [ :p | p inhabitants * 5 ];
						color: #color;
						elementsOn: planets.
	v addAll: planetElements.
	labels := RTLabel new color: Color black; text: #inhabitants; elementsOn: planets.
	v addAll: labels.
	planetElements with: labels do: [ :p :l | 
		p model graphicalElement: p; graphicalLabel: l.
		p translateTo: p model position. 
		l translateTo: p model position ].
	v addMenu: 'End turn' callback: [ self endTurn. v signalUpdate ].
	self players do: #setUp.
	^ v open
]

{ #category : #accessing }
SGMap >> planets [
	^ planets
]

{ #category : #accessing }
SGMap >> players [
	^ players
]

{ #category : #'as yet unclassified' }
SGMap >> scenario1 [
	"
	self new scenario1
	"
	| player1 player2 home1 home2 p1 p2 |
	player1 := SGPlayer new color: Color purple.
	player2 := SGHuman new color: Color green.
	home1 := SGPlanet new inhabitants: 10; position: -100 @ 0; owner: player1.
	home2 := SGPlanet new inhabitants: 10; position: 100 @ 0; owner: player2.
	p1 := SGPlanet new inhabitants: 5; position: 0 @ -40.
	p2 := SGPlanet new inhabitants: 5; position: 0 @ 40.
	self addPlayer: player1; addPlayer: player2.
	self addPlanet: home1; addPlanet: home2; addPlanet: p1; addPlanet: p2.
	
]
