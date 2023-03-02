# nix_doc_template

This is my pandoc template writing assignments and other documents in markdown
based on
[this](https://jaantollander.com/post/scientific-writing-with-markdown/)
blogpost.

# Usage

```console
# build doc
nix build

# or enter a shell and build using Makefile

# enter nix shell
nix-shell
# or
nix develop

# build doc
make
# watch for changes and recompile
make watch
```

# Dependencies

`nix-shell` / `nix flakes`

or

`pandoc`

`entr`

`make`

# License

[MIT](https://choosealicense.com/licenses/mit/)

