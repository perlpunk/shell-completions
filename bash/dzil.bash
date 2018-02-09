#!bash

# http://stackoverflow.com/questions/7267185/bash-autocompletion-add-description-for-possible-completions

_dzil() {

    COMPREPLY=()
    local program=dzil
    local cur=${COMP_WORDS[$COMP_CWORD]}
#    echo "COMP_CWORD:$COMP_CWORD cur:$cur" >>/tmp/comp
    declare -a FLAGS
    declare -a OPTIONS
    declare -a MYWORDS

    local INDEX=`expr $COMP_CWORD - 1`
    MYWORDS=("${COMP_WORDS[@]:1:$COMP_CWORD}")

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
      _meta)
        FLAGS+=()
        OPTIONS+=()
        __dzil_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __dzil_dynamic_comp 'commands' 'completion'$'\t''Shell completion functions'$'\n''pod'$'\t''Pod documentation'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          completion)
            FLAGS+=()
            OPTIONS+=()
            __dzil_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __dzil_dynamic_comp 'commands' 'generate'$'\t''Generate self completion'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              generate)
                FLAGS+=('--zsh' 'for zsh' '--bash' 'for bash')
                OPTIONS+=('--name' 'name of the program (optional, override name in spec)')
                __dzil_handle_options_flags
                  case $INDEX in
                  *)
                    __comp_current_options true || return # after parameters
                    case ${MYWORDS[$INDEX-1]} in
                      --verbose-plugin|-V)
                      ;;
                      --lib-inc|-I)
                      ;;
                      --name)
                      ;;

                    esac
                    ;;
                esac
              ;;
            esac

            ;;
            esac
          ;;
          pod)
            FLAGS+=()
            OPTIONS+=()
            __dzil_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __dzil_dynamic_comp 'commands' 'generate'$'\t''Generate self pod'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              generate)
                FLAGS+=()
                OPTIONS+=()
                __dzil_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
            esac

            ;;
            esac
          ;;
        esac

        ;;
        esac
      ;;
      add)
        FLAGS+=()
        OPTIONS+=('--profile' 'name of the profile to use' '-p' 'name of the profile to use' '--provider' 'name of the profile provider to use' '-P' 'name of the profile provider to use')
        __dzil_handle_options_flags
          case $INDEX in
          *)
            __comp_current_options true || return # after parameters
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
            ;;
        esac
      ;;
      authordeps)
        FLAGS+=('--missing' 'list only the missing dependencies' '--versions' 'include required version numbers in listing')
        OPTIONS+=('--root' 'the root of the dist; defaults to .')
        __dzil_handle_options_flags
          case $INDEX in
          *)
            __comp_current_options true || return # after parameters
            case ${MYWORDS[$INDEX-1]} in
              --verbose-plugin|-V)
              ;;
              --lib-inc|-I)
              ;;
              --root)
              ;;

            esac
            ;;
        esac
      ;;
      build)
        FLAGS+=('--trial' 'build a trial release that PAUSE will not index' '--tgz' 'build a tarball (default behavior)')
        OPTIONS+=('--in' 'the directory in which to build the distribution')
        __dzil_handle_options_flags
          case $INDEX in
          *)
            __comp_current_options true || return # after parameters
            case ${MYWORDS[$INDEX-1]} in
              --verbose-plugin|-V)
              ;;
              --lib-inc|-I)
              ;;
              --in)
              ;;

            esac
            ;;
        esac
      ;;
      clean)
        FLAGS+=('--dry-run' 'dont actually remove anything, just show what would be done' '-n' 'dont actually remove anything, just show what would be done')
        OPTIONS+=()
        __dzil_handle_options_flags
          case $INDEX in
          *)
            __comp_current_options true || return # after parameters
            case ${MYWORDS[$INDEX-1]} in
              --verbose-plugin|-V)
              ;;
              --lib-inc|-I)
              ;;

            esac
            ;;
        esac
      ;;
      commands)
        FLAGS+=()
        OPTIONS+=()
        __dzil_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      help)
        FLAGS+=('--all' '')
        OPTIONS+=()
        __dzil_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __dzil_dynamic_comp 'commands' 'add'$'\n''authordeps'$'\n''build'$'\n''clean'$'\n''commands'$'\n''install'$'\n''listdeps'$'\n''new'$'\n''nop'$'\n''release'$'\n''run'$'\n''setup'$'\n''smoke'$'\n''test'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          _meta)
            FLAGS+=()
            OPTIONS+=()
            __dzil_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __dzil_dynamic_comp 'commands' 'completion'$'\n''pod'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              completion)
                FLAGS+=()
                OPTIONS+=()
                __dzil_handle_options_flags
                case $INDEX in

                3)
                    __comp_current_options || return
                    __dzil_dynamic_comp 'commands' 'generate'

                ;;
                *)
                # subcmds
                case ${MYWORDS[3]} in
                  generate)
                    FLAGS+=()
                    OPTIONS+=()
                    __dzil_handle_options_flags
                    __comp_current_options true || return # no subcmds, no params/opts
                  ;;
                esac

                ;;
                esac
              ;;
              pod)
                FLAGS+=()
                OPTIONS+=()
                __dzil_handle_options_flags
                case $INDEX in

                3)
                    __comp_current_options || return
                    __dzil_dynamic_comp 'commands' 'generate'

                ;;
                *)
                # subcmds
                case ${MYWORDS[3]} in
                  generate)
                    FLAGS+=()
                    OPTIONS+=()
                    __dzil_handle_options_flags
                    __comp_current_options true || return # no subcmds, no params/opts
                  ;;
                esac

                ;;
                esac
              ;;
            esac

            ;;
            esac
          ;;
          add)
            FLAGS+=()
            OPTIONS+=()
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          authordeps)
            FLAGS+=()
            OPTIONS+=()
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          build)
            FLAGS+=()
            OPTIONS+=()
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          clean)
            FLAGS+=()
            OPTIONS+=()
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          commands)
            FLAGS+=()
            OPTIONS+=()
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          install)
            FLAGS+=()
            OPTIONS+=()
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          listdeps)
            FLAGS+=()
            OPTIONS+=()
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          new)
            FLAGS+=()
            OPTIONS+=()
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          nop)
            FLAGS+=()
            OPTIONS+=()
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          release)
            FLAGS+=()
            OPTIONS+=()
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          run)
            FLAGS+=()
            OPTIONS+=()
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          setup)
            FLAGS+=()
            OPTIONS+=()
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          smoke)
            FLAGS+=()
            OPTIONS+=()
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          test)
            FLAGS+=()
            OPTIONS+=()
            __dzil_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
      install)
        FLAGS+=()
        OPTIONS+=('--install-command' 'command to run to install (e.g. "cpan .")' '--keep-build-dir' 'keep the build directory even after a success' '--keep' 'keep the build directory even after a success')
        __dzil_handle_options_flags
          case $INDEX in
          *)
            __comp_current_options true || return # after parameters
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
            ;;
        esac
      ;;
      listdeps)
        FLAGS+=('--missing' 'list only the missing dependencies' '--requires' 'list the required dependencies' '--recommends' 'list the recommended dependencies' '--suggests' 'list the suggested dependencies' '--versions' 'include required version numbers in listing' '--cpanm-versions' 'format versions for consumption by cpanm' '--json' 'list dependencies by phase, in JSON format')
        OPTIONS+=('--author' 'include author/develop dependencies' '--develop' 'include author/develop dependencies' '--omit-core' 'Omit dependencies that are shipped with the specified version of perl')
        __dzil_handle_options_flags
          case $INDEX in
          *)
            __comp_current_options true || return # after parameters
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
            ;;
        esac
      ;;
      new)
        FLAGS+=()
        OPTIONS+=('--profile' 'name of the profile to use' '-p' 'name of the profile to use' '--provider' 'name of the profile provider to use' '-P' 'name of the profile provider to use')
        __dzil_handle_options_flags
          case $INDEX in
          *)
            __comp_current_options true || return # after parameters
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
            ;;
        esac
      ;;
      nop)
        FLAGS+=()
        OPTIONS+=()
        __dzil_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      release)
        FLAGS+=('--trial' 'build a trial release that PAUSE will not index')
        OPTIONS+=()
        __dzil_handle_options_flags
          case $INDEX in
          *)
            __comp_current_options true || return # after parameters
            case ${MYWORDS[$INDEX-1]} in
              --verbose-plugin|-V)
              ;;
              --lib-inc|-I)
              ;;

            esac
            ;;
        esac
      ;;
      run)
        FLAGS+=('--build' 'do the Build actions before running the command; done by default' '--trial' 'build a trial release that PAUSE will not index')
        OPTIONS+=()
        __dzil_handle_options_flags
          case $INDEX in
          *)
            __comp_current_options true || return # after parameters
            case ${MYWORDS[$INDEX-1]} in
              --verbose-plugin|-V)
              ;;
              --lib-inc|-I)
              ;;

            esac
            ;;
        esac
      ;;
      setup)
        FLAGS+=()
        OPTIONS+=()
        __dzil_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      smoke)
        FLAGS+=('--release' 'enables the RELEASE_TESTING env variable' '--automated' 'enables the AUTOMATED_TESTING env variable (default behavior)' '--author' 'enables the AUTHOR_TESTING env variable')
        OPTIONS+=()
        __dzil_handle_options_flags
          case $INDEX in
          *)
            __comp_current_options true || return # after parameters
            case ${MYWORDS[$INDEX-1]} in
              --verbose-plugin|-V)
              ;;
              --lib-inc|-I)
              ;;

            esac
            ;;
        esac
      ;;
      test)
        FLAGS+=('--release' 'enables the RELEASE_TESTING env variable' '--automated' 'enables the AUTOMATED_TESTING env variable (default behavior)' '--author' 'enables the AUTHOR_TESTING env variable' '--extended' 'enables the EXTENDED_TESTING env variable' '--all' 'enables the RELEASE_TESTING, AUTOMATED_TESTING, EXTENDED_TESTING and AUTHOR_TESTING env variables' '--test-verbose' 'enables verbose testing (TEST_VERBOSE env variable on Makefile.PL, --verbose on Build.PL')
        OPTIONS+=('--keep-build-dir' 'keep the build directory even after a success' '--keep' 'keep the build directory even after a success' '--jobs' 'number of parallel test jobs to run' '-j' 'number of parallel test jobs to run')
        __dzil_handle_options_flags
          case $INDEX in
          *)
            __comp_current_options true || return # after parameters
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
            ;;
        esac
      ;;
    esac

    ;;
    esac

}

_dzil_compreply() {
    IFS=$'\n' COMPREPLY=($(compgen -W "$1" -- ${COMP_WORDS[COMP_CWORD]}))
    if [[ ${#COMPREPLY[*]} -eq 1 ]]; then # Only one completion
        COMPREPLY=( ${COMPREPLY[0]%% -- *} ) # Remove ' -- ' and everything after
        COMPREPLY="$(echo -e "$COMPREPLY" | sed -e 's/[[:space:]]*$//')"
    fi
}


__dzil_dynamic_comp() {
    local argname="$1"
    local arg="$2"
    local comp name desc cols desclength formatted
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
            formatted=`printf "'%-*s -- %-*s'" "$max" "$name" "$desclength" "$desc"`
            comp="$comp$formatted"$'\n'
        else
            comp="$comp'$name'"$'\n'
        fi
    done <<< "$arg"
    _dzil_compreply "$comp"
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

