# pandoc_template

This is my pandoc template writing assignments and other documents in markdown based on [this](https://jaantollander.com/post/scientific-writing-with-markdown/) blogpost.

# Usage

```console
$ # enter nix shell
$ nix-shell
or
$ nix develop

$ # convert to pdf
$ make pdf
$ # watches for changes and recompiles
$ make watch
$ # convert to docx
$ make docx
```

# Dependencies

`nix-shell` / `nix flakes`

or

`pandoc`

`entr`

`make`

# License

[MIT](https://choosealicense.com/licenses/mit/)

