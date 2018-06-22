---
layout: post
title:  "Solarus Trials, Part 2"
date: 2018-06-21 09-0800
#categories: solarus game-dev
body-class: article
---

<img src="http://www.solarus-games.org/wp-content/uploads/2013/05/solarus-logo-black-on-transparent1.png" alt="solarus-games-logo" title="Solarus Is Pretty Decent" width="292.8" height="88.8" />

I started off with a prototype mini-quest as an exercise before getting into the real quest. First, I began mapping a small house with a witch as its lone resident, using most of the open source materials and tileset built-in the engine to place them. From there, I planned out the mini-quest, where the "hero" is supposed to find the witch's "item." 

Next, I added a dungeon as the house's basement. I took inspiration from [*Oracle of Ages*][ooa] and other Zelda games in planning out its structure. I first drew out the structure on a piece of paper, and filled in most of the details in my head, knowing to keep track of the rooms where the bosses are supposed to be. I also added in a secret passage!

Now that that was finished, I took a hiatus from making this mini-quest, and decided to look at other games made by Solarus and their source code for reference. My next step was to start on the dialogue system, which, surprisingly, took tons of time to put together.

The font I used for the dialogue system is [free for both commercial and non-commercial use][font], courtesy of codeman38. This font originally appeared in the English versions of the SNES games [*Soul Blazer*][sb], [*Illusion of Gaia/Time*][iog], and [*Terranigma*][terra], made by developers Quintet and Enix, and it's one of my favorite fonts so far.

After numerous test runs, this was my first effort:

<img src="https://i.imgur.com/5jkwHYt.png" alt="font out of place" width="320" height="240" />

I continued shifting the text's starting point per line and resizing the text until I managed to get something reasonable:

<img src="https://i.imgur.com/pTjMz00.png" alt="font shift" width="320" height="240" />

Knowing that the dialogue box took up half the screen, I shrunk it down, and tightened the spacing:

<img src="https://i.imgur.com/klu1BBa.png" alt="smaller dialogue box" width="320" height="240" />

And that's what I've done so far for now! Next post, I'll cover how I added in the decision box, and lastly, the HUD for the game!

**ETA**: As of 22nd of June, 2018, due to [Microsoft's acquisition of GitHub][acquisition] and because I want to experiment with different git sites, the repo where this project is stored is now on [GitLab][gl].

[ooa]: https://en.wikipedia.org/wiki/The_Legend_of_Zelda%3A_Oracle_of_Seasons_and_Oracle_of_Ages#Oracle_of_Ages
[font]: http://www.1001fonts.com/lunchtime-doubly-so-font.html
[sb]: https://www.wikipedia.org/wiki/Soul_Blazer
[iog]: https://www.wikipedia.org/wiki/Illusion_of_Gaia
[terra]: https://www.wikipedia.org/wiki/Terranigma
[acquisition]: https://news.microsoft.com/2018/06/04/microsoft-to-acquire-github-for-7-5-billion/
[gl]: https://gitlab.com/boaromayo/EoD-noncanon