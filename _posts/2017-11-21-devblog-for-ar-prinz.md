---
layout: post
title: "Devblog for ar-prinz 2"
date: 2017-11-21 09-0800
#categories: rpg-maker rpg-maker-mv rpg-maker-vxace game-dev
---

Last night, I managed to make major headway into the bestiary that I put up last month.

<img src="/assets/ap-bestiary-2017-11-16.png" alt="bestiary 1" width="370" height="316" />

Getting this to run as it looked above took plenty of refactoring and crossed fingers since I worried it might crash the game, which did happen at times. However, I wasn't expecting to get this right initially.

<img src="/assets/ap-bestiary-2017-11-20.png" alt="bestiary 2" width="370" height="316" />

Eventually, the bestiary came together, as I improved the back end code over the next few days, which originally had two lists and one counter, to which I added another array list, on the game's system.

How they worked was that the counter kept track of the monsters defeated, the first list tracked the amount of a certain monster defeated, the second checked if a certain monster was encountered, and the last stored the enemy's actual stats.

Another fix I did was taking extra vertical space off of the progress window. I considered at this point of adding a percentage on the right side of the window.

Getting the cursor up and moving on the list window was one of the harder challenges making this bestiary. Originally, I wanted the cursor to start at the first recorded entry, or the monster on the list that was first defeated instead of on the very first item of the list. But since that was a bit daunting, I started to focus on making the cursor visible. After looking through the game's code, especially where and how the cursor worked on different menu windows, I slowly got that finished. Following the template of the other menu windows, I also added a refresh method to the list window's class.

<img src="/assets/ap-bestiary-2017-11-20-2.png" alt="bestiary 3" width="370" height="316" />

After that step was done, I worked out how to use the game's command line to detect if the list window's local array had stored the defeated enemy data. Using that info as an indicator to ensure the movement of the list window's cursor, I gradually managed to push the data in to the list window's array, though nothing was displayed on-screen so far.

<img src="/assets/ap-bestiary-2017-11-20-3.png" alt="bestiary 4" width="370" height="316" />

One other part I almost missed was the use of the refresh method in the list window, where I had it call a method to draw up all the entries from the local array into the list window. I also used a placeholder for the enemy names since the game would crash if I tried to fetch the enemy's names from the list window's array directly.

From there, I also made the grayed-out entries inaccessible. For the entries recorded, I had them cancel back to the main menu since I didn't have the enemy status windows up.

<img src="/assets/ap-bestiary-2017-11-20-4.png" alt="bestiary 5" width="370" height="316" />

To see if the bestiary was working properly, I added more test monsters.

<img src="/assets/ap-bestiary-2017-11-20-5.png" alt="bestiary 6" width="370" height="316" />

After moving the enemy data loading process from the scene to the list window itself, I renamed the placeholders with a filler text in place of the unknown text. One final update was using one of the arrays I added in the core system to determine if the monster was encountered by the player or not. If the monster was encountered but not defeated, that name shows up, but grayed out.

There's still plenty of work left before this bestiary can be called complete. I'll probably let go of additional updates on this for now and continue finishing up the interior maps for the first town soon.