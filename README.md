Go Init
=======

Initializes a new project in `$GOPATH` and optionally does other stuff you
might find helpful.

The goal is to have a tool where you can simply call

    vim $(goinit foobar)

And be coding a new Golang project with some sane defaults.

Installation
------------

Unless you plan on hacking on the project, you can just put `goinit.sh`
somewhere in your `$PATH`.

For easier updates and unistalls, it might make sense to clone the repo and 
`make` a proper install.

    git clone https://github.com/mgirouard/goinit
    cd goinit
    PREFIX=$HOME/bin make

If you tell `make` any of the configuration fiels below, it will ensure they
are added to a `.goinitrc` so you don't have to worry about passing them every
time.

Configuration
-------------

The following values are set during runtime. You can override these in a 
`$HOME/.goinitrc` file if you're into keeping dotfiles around.

* `BASE_PATH`: The place to put all your new projects. It will automatically be
  concatenated to `$GOPATH/src/`. You probably want this set to something like
  `github.com/mgirouard` so that it jives with what most of the community is
  doing.
* `GIT_INIT`: Whether or not to initialize a git repository.
* `README`: The name of the README file to be created, if any. Leave empty if
  no README is desired.

Any of these are available to be temporarily overridden if you set a temporary
environment variable.

    BASE_PATH=github.com/mgirouard goinit foobar
