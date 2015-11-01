Go Init
=======

Initializes a new project in `$GOPATH` and optionally does other stuff you
might find helpful.

Installation
------------

Unless you plan on hacking on the project, you can just put `goinit.sh`
somewhere in your `$PATH`.

Configuration
-------------

The following values are set during runtime. You can override these in a 
`$HOME/.goinitrc` file if you're into keeping dotfiles around.

* `BASE_PATH`: The place to put all your new projects. It will automatically be
  concatenated to `$GOPATH/src/`. You probaly want this set to something like
  `github.com/mgirouard` so that it jives with what most of the community is
  doing.
* `GIT_INIT`: Whether or not to initialize a git repository.
* `README`: The name of the README file to be created, if any. Leave empty if
  no README is desired.
