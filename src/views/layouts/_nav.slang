- active = context.request.path == "/" ? "active" : ""
li.nav-item class=active
  a.nav-link href="/" Home
- active = context.request.path == "/posts" ? "active" : ""
li.nav-item class=active
  a class="nav-link" href="/posts" Posts
