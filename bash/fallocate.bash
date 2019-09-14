#!bash

# Generated with perl module App::Spec v0.013

_fallocate() {

    COMPREPLY=()
    local program=fallocate
    local cur prev words cword
    _init_completion -n : || return
    declare -a FLAGS
    declare -a OPTIONS
    declare -a MYWORDS

    local INDEX=`expr $cword - 1`
    MYWORDS=("${words[@]:1:$cword}")

    FLAGS=('--collapse-range' 'Removes a byte range from a file, without leaving a hole' '-c' 'Removes a byte range from a file, without leaving a hole' '--dig-holes' 'Detect and dig holes' '-d' 'Detect and dig holes' '--insert-range' 'nsert a hole of length bytes from offset, shifting existing data' '-i' 'nsert a hole of length bytes from offset, shifting existing data' '--keep-size' 'Do not modify the apparent length of the file' '-n' 'Do not modify the apparent length of the file' '--punch-hole' 'Deallocates space (i.e., creates a hole) in the byte range...' '-p' 'Deallocates space (i.e., creates a hole) in the byte range...' '--verbose' 'Enable verbose mode' '-v' 'Enable verbose mode' '--posix' 'Enable POSIX operation mode' '-x' 'Enable POSIX operation mode' '--zero-range' 'Zeroes space in the byte range starting at offset and continuing...' '-z' 'Zeroes space in the byte range starting at offset and continuing...' '--version' 'Display version information' '-V' 'Display version information' '--help' 'Show command help' '-h' 'Show command help')
    OPTIONS=('--length' 'Specifies the length of the range, in bytes' '-l' 'Specifies the length of the range, in bytes' '--offset' 'Specifies the beginning offset of the range, in bytes' '-o' 'Specifies the beginning offset of the range, in bytes')
    __fallocate_handle_options_flags

    case ${MYWORDS[$INDEX-1]} in
      --length|-l)
      ;;
      --offset|-o)
      ;;

    esac
    case $INDEX in
      0)
          __comp_current_options || return
            compopt -o filenames
      ;;


    *)
        __comp_current_options || return
    ;;
    esac

}

_fallocate_compreply() {
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


__fallocate_dynamic_comp() {
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
    _fallocate_compreply ${comp[@]}
}

function __fallocate_handle_options() {
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

function __fallocate_handle_flags() {
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

__fallocate_handle_options_flags() {
    __fallocate_handle_options
    __fallocate_handle_flags
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
      __fallocate_dynamic_comp 'options' "$options_spec"

      return 1
    else
      return 0
    fi
}


complete -o default -F _fallocate fallocate

