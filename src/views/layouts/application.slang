doctype html
html
  head
    title Amber Application using Amber
    meta charset="utf-8"
    meta http-equiv="X-UA-Compatible" content="IE=edge"
    meta name="viewport" content="width=device-width, initial-scale=1"
    link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    link rel="stylesheet" href="/css/main.css"
    link rel="apple-touch-icon" href="/favicon.png"
    link rel="icon" href="/favicon.png"
    link rel="icon" type="image/x-icon" href="/favicon.ico"

  body
    nav.navbar.navbar-expand.navbar-dark.bg-primary.mb-3
      .container
        a.navbar-brand href="/"
          img src="/img/logo.svg" height="30" alt="Amber logo"
        ul.navbar-nav.mr-auto
          == render(partial: "layouts/_nav.slang")
        ul.navbar-nav
            == render(partial: "layouts/_session.slang")

    .container
      - flash.each do |key, value|
        div class="alert alert-#{key}" role="alert"
          = flash[key]

      .main== content

    script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 

    script type="module" src="/js/amber.js"
    - if Amber.settings.auto_reload?
      script src="/js/client_reload.js"
