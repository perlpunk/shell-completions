## Collection of shell completion scripts for various command line tools

Currently it contains bash and zsh completions.

* `cpanm`
* `cpan-upload`
* `dzil`
* `hypnotoad`
* `jq`
* `json_pp`
* `json_xs`
* `lwp-request`
* `morbo`
* `plackup`
* `starman`
* `tower-cli` (incomplete)
* `ysh`

The specifications for completion can be found under `specs`. They are written
in YAML and converted to shell completions with the `appspec` tool (see
https://github.com/perlpunk/App-Spec-p5 and
https://github.com/perlpunk/App-AppSpec-p5).
Instructions on how to install `appspec` and use it will follow.

## Installation

    git clone https://github.com/perlpunk/shell-completions

### Bash

Put this in your `.bashrc`:

    for i in /path/to/shell-completions/bash/*.bash; do source $i; done

### Zsh

Put this in your `.zshrc`:

    # before the compinit call
    fpath=('/path/to/shell-completions/zsh' $fpath)

Now `exec zsh`.

If you just updated an existing completion script, it's enough to source it:

    source /path/to/shell-completions/zsh/_scriptname

