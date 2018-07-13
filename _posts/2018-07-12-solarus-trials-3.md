---
layout: post
title:  "Solarus Trials, Part 3"
date: 2018-07-12 09-0800
#categories: solarus game-dev
body-class: article
---

After fixing up the dialogue box and decision system (which still took me awhile to figure out), I also added in a decision box, or a yes-no box, out of curiosity, and to test out the decision system.

<img src="https://i.imgur.com/znqOdSm.png" alt="decision box" title="Curiosity" width="320" height="240" />

From there, I started to focus on putting up a basic heads-up display system. Looking at other games for reference again, I looked through the code for their HUD system. I found out that the heads-up display was assembled separately in different files, with each piece created as a "menu", or a component, instead of being created as one whole. Next, in the file that generates the HUD, a loop is used to include each "menu" (the hearts from the game I referenced count as one "menu", the magic bar another, the button icons are separate "menus", and so on) into the final HUD "menu".

With a vague picture of the HUD that I wanted in my head, I created a small spriteset of gauges corresponding to the player's health and skill points.

The result, seen below, took me tons of testing, as I was still figuring out how the HUD system, and how the engine, mostly on how it handled sprite animations, worked. I also had to move the display around to make it noticeable. 

Initially, the gauges would not show up, since, as I later found out, that I set the origin point of the gauges' sprites sort of out of place in the sprites section.

<img src="https://i.imgur.com/FdiBr3E.png" alt="a start" title="Not-So-Well Placed, But a Good Start!" width="320" height="240" />

Next, I decided to add more stuff, including the display of the player's current health points. This involved expanding the drawing surface of the gauges to include them.

<img src="https://i.imgur.com/xyOKRbC.png" alt="health displays" title="Health Display Yay!" width="320" height="240" />

Then, I added the technique points to make the HUD look complete for now.

Over the next several days, I decided to make more changes to the dialogue's font, adding in a gradient to make the colors match the window (and as a little reference to *Soul Blazer*!). I had to convert the font from a vector to a bitmap font in order to add the gradient effect there. Managing to make that happen took a lot of time in GIMP to get right, especially with how Solarus parses bitmap fonts. 

<img src="https://i.imgur.com/69s5fCS.png" alt="gradient" title="Gradient Font" width="320" height="240" />

I wasn't satisfied with how the spacing between the letters turned out, so I fixed the spacing, taking several attempts...

<img src="https://i.imgur.com/Jw6oFQ6.png" alt="spacing fix" title="Spacing Fix" width="320" height="240" />

I was still not satisfied, but that would involve fixing the font itself again in GIMP, and I was too tired at this point.

More updates are coming soon!

**Note:** The sprites used here belong to Diarandor, under the Creative Commons license version 4.0 (CC BY-SA 4.0).

In the meantime, I've updated my [projects][projs] page to clarify what I'm currently doing now at the moment.

Here's [Part 1][pt1] and [Part 2][pt2] of my Solarus Trials.

[projs]: https://boaromayo.net/projs
[pt1]:   https://boaromayo.net/2018/06/19/solarus-trials.html
[pt2]:	 https://boaromayo.net/2018/06/21/solarus-trials-2.html