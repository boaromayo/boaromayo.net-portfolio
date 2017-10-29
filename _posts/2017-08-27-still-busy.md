---
layout:     post
title:      "Still Busy"
date:       2017-08-27 21:24:55 -0700
#categories: website
body-class: article
---

\**sigh*\* I'm still trying to put up another website online, and right now, it's now going well...

Whenever I load this site into my local host, it works. But, the problem's coming from it's remote server. For instance, when I go on to the actual website, this is what's being displayed instead of my bare-bones (for now) homepage:

<img src="http://i.imgur.com/IxIzNY3.jpg" alt="pug-page" width="75%" height="75%" />

For the record, I'm using [Metalsmith][ms], a static site generator, to build my website instead of Jekyll as a way to challenge myself here, with [Pug, or Jade][pugjs], for the site's layout, and markdown for the entries.

There still might be a way to put the actual site up to [Github-Pages servers][gh-pages] without showing that blank page. So far, thanks to the limited docs available on Metalsmith, and the limited help online, this step is going to be one steep climb.

**ETA:** I also learned something new here when writing this new post. For any external links, I should not put the link in quotes, like so:

```
[ms]: "http://metalsmith.io" // Don't do this!!!
```
```
[ms]: http://metalsmith.io // YES!
```

The lesson above sounds obvious, but I hope this might be helpful to anyone who's still learning markdown.

[ms]: http://metalsmith.io/
[pugjs]: https://pugjs.org/
[gh-pages]: https://pages.github.com/
