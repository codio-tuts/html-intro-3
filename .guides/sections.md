---
title: A PRETTY SITE
files: []
editable: false
layout: 2-panels-tree

---
#'Forking' this module
If you check the url address bar of your browser, if it starts with `https://codio.com/anon/....` then this means it is an anonymous project and any changes you make will be lost when you close down the browser tab. This will be the case if you access the module from the Codio Courses screen.

To avoid losing changes, you can 'fork' the module into your own Codio account where it will appear in your projects list. To do this, select the **'Project->Fork'** menu item and choose a suitable name for the project.

#A few words about the Codio Guide
Before we start with this module here are a few pointers about using this Codio Guide.

If you've already read this in another Guide then skip to the next section.

![](.guides/img/guides-helper.jpg)

#The File Tree
The left most panel is the File Tree **(1)**. This is where your project's files are stored. You can open up files you see listed there by clicking on them.

#About the Codio Guide
The Codio Guide **(2)** is the content you are reading right now. It's worth knowing the following

- if you ever close the Guide tab by mistake, simply open in from the View menu **(3)**.
- you can expand and collapse the Guide's Table of Contents **(4)** with the Hamburger icon **(5)**
- you move from one section of the Guide to the next using either the Table of Contents or the Navigation Buttons (6)

#The Rocket Menu
The Rocket menu **(7)** is a dropdown menu that lets you load code into your file tree when you click it as different sections might want to show different bits of code.

You are usually encouraged to mess around with the live code. It is perfectly likely that you can wreck the code so pressing the Rocket menu button will restore the code again to its original state.

#Previewing
The Preview button **(8)** lets you run your web application. When you press it, it will open up a preview window so you can play with your app.

#Code Tabs
When you open some code from the file tree or the Codio Guide opens a file for you automatically, they will appear within a tab **(9)** in one of the panels. You can have several of these open at one time so you may need to click on the respective tab to get to see the file you want.


---
title: A Pretty Site
files: []
editable: true
layout: 2-panels-tree

---
This module builds on the materials we learnt in the 'My First Web Page' and 'More Advanced Layouts' modules.

This is less of a teaching module and more a case of looking a pre-built site and seeing how it was built.

![](.guides/img/site-ss.jpg)

There are many different ways that this site could have been built and this example is one approach.
---
title: Overview of the site
files: []
editable: true
layout: ""

---
The site consists of 3 pages

- Jazz : this is the main `index.html` page
- Classical : this is `classical.html` and the header section is built to completion but the tiles underneath have the same tiles as the Jazz page, so feel free to put in classical tiles
- Rock : this page has not actually been built yet and is one you can add yourself by adding a `rock.html` page
---
title: HTML Files
files: []
editable: true
layout: ""

---
We are using one file for each of the 3 pages. `index.html` and `classical.html` are already there and you can feel free to add a `rock.html` files and build the missing page.

---
title: CSS Files
files:
  - path: index.html
    panel: 0
    ref: ""
    lineCount: 0
editable: true
layout: ""

---
You will see that there is a folder called `css` in your filetree. For this project we decided to use more than one CSS file. We could have slapped everything into `main.css` but this makes for a large file that is tedious to scroll through.

We opted to do the following for this project :

- `main.css` should contain styling that is common to all pages
- `jazz.css` contains styling specific just to the Jazz page (the tiles)
- `classical.css` contains styling for the Classical tiles
- `rock.css` well, this doesn't exist yet but you can go ahead and create it and link it into your new `rock.html` page.rock

