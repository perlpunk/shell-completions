#!bash

# Generated with perl module App::Spec v0.012

_zild() {

    COMPREPLY=()
    local program=zild
    local cur prev words cword
    _init_completion -n : || return
    declare -a FLAGS
    declare -a OPTIONS
    declare -a MYWORDS

    local INDEX=`expr $cword - 1`
    MYWORDS=("${words[@]:1:$cword}")

    FLAGS=('--help' 'Show command help' '-h' 'Show command help')
    OPTIONS=()
    __zild_handle_options_flags

    case $INDEX in

    0)
        __comp_current_options || return
        __zild_dynamic_comp 'commands' 'cpan'$'\t''Turn repo into a "Dist::Zilla" ready subdirectory called "./cpan/"'$'\n''cpanshell'$'\t''Start a shell in cpan dir'$'\n''dist'$'\t''Basically the same as "zild cpan; cd cpan; dzil build".'$'\n''distdir'$'\t''Create a dist dir'$'\n''distshell'$'\t''Start a shell in the dist dir'$'\n''disttest'$'\t''Run tests of generated dist package'$'\n''help'$'\t''Show command help'$'\n''install'$'\t''Build and install the software. Same as install from CPAN.'$'\n''prereqs'$'\t''Install the prereqs from CPAN'$'\n''release'$'\t''Build the dist, then "cpan-upload" it.'$'\n''test'$'\t''Run the test suite.'$'\n''update'$'\t''Rebuild the ReadMe.pod and other generated files.'

    ;;
    *)
    # subcmds
    case ${MYWORDS[0]} in
      cpan)
        __zild_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      cpanshell)
        __zild_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      dist)
        __zild_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      distdir)
        __zild_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      distshell)
        __zild_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      disttest)
        __zild_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      help)
        FLAGS+=('--all' '')
        __zild_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __zild_dynamic_comp 'commands' 'cpan'$'\n''cpanshell'$'\n''dist'$'\n''distdir'$'\n''distshell'$'\n''disttest'$'\n''install'$'\n''prereqs'$'\n''release'$'\n''test'$'\n''update'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          cpan)
            __zild_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          cpanshell)
            __zild_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          dist)
            __zild_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          distdir)
            __zild_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          distshell)
            __zild_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          disttest)
            __zild_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          install)
            __zild_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          prereqs)
            __zild_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          release)
            __zild_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          test)
            __zild_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          update)
            __zild_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
      install)
        __zild_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      prereqs)
        __zild_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      release)
        __zild_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      test)
        __zild_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      update)
        __zild_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
    esac

    ;;
    esac

}

_zild_compreply() {
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


__zild_dynamic_comp() {
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
    _zild_compreply ${comp[@]}
}

function __zild_handle_options() {
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

function __zild_handle_flags() {
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

__zild_handle_options_flags() {
    __zild_handle_options
    __zild_handle_flags
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
      __zild_dynamic_comp 'options' "$options_spec"

      return 1
    else
      return 0
    fi
}


complete -o default -F _zild zild

