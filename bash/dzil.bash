#!bash

# Generated with perl module App::Spec v0.012

_dzil() {

    COMPREPLY=()
    local program=dzil
    local cur prev words cword
    _init_completion -n : || return
    declare -a FLAGS
    declare -a OPTIONS
    declare -a MYWORDS

    local INDEX=`expr $cword - 1`
    MYWORDS=("${words[@]:1:$cword}")

    FLAGS=('--verbose' 'log additional output' '-v' 'log additional output' '--help' 'Show command help' '-h' 'Show command help')
    OPTIONS=('--verbose-plugin' 'log additional output from some plugins only' '-V' 'log additional output from some plugins only' '--lib-inc' 'additional @INC dirs' '-I' 'additional @INC dirs')
    __dzil_handle_options_flags

    case $INDEX in

    0)
        __comp_current_options || return
        __dzil_dynamic_comp 'commands' 'add'$'\t''add modules to an existing dist'$'\n''authordeps'$'\t''list your distributions author dependencies'$'\n''build'$'\t''build your dist'$'\n''clean'$'\t''clean up after build, test, or install'$'\n''commands'$'\t''list the applications commands'$'\n''help'$'\t''Show command help'$'\n''install'$'\t''install your dist'$'\n''listdeps'$'\t''print your distributions prerequisites'$'\n''new'$'\t''mint a new dist'$'\n''nop'$'\t''do nothing: initialize dzil, then exit'$'\n''release'$'\t''release your dist'$'\n''run'$'\t''run stuff in a dir where your dist is built'$'\n''setup'$'\t''set up a basic global config file'$'\n''smoke'$'\t''smoke your dist'$'\n''test'$'\t''test your dist'

    ;;
    *)
    # subcmds
    case ${MYWORDS[0]} in
      add)
        OPTIONS+=('--profile' 'name of the profile to use' '-p' 'name of the profile to use' '--provider' 'name of the profile provider to use' '-P' 'name of the profile provider to use')
        __dzil_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --verbose-plugin|-V)
          ;;
          --lib-inc|-I)
          ;;
          --profile|-p)
          ;;
          --provider|-P)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      authordeps)
        FLAGS+=('--missing' 'list only the missing dependencies' '--versions' 'include required version numbers in listing')
        OPTIONS+=('--root' 'the root of the dist; defaults to .')
        __dzil_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --verbose-plugin|-V)
          ;;
          --lib-inc|-I)
          ;;
          --root)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      build)
        FLAGS+=('--trial' 'build a trial release that PAUSE will not index' '--tgz' 'build a tarball (default behavior)')
        OPTIONS+=('--in' 'the directory in which to build the distribution')
        __dzil_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --verbose-plugin|-V)
          ;;
          --lib-inc|-I)
          ;;
          --in)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      clean)
        FLAGS+=('--dry-run' 'dont actually remove anything, just show what would be done' '-n' 'dont actually remove anything, just show what would be done')
        __dzil_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --verbose-plugin|-V)
          ;;
          --lib-inc|-I)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      commands)
        __dzil_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      help)
        FLAGS+=('--all' '')
        __dzil_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __dzil_dynamic_comp 'commands' 'add'$'\n''authordeps'$'\n''build'$'\n''clean'$'\n''commands'$'\n''install'$'\n''listdeps'$'\n''new'$'\n''nop'$'\n''release'$'\n''run'$'\n''setup'$'\n''smoke'$'\n''test'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          add)
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          authordeps)
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          build)
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          clean)
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          commands)
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          install)
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          listdeps)
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          new)
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          nop)
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          release)
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          run)
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          setup)
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          smoke)
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          test)
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
      install)
        OPTIONS+=('--install-command' 'command to run to install (e.g. "cpan .")' '--keep-build-dir' 'keep the build directory even after a success' '--keep' 'keep the build directory even after a success')
        __dzil_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --verbose-plugin|-V)
          ;;
          --lib-inc|-I)
          ;;
          --install-command)
          ;;
          --keep-build-dir|--keep)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      listdeps)
        FLAGS+=('--missing' 'list only the missing dependencies' '--requires' 'list the required dependencies' '--recommends' 'list the recommended dependencies' '--suggests' 'list the suggested dependencies' '--versions' 'include required version numbers in listing' '--cpanm-versions' 'format versions for consumption by cpanm' '--json' 'list dependencies by phase, in JSON format')
        OPTIONS+=('--author' 'include author/develop dependencies' '--develop' 'include author/develop dependencies' '--omit-core' 'Omit dependencies that are shipped with the specified version of perl')
        __dzil_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --verbose-plugin|-V)
          ;;
          --lib-inc|-I)
          ;;
          --author|--develop)
          ;;
          --omit-core)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      new)
        OPTIONS+=('--profile' 'name of the profile to use' '-p' 'name of the profile to use' '--provider' 'name of the profile provider to use' '-P' 'name of the profile provider to use')
        __dzil_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --verbose-plugin|-V)
          ;;
          --lib-inc|-I)
          ;;
          --profile|-p)
          ;;
          --provider|-P)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      nop)
        __dzil_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      release)
        FLAGS+=('--trial' 'build a trial release that PAUSE will not index')
        __dzil_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --verbose-plugin|-V)
          ;;
          --lib-inc|-I)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      run)
        FLAGS+=('--build' 'do the Build actions before running the command; done by default' '--trial' 'build a trial release that PAUSE will not index')
        __dzil_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --verbose-plugin|-V)
          ;;
          --lib-inc|-I)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      setup)
        __dzil_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      smoke)
        FLAGS+=('--release' 'enables the RELEASE_TESTING env variable' '--automated' 'enables the AUTOMATED_TESTING env variable (default behavior)' '--author' 'enables the AUTHOR_TESTING env variable')
        __dzil_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --verbose-plugin|-V)
          ;;
          --lib-inc|-I)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      test)
        FLAGS+=('--release' 'enables the RELEASE_TESTING env variable' '--automated' 'enables the AUTOMATED_TESTING env variable (default behavior)' '--author' 'enables the AUTHOR_TESTING env variable' '--extended' 'enables the EXTENDED_TESTING env variable' '--all' 'enables the RELEASE_TESTING, AUTOMATED_TESTING, EXTENDED_TESTING and AUTHOR_TESTING env variables' '--test-verbose' 'enables verbose testing (TEST_VERBOSE env variable on Makefile.PL, --verbose on Build.PL')
        OPTIONS+=('--keep-build-dir' 'keep the build directory even after a success' '--keep' 'keep the build directory even after a success' '--jobs' 'number of parallel test jobs to run' '-j' 'number of parallel test jobs to run')
        __dzil_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --verbose-plugin|-V)
          ;;
          --lib-inc|-I)
          ;;
          --keep-build-dir|--keep)
          ;;
          --jobs|-j)
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

_dzil_compreply() {
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


__dzil_dynamic_comp() {
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
    _dzil_compreply ${comp[@]}
}

function __dzil_handle_options() {
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

function __dzil_handle_flags() {
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

__dzil_handle_options_flags() {
    __dzil_handle_options
    __dzil_handle_flags
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
      __dzil_dynamic_comp 'options' "$options_spec"

      return 1
    else
      return 0
    fi
}


complete -o default -F _dzil dzil