##Linking the CSS pages
If you look at the top of `index.html` (you'll see the same sort of thing in `clasical.html`) you can see how we manage the linking of each CSS stylesheet

```
<head>
  <title>Music for everyone</title>
  <link rel="stylesheet" type="text/css" href="/css/main.css"> 
  <link rel="stylesheet" type="text/css" href="/css/jazz.css">   
</head>
```
---
title: The Video
files: []
editable: false
layout: ""

---
Setting up the video is actually really easy. We have used an mp4 video file that lives on a Codio server. You have better control over these compared to YouTube. 

If you [check this article out](https://developer.mozilla.org/en/docs/Web/HTML/Element/video) you can see how you can add player controls and many more things. 

If you wanted to use YouTube, then you can get HTML 'embed' code that you can paste into your HTML instead.

```
<video src="https://codio.com/img/videos/jazz.mp4" loop autoplay>
```

---
title: The Menu
files:
  - path: css/main.css
    panel: 0
    ref: ""
    lineCount: 0
editable: false
layout: ""

---
We have created a nice and simple menu using <li> elements with some clever styling.

This is the HTML

```
<nav>
  <ul>
    <li id='jazz'><a href="index.html">Jazz</a></li>
    <li id='classical'><a href="classical.html">Classical</a></li>
    <li id='rock'><a href="index.html">Rock</a></li>
    <li id='tonight'><a href="index.html">Tonight</a></li>
  </ul>
</nav>
```

The <ul> and <li> elements are often used for things like bullet point lists, but we have used CSS to completely change the way that it is displayed.

This is probably the most complicated thing in this page but it is worth understanding. If you can master this, you are well on the way to becoming a CSS expert.

```
ul {
  display: inline-block;
  vertical-align: middle;
  list-style-type: none;
  margin-top: 8px;
 
}
```

This tells the entire list to behave as an inline block and to be vertically aligned in the middle with respect to its parent container (the <nav> block).

`list-style-type: none` means that bullet points (the default) are suppressed. 

```
li {
  display: inline-block;
  background-color: #ffffff;
  color: #888888;
  margin-left: -12px;
  border-width: 1px;
  border-color: rgb(160, 160, 160);
  border-style: solid;
  font-size: 18px;
}
```

`display: inline-block` is the key property here. It tells the browser to render the list inline (side by side). Go ahead and remove the line to see what happens.

The other lines are more obvious styling instructions. Notice how we are giving a light grey border to each list element. Experiment with the margin settings as well so see why these are required.

```
li a, li a:visited {
  display: block;
  padding: 10px 80px 10px 0px;
  width:100%;
  height:100%; 
  text-decoration: none;
  color: #888888;
}
```

This is perhaps the toughest part to explain. `li a` addresses how to style the <a> tag within an <li> element. This means how the link itself should appear. The `li a:visited` selector styles links that have already been clicked on/visited (we don't want them to appear in the default blue). `text-decoration: none` means that links and visited links should not be underlined (which is the default behavior for links).

Now the challenging bit is to explain why we are using `display: block` and `width:100%` and `height:100%`. The reason for this is that we do not want only the text to be a link that changes the mouse cursor when you hover over it, but we want the entire area around it to be clickable as well.

`display: block` tells the browser to treat it as a block element rather than an inline element. Setting the width and height to 100% sets the element to be the full size of its parent container (the <li> element). We have to fiddle around with the padding in order to get it to appear just right.

It is important you play with these value and preview in order to see just what effect each property has on the output, so go play!

```
#jazz {
  border-top-left-radius: 3px;
  border-bottom-left-radius: 3px;
}

#tonight {
  border-top-right-radius: 3px;  
  border-bottom-right-radius: 3px; 
  background-color: #ff5a5f;
  border-width: 1px;
  border-color: rgb(160, 160, 160);  
  color: #fff;
}
```

If you look at the Jazz and Tonight menu items, you can see that they actually require slightly special styling. We want to round only 2 of the corners to give the overall menu a nice appearance.

```
#tonight a, #tonight a:visited {
  color: #fff;  
} 
```

Text has a different styling when a) displayed b) linked and c) linked and the user has visited that link before. 

Even thought we styled the Tonight menu with `color: #fff;` (white), the menu item has a link on it and so the `li a` and `li a:visited` selectors override things, meaning it will get the same light gray color.

We need this text to be white, to we have to specifically set the `li a` and `li a:visited` properties .

---
title: Title text above the tiles
files: []
editable: false
layout: ""

---
The styling of these is pretty self explanatory.

```
.top-title {
  color: #7a7a7a;
  font-size: 40px;
  font-weight: bold;
  margin: 5px 0 0 5px;  
}

.top-subtitle {
  color: #7f7f7f;
  font-size: 14px;
  margin: 5px 0 25px 0;  
}
```

