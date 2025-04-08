# Rails + Docker + ruby/debug bug

This repo helps reproduce a bug I'm encountering with Dockerized Rails
applications and the `debug` gem.

The Rails application is generated with `rails new --minimal
--no-docker`. The only configuration is the:

```ruby
require "debug/open_nonstop"
```

in `config/environments/development.rb`.

A `HomeController` is then generated with `rails new controller homeindex`,
with a `debugger` breakpoint in it.

## Reproducing

### 1. Build the app

```sh
make build
```

### 2. Launch the app

```sh
make up
```


### 3. Hit the server page

Browse at http://localhost:3000 . Then go into the
`app/controllers/home_controller.rb` and uncomment the `debugger`
line. Refresh the page and notice the debugger is waiting.

### 4. Connect to the debug process

```sh
make debug
```

### 5. Explore the current context

Notice the first command doesn't output properly (have to eval again
to get the right value).

### 6. Leave


With Ctrl+C.


### 7. Server is blocked

The debug prompt doesn't return. The server process shows
"Disconnected" but cannot resume the request (i.e page refresh don't
work).
