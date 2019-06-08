## Collection of shell tab completion scripts for various command line tools

These scripts are automatically generated from YAML files which can be found
under `specs/`.

The format supports nested subcommands, specifying enums for possible
parameters/option values and dynamic completion calling an external
command.

The generation is done with the `appspec` tool (see
https://github.com/perlpunk/App-AppSpec-p5 for installation and usage)

Currently it supports bash and zsh completions.

## List of commands

* `cpan-upload` - upload a distribution to the CPAN
* `cpan` - easily interact with CPAN from the command line
* `cpanm` - Install CPAN modules
* `dzil` - do stuff with your dist
* `hypnotoad` - Hypnotoad HTTP and WebSocket server
* `jq` - Command-line JSON processor
* `json_pp` - JSON::PP command utility
* `json_xs` - JSON::XS commandline utility
* `lwp-request` - Simple command line user agent
* `morbo` - Morbo HTTP and WebSocket development server
* `mpath` - display the full path to a perl module (installed locally)
* `pip` - A tool for installing and managing Python packages
* `plackup` - Run PSGI application with Plack handlers
* `starman` - High-performance preforking PSGI/Plack web server
* `tower-cli` - Ansible Tower Commandline
* `ysh` - The YAML Test Shell

## Installation

    git clone https://github.com/perlpunk/shell-completions

## Usage

Look into the `spec/commandname.yaml` for specific usage instructions.

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

## See Also

* https://github.com/zsh-users/zsh-completions - Over 130 completion scripts
  for zsh
* https://github.com/complete-shell - A different approach for generating
  completions