One thing that is worth expanding on is the way that we get this text to center properly. The way we have done this is to tell the parent container <content> that all text within it should be centered.

```
#content {
  width: 950px;
  margin: auto;
  text-align: center;
}
```

One thing to note about `text-align: center` is that because styles *cascade* to child elements, all the text in the musician tiles would also be centered. We will deal with this by specifically setting the alignment back to left for these tiles, as we discuss in the next section.

Note that the `margin: auto` property tells the browser that the <content> container (which we have set to be 950px wide) should be centered with respect to its parent (which is the page).
---
title: Musician Tiles
files: []
editable: false
layout: ""

---
The individual tiles are actually styled within their respective css files (`jazz.css` etc.) but there are things that are common to each and every tile on all pages. 

For example, the musician name and the subtext is the same. So rather than duplicate this in all individual css files, we put the styling for these in `main.css`. It's much neater that way.

```
.desc-hdr {
  text-transform: uppercase;
  font-size: 24px;
  text-align: left;
  margin-top: 10px;
}

.desc-text {
  text-transform: uppercase;
  line-height: 1.2em;
  margin-top: -15px;
  text-align: left;
}
```

Our HTML contains class references to the above selectors

```
<div id='r1c1' class='tile'>
	<a href="http://en.wikipedia.org/wiki/Thelonious_Monk" target='_blank'>
		<h1 class='desc-hdr'>Thelonius Monk</h1>
		<p class='desc-text'>Jazz pianist and composer</p>
	</a>
</div>
```

You can see how the <h1> and <p> tags have these class references in them.

The actual styling is pretty self-explanatory. Note how the `text-transform: uppercase` converts the original text into upper case for us.

##Tile Rows
We also can centrally style some of the block level properties of our tiles. 

```
.tile-row {
  margin-bottom: 23px;
}

.tile {
  display: inline-block;
  vertical-align: top;  
  padding: 10px;   
}
```

The interesting property here is `display: inline-block`. This forces the tiles to display inline (side by side) rather than underneath one another. Don't forget that any block that is too wide to fit into its parent container *will* get wrapped.

```
div.tile a {
  display: block;
  width:100%;
  height:100%;
  color: #fff;
  text-decoration:none;
}
```

The above styling is also very interesting. It is doing the exact same thing as we did with the menu items. We don't want only the text to be clickable, we want the *entire parent container* (the <div>) to be clickable.

It is the combination of `display: block`, `width:100%` and `height: 100%` that does this. It tells the browser to treat the <a> tag (from `div.tile a`) like a block. Setting the width and height to 100% means the block will fill the parent (the <div>).
---
title: Individual Tiles
files:
  - path: css/jazz.css
    panel: 0
    ref: ""
    lineCount: 0
editable: true
layout: 2-panels-tree

---
Finally, we have styled each individual tile so each one can have a unique size and appearance.

Note that we have a separate CSS file for each music genre in the css folder in our filetree.

The HTML and CSS look like this

```
<div id='r2c2' class='tile'>
  <a href="http://en.wikipedia.org/wiki/Dave_Brubeck" target='_blank'>        
    <h1 class='desc-hdr'>Dave Brubeck</h1>
    <p class='desc-text'>Pianist and composer</p>
  </a>
</div>
```

```
#r2c2 {
  margin-left:16px;
  width: 280px;
  height: 300px;
  background-image: url('/img/dave.jpg');
  background-size: cover;
}
```

Because each tile we want to style uniquely, we use an id, so `id='r2c2'`.

The styling options are self-explanatory by now. Remember that the <h1> and <p> tags are styled in `main.css` as these are common to all tiles on all pages.

---
title: Summing Up
files: []
editable: false
layout: ""

---
A usual, the name of the game is experimentation. You should mess around with code freely. If you mess things up, select 'Restore' from the ![](.guides/img/rocket.png) Rocket menu at the top.

You should now be in a position to create strong page layouts. More importantly, you should be at the stage where you are able to use Google to add to your knowledge. This is the way that all developers, including the most battle hardened pros, do things.

It's now time to find out about Javascript in the next course!