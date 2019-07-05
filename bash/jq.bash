#!bash

# Generated with perl module App::Spec v0.012

_jq() {

    COMPREPLY=()
    local program=jq
    local cur prev words cword
    _init_completion -n : || return
    declare -a FLAGS
    declare -a OPTIONS
    declare -a MYWORDS

    local INDEX=`expr $cword - 1`
    MYWORDS=("${words[@]:1:$cword}")

    FLAGS=('--argjson' 'pre-set a variable to an object' '--ascii-output' 'restrict output to ASCII' '-a' 'restrict output to ASCII' '--color-output' 'output in color' '-C' 'output in color' '--compact-output' 'don'"\\'"'t pretty-print' '-c' 'don'"\\'"'t pretty-print' '--exit-status' 'report "false" and "null" results via exit code' '-e' 'report "false" and "null" results via exit code' '--join-output' 'like -r, without newlines between outputs' '-j' 'like -r, without newlines between outputs' '--monochrome-output' 'output without color' '-M' 'output without color' '--null-input' 'input is ignored' '-n' 'input is ignored' '--raw-input' 'consider each input line as a JSON strings' '-R' 'consider each input line as a JSON strings' '--raw-output' 'don'"\\'"'t JSON-quote output if it'"\\'"'s a string' '-r' 'don'"\\'"'t JSON-quote output if it'"\\'"'s a string' '--seq' 'use application/json-seq ASCII RS/LF scheme in input and output' '--slurp' 'join input JSON objects to array before filtering' '-s' 'join input JSON objects to array before filtering' '--sort-keys' 'output object keys in sorted order' '-S' 'output object keys in sorted order' '--stream' 'parse input streamily (changes output)' '--tab' 'indent output using TAB characters' '--unbuffered' 'flush output after each JSON object' '--version' 'output jq'"\\'"'s version number' '--help' 'Show command help' '-h' 'Show command help')
    OPTIONS=('--arg' 'pre-set a variable to a string' '--from-file' 'read filter from file' '-f' 'read filter from file' '--indent' 'indent output using given number of spaces' '-L' 'prepend a directory to the module search path' '--slurpfile' 'pre-set a variable to contents of a file' '--run-tests' 'Runs  the tests in the given file or standard input')
    __jq_handle_options_flags

    case ${MYWORDS[$INDEX-1]} in
      --arg)
      ;;
      --from-file|-f)
      ;;
      --indent)
        _jq_compreply "1" "2" "3" "4" "5" "6" "7" "8"
        return
      ;;
      -L)
      ;;
      --slurpfile)
      ;;
      --run-tests)
      ;;

    esac
    case $INDEX in
      0)
          __comp_current_options || return
      ;;
      1)
          __comp_current_options || return
      ;;


    *)
        __comp_current_options || return
    ;;
    esac

}

_jq_compreply() {
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


__jq_dynamic_comp() {
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
    _jq_compreply ${comp[@]}
}

function __jq_handle_options() {
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

function __jq_handle_flags() {
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

__jq_handle_options_flags() {
    __jq_handle_options
    __jq_handle_flags
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
      __jq_dynamic_comp 'options' "$options_spec"

      return 1
    else
      return 0
    fi
}


complete -o default -F _jq jq

