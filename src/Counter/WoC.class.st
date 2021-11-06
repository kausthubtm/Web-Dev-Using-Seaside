Class {
	#name : #WoC,
	#superclass : #WAComponent,
	#instVars : [
		'count'
	],
	#category : #Counter
}

{ #category : #accessing }
WoC >> count [
	^ count 
]

{ #category : #accessing }
WoC >> count: anInteger [
	count := anInteger
]

{ #category : #accessing }
WoC >> decrease [
	count := count - 1
]

{ #category : #accessing }
WoC >> increase [
	count := count + 1
]

{ #category : #initialization }
WoC >> initialize [
	super initialize.
	self count: 0
]

{ #category : #rendering }
WoC >> renderContentOn: html [
	html image url: 'http://www.seaside.st/styles/logo-plain.png'.
	html heading: 'Hello-World from Kausthub Thekke Madathil ! This is me testing various stuff of seaside.'.
	
	html space.
	
	html heading
	level3 ;
	with: 'CONTENTS'.
	html unorderedList: [ 
		html listItem: 'Adding Images'.
		html listItem: 'CSS Styling'.
		html listItem: 'Simple calculation : Counter app'. 
		 ].
	
	html space.
	
	html heading
	level4 ;
	with: '1 : Adding Images'.
	html image 
		altText: 'Fed Up Baby';
		url: 'https://www.whatsappimages.in/wp-content/uploads/2020/12/Funny-Baby-Whatsapp-Dp-Hd-Pics.jpg'.
	
	html heading
	level4 ;
	with: '2 : CSS Stying'.
	html div 
	class: 'div-style';
	with: [ 
		html text: 'Styles could be easly added by creating a method called "style" and adding your CSS classes :)). Its that simple.'.
		html text: '.' ].
	
	html space.
	
	html heading
	level4 ;
	with: 'Simple calculation : Counter app'.
	html heading: count.
	html anchor
		callback: [ self increase ];
		with: '++'.
	html space.
	html anchor
		callback: [ self decrease ];
		with: '--'.
	
	html heading
	level4 ;
	with: 'Awesome links to get started'.
	html unorderedList: [ 
		html listItem: 'Adding Images'.
		html listItem: 'CSS Styling'.
		html listItem: 'Simple calculation : Counter app'. 
		 ].
]

{ #category : #hooks }
WoC >> style [
	^ '.div-style {
	background-color: DodgerBlue;
	color: White;
	margin: 40px;
	padding: 10px;
	}'
]
