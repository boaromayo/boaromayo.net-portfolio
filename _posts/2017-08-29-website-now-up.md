---
layout: post
title:  "Website Now Up!"
date:   2017-08-29 09:07:22 -0700
categories: website
---

After a day and a half of trying to make this work, as of 8:53 A.M. today, I finally got the other website up! Yes!

How I managed to figure this out was from looking at other repos that also used Metalsmith as their site generator last night. From there, I looked at how they executed their gh-pages branch. This might have been a bit obvious, but how their sites worked was that they only took stuff from their ```build``` directory to put up their website. No layout files, or any additionals, just the necessary information. Once I realized this, the next morning, I looked up how to create an empty gh-pages branch:

```
git checkout --orphan gh-pages
```

which I used to overwrite the old one, and to empty out the files there without directly deleting in the repo and adding up additional commits. How I did the second task was through this line:

```
git rm -rf .
```

That code removed the files from any future pushes, but did not delete the files themselves. Note, I also used this code in my second attempt to create the empty branch, but I wouldn't try this one again, since it led to plenty of errors when I tried to switch my main directory's branch back to ```master```:

```
git rm --cached -r .
```

After a few attempts and a lot of help online (which was helpful, but not by much), I made a placeholder directory away from the main directory, and moved all my work there. I then switched the assigned branch of the original directory back to ```master```, which made the git terminal work, and put everything back.

I used the new directory to hold the content for the final build of the website (though I would have used ```git init``` inside my ```build``` directory from main, but that still caused errors that wouldn't have allowed me to push any new commits I made), and after a small struggle with the git terminal trying to push into the empty ```gh-pages``` branch, I've got the site up and running!

Here's the website: [http://quswan.net](http://quswan.net)

It's pretty bare bones, but I'll add a nav bar and hook up the links together soon. So far, it's been both a fun and frustrating experience getting this second website together.

I'll probably use the ```build``` directory to push any new changes to the repo, and see how things go from there.
