#!bash

# Generated with perl module App::Spec v0.012

_pip() {

    COMPREPLY=()
    local program=pip
    local cur prev words cword
    _init_completion -n : || return
    declare -a FLAGS
    declare -a OPTIONS
    declare -a MYWORDS

    local INDEX=`expr $cword - 1`
    MYWORDS=("${words[@]:1:$cword}")

    FLAGS=('--verbose' 'Give more output' '-v' 'Give more output' '--version' 'Show version and exit' '-V' 'Show version and exit' '--quiet' 'Give less output' '-q' 'Give less output' '--isolated' 'Run pip in an isolated mode' '--no-cache-dir' 'Disable the cache' '--disable-pip-version-check' 'Don'"\\'"'t periodically check PyPI...' '--help' 'Show command help' '-h' 'Show command help')
    OPTIONS=('--log-file' 'Path to a verbose non-appending log...' '--log' 'Path to a verbose appending log' '--proxy' 'Specify a proxy' '--timeout' 'Set the socket timeout' '--cert' 'Path to alternate CA bundle' '--retries' 'Maximum number of retries' '--trusted-host' 'Mark this host as trusted' '--client-cert' 'Path to SSL client certificate' '--cache-dir' 'Store the cache data in <dir>' '--exists-action' 'Default action when a path already exists')
    __pip_handle_options_flags

    case $INDEX in

    0)
        __comp_current_options || return
        __pip_dynamic_comp 'commands' 'freeze'$'\t''Output installed packages in requirements format'$'\n''help'$'\t''Show command help'$'\n''install'$'\t''Install packages'$'\n''list'$'\t''List installed packages'$'\n''search'$'\t''Search PyPI for packages'$'\n''show'$'\t''Show information about installed packages'$'\n''uninstall'$'\t''Uninstall packages'$'\n''wheel'$'\t''Build wheels from your requirements'

    ;;
    *)
    # subcmds
    case ${MYWORDS[0]} in
      freeze)
        FLAGS+=('--local' 'If in a virtualenv that has global access, do not output globally-installed packages' '-l' 'If in a virtualenv that has global access, do not output globally-installed packages' '--user' 'Only output packages installed in user-site' '--all' 'Do not skip pip, setuptools, distribute, wheel')
        OPTIONS+=('--requirement' 'from the given requirements file' '-r' 'from the given requirements file' '--find-links' 'If a url or path to an html file, then parse for links...' '-f' 'If a url or path to an html file, then parse for links...')
        __pip_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --log-file)
          ;;
          --log)
          ;;
          --proxy)
          ;;
          --timeout)
          ;;
          --cert)
          ;;
          --retries)
          ;;
          --trusted-host)
          ;;
          --client-cert)
          ;;
          --cache-dir)
          ;;
          --exists-action)
            _pip_compreply "s" "i" "w" "b" "a"
            return
          ;;
          --requirement|-r)
          ;;
          --find-links|-f)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      help)
        FLAGS+=('--all' '')
        __pip_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __pip_dynamic_comp 'commands' 'freeze'$'\n''install'$'\n''list'$'\n''search'$'\n''show'$'\n''uninstall'$'\n''wheel'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          freeze)
            __pip_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          install)
            __pip_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          list)
            __pip_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          search)
            __pip_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          show)
            __pip_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          uninstall)
            __pip_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          wheel)
            __pip_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
      install)
        FLAGS+=('--ignore-requires-python' 'Ignore the Requires-Python information' '--no-deps' 'Don'"\\'"'t install package dependencies' '--pre' 'Include pre-release and development versions' '--no-clean' 'Don'"\\'"'t clean up build directories' '--require-hashes' 'Require a hash to check each requirement...' '--upgrade' 'Upgrade all specified packages to the newest...' '-U' 'Upgrade all specified packages to the newest...' '--force-reinstall' 'When upgrading, reinstall all packages..' '--ignore-installed' 'Ignore the installed packages' '-I' 'Ignore the installed packages' '--user' 'Install to the Python user install directory' '--system' 'Install using the system scheme' '--egg' 'Install packages as eggs, not '"\\'"'flat'"\\'"'' '--compile' 'Compile py files to pyc' '--no-compile' 'Do not compile py files to pyc' '--no-use-wheel' 'Do not Find and prefer wheel archives...' '--no-index' 'Ignore package index' '--process-dependency-links' 'Enable the processing of dependency links')
        OPTIONS+=('--requirement' 'from the given requirements file' '-r' 'from the given requirements file' '--find-links' 'If a url or path to an html file, then parse for links...' '-f' 'If a url or path to an html file, then parse for links...' '--no-binary' 'Do not use binary packages' '--only-binary' 'Do not use source packages' '--constraint' 'Constrain versions using the given constraints file' '-c' 'Constrain versions using the given constraints file' '--editable' 'Install a project in editable mode' '-e' 'Install a project in editable mode' '--src' 'Directory to check out editable projects' '--build' 'Directory to unpack packages into and build in' '-b' 'Directory to unpack packages into and build in' '--global-option' 'Extra global options to be supplied to the setup.py...' '--target' 'Install packages into <dir>' '-t' 'Install packages into <dir>' '--download' 'Download packages into <dir>' '-d' 'Download packages into <dir>' '--upgrade-strategy' 'Determines how dependency upgrading should be handled' '--install-option' 'Extra arguments to be supplied to the setup.py...' '--root' 'Install everything relative to this...' '--prefix' 'Installation prefix...' '--index-url' 'Base URL of Python Package Index' '-i' 'Base URL of Python Package Index' '--extra-index-url' 'Extra URLs of package indexes to use')
        __pip_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --log-file)
          ;;
          --log)
          ;;
          --proxy)
          ;;
          --timeout)
          ;;
          --cert)
          ;;
          --retries)
          ;;
          --trusted-host)
          ;;
          --client-cert)
          ;;
          --cache-dir)
          ;;
          --exists-action)
            _pip_compreply "s" "i" "w" "b" "a"
            return
          ;;
          --requirement|-r)
          ;;
          --find-links|-f)
          ;;
          --no-binary)
          ;;
          --only-binary)
          ;;
          --constraint|-c)
          ;;
          --editable|-e)
          ;;
          --src)
          ;;
          --build|-b)
          ;;
          --global-option)
          ;;
          --target|-t)
          ;;
          --download|-d)
          ;;
          --upgrade-strategy)
          ;;
          --install-option)
          ;;
          --root)
          ;;
          --prefix)
          ;;
          --index-url|-i)
          ;;
          --extra-index-url)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      list)
        FLAGS+=('--outdated' '' '-o' '' '--uptodate' '' '-u' '' '--editable' '' '-e' '' '--local' '' '-l' '' '--not-required' '' '--no-index' 'Ignore package index' '--process-dependency-links' 'Enable the processing of dependency links')
        OPTIONS+=('--format' '' '--index-url' 'Base URL of Python Package Index' '-i' 'Base URL of Python Package Index' '--extra-index-url' 'Extra URLs of package indexes to use')
        __pip_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --log-file)
          ;;
          --log)
          ;;
          --proxy)
          ;;
          --timeout)
          ;;
          --cert)
          ;;
          --retries)
          ;;
          --trusted-host)
          ;;
          --client-cert)
          ;;
          --cache-dir)
          ;;
          --exists-action)
            _pip_compreply "s" "i" "w" "b" "a"
            return
          ;;
          --format)
          ;;
          --index-url|-i)
          ;;
          --extra-index-url)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      search)
        OPTIONS+=('--index' 'Base URL of Python Package Index' '-i' 'Base URL of Python Package Index')
        __pip_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --log-file)
          ;;
          --log)
          ;;
          --proxy)
          ;;
          --timeout)
          ;;
          --cert)
          ;;
          --retries)
          ;;
          --trusted-host)
          ;;
          --client-cert)
          ;;
          --cache-dir)
          ;;
          --exists-action)
            _pip_compreply "s" "i" "w" "b" "a"
            return
          ;;
          --index|-i)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      show)
        FLAGS+=('--files' 'Show the full list of installed files' '-f' 'Show the full list of installed files')
        __pip_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --log-file)
          ;;
          --log)
          ;;
          --proxy)
          ;;
          --timeout)
          ;;
          --cert)
          ;;
          --retries)
          ;;
          --trusted-host)
          ;;
          --client-cert)
          ;;
          --cache-dir)
          ;;
          --exists-action)
            _pip_compreply "s" "i" "w" "b" "a"
            return
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      uninstall)
        FLAGS+=('--yes' 'Don'"\\'"'t ask for confirmation' '-y' 'Don'"\\'"'t ask for confirmation')
        OPTIONS+=('--requirement' 'from the given requirements file' '-r' 'from the given requirements file')
        __pip_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --log-file)
          ;;
          --log)
          ;;
          --proxy)
          ;;
          --timeout)
          ;;
          --cert)
          ;;
          --retries)
          ;;
          --trusted-host)
          ;;
          --client-cert)
          ;;
          --cache-dir)
          ;;
          --exists-action)
            _pip_compreply "s" "i" "w" "b" "a"
            return
          ;;
          --requirement|-r)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      wheel)
        FLAGS+=('--no-use-wheel' '' '--ignore-requires-python' 'Ignore the Requires-Python information' '--no-deps' 'Don'"\\'"'t install package dependencies' '--pre' 'Include pre-release and development versions' '--no-clean' 'Don'"\\'"'t clean up build directories' '--require-hashes' 'Require a hash to check each requirement...')
        OPTIONS+=('--wheel-dir' '' '-w' '' '--no-binary' 'Do not use binary packages' '--only-binary' 'Do not use source packages' '--build-option' '' '--constraint' 'Constrain versions using the given constraints file' '-c' 'Constrain versions using the given constraints file' '--editable' 'Install a project in editable mode' '-e' 'Install a project in editable mode' '--requirement' 'from the given requirements file' '-r' 'from the given requirements file' '--src' 'Directory to check out editable projects' '--build' 'Directory to unpack packages into and build in' '-b' 'Directory to unpack packages into and build in' '--global-option' 'Extra global options to be supplied to the setup.py...')
        __pip_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --log-file)
          ;;
          --log)
          ;;
          --proxy)
          ;;
          --timeout)
          ;;
          --cert)
          ;;
          --retries)
          ;;
          --trusted-host)
          ;;
          --client-cert)
          ;;
          --cache-dir)
          ;;
          --exists-action)
            _pip_compreply "s" "i" "w" "b" "a"
            return
          ;;
          --wheel-dir|-w)
          ;;
          --no-binary)
          ;;
          --only-binary)
          ;;
          --build-option)
          ;;
          --constraint|-c)
          ;;
          --editable|-e)
          ;;
          --requirement|-r)
          ;;
          --src)
          ;;
          --build|-b)
          ;;
          --global-option)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
    esac

    ;;
    esac

}

