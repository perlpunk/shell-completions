#!bash

# Generated with perl module App::Spec v0.009

_dancer2() {

    COMPREPLY=()
    local program=dancer2
    local cur prev words cword
    _init_completion -n : || return
    declare -a FLAGS
    declare -a OPTIONS
    declare -a MYWORDS

    local INDEX=`expr $cword - 1`
    MYWORDS=("${words[@]:1:$cword}")

    FLAGS=('--help' 'Show command help' '-h' 'Show command help')
    OPTIONS=()
    __dancer2_handle_options_flags

    case $INDEX in

    0)
        __comp_current_options || return
        __dancer2_dynamic_comp 'commands' 'commands'$'\t''list the application'"'"'s commands'$'\n''gen'$'\t''create new Dancer2 application'$'\n''help'$'\t''Show command help'

    ;;
    *)
    # subcmds
    case ${MYWORDS[0]} in
      _meta)
        __dancer2_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __dancer2_dynamic_comp 'commands' 'completion'$'\t''Shell completion functions'$'\n''pod'$'\t''Pod documentation'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          completion)
            __dancer2_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __dancer2_dynamic_comp 'commands' 'generate'$'\t''Generate self completion'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              generate)
                FLAGS+=('--zsh' 'for zsh' '--bash' 'for bash')
                OPTIONS+=('--name' 'name of the program (optional, override name in spec)')
                __dancer2_handle_options_flags
                case ${MYWORDS[$INDEX-1]} in
                  --name)
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
          ;;
          pod)
            __dancer2_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __dancer2_dynamic_comp 'commands' 'generate'$'\t''Generate self pod'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              generate)
                __dancer2_handle_options_flags
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
      commands)
        __dancer2_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      gen)
        FLAGS+=('--overwrite' 'overwrite existing files' '-o' 'overwrite existing files' '--no-check' 'don'"\\'"'t check latest Dancer2 version' '-x' 'don'"\\'"'t check latest Dancer2 version')
        OPTIONS+=('--application' 'application name' '-a' 'application name' '--directory' 'application folder' '-d' 'application folder' '--path' 'application path' '-p' 'application path' '--skel' 'skeleton directory' '-s' 'skeleton directory')
        __dancer2_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --application|-a)
          ;;
          --directory|-d)
          ;;
          --path|-p)
          ;;
          --skel|-s)
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
        __dancer2_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __dancer2_dynamic_comp 'commands' 'commands'$'\n''gen'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          _meta)
            __dancer2_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __dancer2_dynamic_comp 'commands' 'completion'$'\n''pod'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              completion)
                __dancer2_handle_options_flags
                case $INDEX in

                3)
                    __comp_current_options || return
                    __dancer2_dynamic_comp 'commands' 'generate'

                ;;
                *)
                # subcmds
                case ${MYWORDS[3]} in
                  generate)
                    __dancer2_handle_options_flags
                    __comp_current_options true || return # no subcmds, no params/opts
                  ;;
                esac

                ;;
                esac
              ;;
              pod)
                __dancer2_handle_options_flags
                case $INDEX in

                3)
                    __comp_current_options || return
                    __dancer2_dynamic_comp 'commands' 'generate'

                ;;
                *)
                # subcmds
                case ${MYWORDS[3]} in
                  generate)
                    __dancer2_handle_options_flags
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
          commands)
            __dancer2_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          gen)
            __dancer2_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
    esac

    ;;
    esac

}

_dancer2_compreply() {
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


__dancer2_dynamic_comp() {
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
    _dancer2_compreply ${comp[@]}
}

function __dancer2_handle_options() {
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

function __dancer2_handle_flags() {
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

__dancer2_handle_options_flags() {
    __dancer2_handle_options
    __dancer2_handle_flags
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
      __dancer2_dynamic_comp 'options' "$options_spec"

      return 1
    else
      return 0
    fi
}


complete -o default -F _dancer2 dancer2

