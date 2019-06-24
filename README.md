## Collection of shell tab completion scripts for various command line tools

These scripts are automatically generated from YAML files which can be found
under `specs/`.

The format supports nested subcommands, specifying enums for possible
parameters/option values and dynamic completion calling an external
command.

The generation is done with the `appspec` tool (see "Developing" below).

Currently it supports bash and zsh completions.

## List of commands

* `cpan-upload` - upload a distribution to the CPAN
* `cpan` - easily interact with CPAN from the command line
* `cpanm` - Install CPAN modules
* `dancer2` - Dancer2 command line interface
* `dzil` - do stuff with your dist
* `fatpack` - Pack perl script and modules into standalone script
* `hypnotoad` - Hypnotoad HTTP and WebSocket server
* `jq` - Command-line JSON processor
* `json_pp` - JSON::PP command utility
* `json_xs` - JSON::XS commandline utility
* `lwp-request` - Simple command line user agent
* `mojo` - The Mojolicious command system
* `morbo` - Morbo HTTP and WebSocket development server
* `mpath` - display the full path to a perl module (installed locally)
* `pip` - A tool for installing and managing Python packages
* `plackup` - Run PSGI application with Plack handlers
* `prove` - Run tests through a TAP harness
* `starman` - High-performance preforking PSGI/Plack web server
* `tower-cli` - Ansible Tower Commandline
* `ysh` - The YAML Test Shell
* `zild` - Dist::Zilla Mixed Up

## Installation

    git clone https://github.com/perlpunk/shell-completions

## Usage

Look into the `specs/commandname.yaml` for specific usage instructions.

### Bash

For a specific script, just source it:

    $ source /path/to/shell-completions/bash/commandname.bash

Put this in your `.bashrc` for using all completions:

    for i in /path/to/shell-completions/bash/*.bash; do source $i; done

#### Using only one `<TAB>` keypress like in zsh

You can enable this by putting the following in your `~/.inputrc`:

    set show-all-if-ambiguous on

See [GNU Readline Init File Syntax](https://www.gnu.org/software/bash/manual/html_node/Readline-Init-File-Syntax.html).

### Zsh

For activating the completions, you can do:

    % fpath=(/path/to/shell-completions/zsh $fpath)
    % compinit

To just try out completion for one specific script, you can also do:

    % source /path/to/shell-completions/zsh/_commandname
    % compdef _commandname commandname

Put this in your `.zshrc` for activating all completions:

    # before the compinit call
    fpath=('/path/to/shell-completions/zsh' $fpath)

This way zsh won't load all functions at startup, but the completions will get
autoloaded dynamically when the command is first used.

When developing a new completion, after a change it's enough to source it,
without calling `compinit` again:

    % source /path/to/shell-completions/zsh/_commandname

## Developing

The `appspec` tool is used to generate the completions. You don't need it
if you just want to use the completions.

If you want to modify or add a new completion, install the `App::AppSpec`
perl module, or use the standalone script:

    % git clone https://github.com/perlpunk/App-AppSpec-p5 -b standalone appspec
    % PATH=$PWD/appspec/bin:$PATH

For more details see https://github.com/perlpunk/App-AppSpec-p5.

Create a new specification `specs/commandname.yaml` and type:

    make commandname

## See Also

* https://github.com/zsh-users/zsh-completions - Over 130 completion scripts
  for zsh
* https://github.com/unixorn/awesome-zsh-plugins - A collection of ZSH
  frameworks, plugins & themes
* https://github.com/complete-shell - A different approach for generating
  and installing completions for bash