_pip_compreply() {
    local prefix=""
    cur="$(printf '%q' "$cur")"
    IFS=$'\n' COMPREPLY=($(compgen -P "$prefix" -W "$*" -- "$cur"))
    __ltrim_colon_completions "$prefix$cur"

    # http://stackoverflow.com/questions/7267185/bash-autocompletion-add-description-for-possible-completions
    if [[ ${#COMPREPLY[*]} -eq 1 ]]; then # Only one completion
        COMPREPLY=( "${COMPREPLY[0]%% -- *}" ) # Remove ' -- ' and everything after
        COMPREPLY=( "${COMPREPLY[0]%%+( )}" ) # Remove trailing spaces
    fi
}


__pip_dynamic_comp() {
    local argname="$1"
    local arg="$2"
    local name desc cols desclength formatted
    local comp=()
    local max=0

    while read -r line; do
        name="$line"
        desc="$line"
        name="${name%$'\t'*}"
        if [[ "${#name}" -gt "$max" ]]; then
            max="${#name}"
        fi
    done <<< "$arg"

    while read -r line; do
        name="$line"
        desc="$line"
        name="${name%$'\t'*}"
        desc="${desc/*$'\t'}"
        if [[ -n "$desc" && "$desc" != "$name" ]]; then
            # TODO portable?
            cols=`tput cols`
            [[ -z $cols ]] && cols=80
            desclength=`expr $cols - 4 - $max`
            formatted=`printf "%-*s -- %-*s" "$max" "$name" "$desclength" "$desc"`
            comp+=("$formatted")
        else
            comp+=("'$name'")
        fi
    done <<< "$arg"
    _pip_compreply ${comp[@]}
}

function __pip_handle_options() {
    local i j
    declare -a copy
    local last="${MYWORDS[$INDEX]}"
    local max=`expr ${#MYWORDS[@]} - 1`
    for ((i=0; i<$max; i++))
    do
        local word="${MYWORDS[$i]}"
        local found=
        for ((j=0; j<${#OPTIONS[@]}; j+=2))
        do
            local option="${OPTIONS[$j]}"
            if [[ "$word" == "$option" ]]; then
                found=1
                i=`expr $i + 1`
                break
            fi
        done
        if [[ -n $found && $i -lt $max ]]; then
            INDEX=`expr $INDEX - 2`
        else
            copy+=("$word")
        fi
    done
    MYWORDS=("${copy[@]}" "$last")
}

function __pip_handle_flags() {
    local i j
    declare -a copy
    local last="${MYWORDS[$INDEX]}"
    local max=`expr ${#MYWORDS[@]} - 1`
    for ((i=0; i<$max; i++))
    do
        local word="${MYWORDS[$i]}"
        local found=
        for ((j=0; j<${#FLAGS[@]}; j+=2))
        do
            local flag="${FLAGS[$j]}"
            if [[ "$word" == "$flag" ]]; then
                found=1
                break
            fi
        done
        if [[ -n $found ]]; then
            INDEX=`expr $INDEX - 1`
        else
            copy+=("$word")
        fi
    done
    MYWORDS=("${copy[@]}" "$last")
}

__pip_handle_options_flags() {
    __pip_handle_options
    __pip_handle_flags
}

__comp_current_options() {
    local always="$1"
    if [[ -n $always || ${MYWORDS[$INDEX]} =~ ^- ]]; then

      local options_spec=''
      local j=

      for ((j=0; j<${#FLAGS[@]}; j+=2))
      do
          local name="${FLAGS[$j]}"
          local desc="${FLAGS[$j+1]}"
          options_spec+="$name"$'\t'"$desc"$'\n'
      done

      for ((j=0; j<${#OPTIONS[@]}; j+=2))
      do
          local name="${OPTIONS[$j]}"
          local desc="${OPTIONS[$j+1]}"
          options_spec+="$name"$'\t'"$desc"$'\n'
      done
      __pip_dynamic_comp 'options' "$options_spec"

      return 1
    else
      return 0
    fi
}


complete -o default -F _pip pip

