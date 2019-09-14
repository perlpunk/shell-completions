#!bash

# Generated with perl module App::Spec v0.013

_fatpack() {

    COMPREPLY=()
    local program=fatpack
    local cur prev words cword
    _init_completion -n : || return
    declare -a FLAGS
    declare -a OPTIONS
    declare -a MYWORDS

    local INDEX=`expr $cword - 1`
    MYWORDS=("${words[@]:1:$cword}")

    FLAGS=('--help' 'Show command help' '-h' 'Show command help')
    OPTIONS=()
    __fatpack_handle_options_flags

    case $INDEX in

    0)
        __comp_current_options || return
        __fatpack_dynamic_comp 'commands' 'file'$'\t''Recurses into the '"'"'lib'"'"' and '"'"'fatlib'"'"' directories and bundles all .pm files found into a BEGIN block...'$'\n''help'$'\t''Show command help'$'\n''pack'$'\t''Pack script and modules'$'\n''packlists-for'$'\t''Searches your perls @INC for .packlist files containing the .pm files'$'\n''trace'$'\t''Writes out a trace file containing every module required'$'\n''tree'$'\t''Takes a list of packlist files and copies their contents into a tree at the requested location'

    ;;
    *)
    # subcmds
    case ${MYWORDS[0]} in
      file)
        __fatpack_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in

        esac
        case $INDEX in
          1)
              __comp_current_options || return
                compopt -o filenames
          ;;


        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      help)
        FLAGS+=('--all' '')
        __fatpack_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __fatpack_dynamic_comp 'commands' 'file'$'\n''pack'$'\n''packlists-for'$'\n''trace'$'\n''tree'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          file)
            __fatpack_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          pack)
            __fatpack_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          packlists-for)
            __fatpack_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          trace)
            __fatpack_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          tree)
            __fatpack_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
      pack)
        __fatpack_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in

        esac
        case $INDEX in
          1)
              __comp_current_options || return
                compopt -o filenames
          ;;


        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      packlists-for)
        __fatpack_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in

        esac
        case $INDEX in
          1)
              __comp_current_options || return
                _fatpack_packlists-for_param_modules_completion
          ;;


        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      trace)
        FLAGS+=('--to-stderr' 'Write the trace to STDERR instead')
        OPTIONS+=('--to' 'Location of trace file' '--use' 'Specify module(s) to be included additionally')
        __fatpack_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --to)
            compopt -o filenames
            return
          ;;
          --use)
            _fatpack_trace_option_use_completion
          ;;

        esac
        case $INDEX in
          1)
              __comp_current_options || return
                compopt -o filenames
          ;;


        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      tree)
        __fatpack_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in

        esac
        case $INDEX in
          1)
              __comp_current_options || return
                compopt -o filenames
          ;;


        *)
            __comp_current_options || return
        ;;
        esac
      ;;
    esac

    ;;
    esac

}

_fatpack_compreply() {
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

_fatpack_packlists-for_param_modules_completion() {
    local CURRENT_WORD="${words[$cword]}"
    local param_modules="$(\
for incpath in $(perl -wE'say for @INC'); do \
  find $incpath -name "*.pm" -printf "%P\n" \
  | perl -plE's{/}{::}g; s{\.pm}{}' \
  | grep "^$CURRENT_WORD"; \
done)"
    _fatpack_compreply "$param_modules"
}
_fatpack_trace_option_use_completion() {
    local CURRENT_WORD="${words[$cword]}"
    local param_use="$(\
for incpath in $(perl -wE'say for @INC'); do \
  find $incpath -name "*.pm" -printf "%P\n" \
  | perl -plE's{/}{::}g; s{\.pm}{}' \
  | grep "^$CURRENT_WORD"; \
done)"
    _fatpack_compreply "$param_use"
}

__fatpack_dynamic_comp() {
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
    _fatpack_compreply ${comp[@]}
}

function __fatpack_handle_options() {
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

function __fatpack_handle_flags() {
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

__fatpack_handle_options_flags() {
    __fatpack_handle_options
    __fatpack_handle_flags
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
      __fatpack_dynamic_comp 'options' "$options_spec"

      return 1
    else
      return 0
    fi
}


complete -o default -F _fatpack fatpack

