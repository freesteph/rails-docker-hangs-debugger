# Ruby + Docker template

This starter kit provides a containerized Ruby environment to get
hacking quickly without being a dirty dog.

The Dockerfile is configured to run `bundle exec ruby src/main.rb`.

## Getting started

1. Clone this repo with a different name (or use the GitHub "Use this
   template" feature):

```sh
git clone https://github.com/freesteph/ruby-docker-template.git your-fancy-hack
```

2. Hack away

```sh
emacs src/main.rb
```

3. Run things in an environement that will work for *other* people:

```sh
make up
```

See the [Makefile](./Makefile) for other ways to interact with your project.
