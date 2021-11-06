# Web-Dev-Using-Seaside

A website built using Seaside. This is simple static website aimed to explore Seaside. <br><br/>

## Seaside Set-Up

Run this Metacello script in your playground.
- Open playground : Crtl+W+O
- Run the script : Crtl+D

```Smalltalk
 Metacello new
  baseline:'Seaside3';
  repository: 'github://SeasideSt/Seaside:master/repository';
  load
```
<br><br/>

## Simple Components (equivalent to HTML)

- Images : 
```Smalltalk
html image 
  altText: '....';
  url: '....'.
```

- Unordered/Ordered Lists:
```Smalltalk
html unorderedList: [ 
  html listItem: 'Item1'.
	html listItem: 'Item2'.
	html listItem: 'Item3'. 
].
```

<br><br/>

## Adding Styles (equivalent to CSS)

Example :

![Style](https://user-images.githubusercontent.com/60187935/140610678-0e4d7734-b879-4e67-9ff7-1a2444961a4c.png)

- In *renderContentOn: html* method add :
```Smalltalk
html div 
 class: 'div-style';
 with: [ 
  html text: 'Styles could be easly added by creating a method called "style" and adding your CSS classes :))'.
  html text: '.' 
 ].
```

- Create a new method called style :

```Smalltalk
  style
	 ^ '.div-style {
	 background-color: DodgerBlue;
	 color: White;
	 margin: 40px;
	 padding: 10px;
	}'
```



<br><br/>


## Simple calculations (equivalent to JS)

Example of a counter.

Counter             |  Decrement           | Increment
:-------------------------:|:-------------------------: | :-------------------------:
![zero](https://user-images.githubusercontent.com/60187935/140610786-3bee1684-317f-49e8-a25c-461c33cd95da.png)  | ![Screenshot from 2021-11-06 18-31-17](https://user-images.githubusercontent.com/60187935/140610828-7a8e3ff7-3e20-498e-98cc-b5d9af6be03a.png) | ![Screenshot from 2021-11-06 18-31-12](https://user-images.githubusercontent.com/60187935/140610861-16f9e2ca-54b3-41fd-8f7a-ab195abdd992.png)

- Add an initialize method :
```Smalltalk
initialize
  super initialize.
  count := 0
```
- Add logic to render method:
```Smalltalk
html anchor
 callback: [ count := count + 1 ];
 with: '++'.
html space.
html anchor
 callback: [ count := count - 1 ];
 with: '--'.
```
You could also split the above into multiple method like my implementation.


