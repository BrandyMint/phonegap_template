# PhoneGap + Middleman template
------

This template is for static sites and phonegap apps development.

Using haml, sass, haml_coffee_assets (.hamlc), coffeescript.

Write and test your app with Middleman in development, then build static
site and phonegap app for any mobile platform.


--

## Development

Development enviroment runs with
[Middleman](http://middlemanapp.com/getting-started/) — Sinatra-based
app that generates static websites.

`bundle install` first.

`bundle exec middleman` starts a server on `0.0.0.0:4567` (livereload
included)*.

`bundle exec middleman build` builds a static site in `www` folder
(configurable).

Install [livereload browser extensions](http://feedback.livereload.com/knowledgebase/articles/86242-how-do-i-install-and-use-the-browser-extensions-)

---

## Local data and content

Middleman uses `front matter` for accessing data stored in `yml` and
`json` files. 

`models` folder contains sample ruby models. They are unused currently, 
but feel free to use them if you need.

For example, data is stored in `data` folder in .yml files.

Access data in templates with `= data.yml_file.key...` objects, like `= data.projects.first.title`

---

## Install phonegap

`sudo npm install -g phonegap`

`sudo npm install -g ios-sim`

[PhoneGap docs](http://docs.phonegap.com/en/edge/guide_platforms_index.md.html)

---

## Run and build apps with phonegap

`phonegap run ios` runs your app in device or simulator

You can use any platform (need sdk installed).

`phonegap build ios` creates a build


--

## TODO

* Add backbone, marionette, rivets
* javascript test suite (jasmine), http://karma-runner.github.io/0.10/index.html
* move javascripts/lib to bower components
* add javascript helpers
* https://github.com/marcol/jquery-touch/ | https://github.com/aipmedia-org/kribrum/commit/6731d9db46277382ff44e2c76f0ae36a12d43682
* https://github.com/flightjs/flight

