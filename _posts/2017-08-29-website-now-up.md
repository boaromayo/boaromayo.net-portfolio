---
layout: post
title:  "Website Now Up!"
date:   2017-08-29 09:07:22 -0700
categories: website
---

After a day and a half of trying to make this work, as of 8:53 A.M. today, I finally got the other website up! Yes!

How I figured this out was from other repos that also used Metalsmith, particularly (if the repos had them) their ```gh-pages``` branch last night.

The final content from their ```build``` directory was used to put up their site. No layouts or extra files, just what was in the ```build```. The next morning, I then looked up how to create an empty gh-pages branch:

```
git checkout --orphan gh-pages
```

which I used to overwrite the old one, and emptied out the files there without directly deleting in the repo and adding up additional commits, with this line:

```
git rm -rf .
```

That code removed the files from any future pushes, but did not delete the files themselves.

I also used the code below in my second attempt to create the empty branch, but I won't try this one again, since it yielded plenty of errors when I tried to switch my main directory's branch back to ```master```:

```
git rm --cached -r .
```

After a few more attempts and a lot of help online (which was helpful, but not by much), I made a placeholder directory away from the main, and moved all my work there. I then switched the assigned branch of the main directory back to ```master```, which passed, and put everything back.

I used the new directory to hold the content for the final build of the website (though I would have used ```git init``` inside my ```build``` directory from main, that still caused errors that wouldn't have allowed me to push any new commits), and after a small struggle with the git terminal trying to push into the repo's empty ```gh-pages``` branch, I got the site up and running!

Here's the website: [http://quswan.net](http://quswan.net).

It's pretty bare bones, but I'll add a nav bar and hook up the links together soon. So far, it's been both a fun and frustrating experience getting this second website together.
