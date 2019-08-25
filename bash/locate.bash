#!bash

# Generated with perl module App::Spec v0.012

_locate() {

    COMPREPLY=()
    local program=locate
    local cur prev words cword
    _init_completion -n : || return
    declare -a FLAGS
    declare -a OPTIONS
    declare -a MYWORDS

    local INDEX=`expr $cword - 1`
    MYWORDS=("${words[@]:1:$cword}")

    FLAGS=('--all' 'Print only entries that match all PATTERNs' '-A' 'Print only entries that match all PATTERNs' '--basename' 'Match only the base name against the specified patterns' '-b' 'Match only the base name against the specified patterns' '--count' 'Write the number of matching entries only' '-c' 'Write the number of matching entries only' '--existing' 'Print only entries that refer to files existing at...' '-e' 'Print only entries that refer to files existing at...' '--follow' 'When checking whether files exist, follow trailing...' '-f' 'When checking whether files exist, follow trailing...' '--ignore-case' 'Ignore case distinctions when matching patterns' '-i' 'Ignore case distinctions when matching patterns' '--mmap' 'Ignored, for compatibility with BSD and GNU locate' '-m' 'Ignored, for compatibility with BSD and GNU locate' '--nofollow' 'do not follow trailing symbolic links' '-P' 'do not follow trailing symbolic links' '-H' 'do not follow trailing symbolic links' '--null' 'Separate the entries on output using the ASCII NUL character' '-0' 'Separate the entries on output using the ASCII NUL character' '--statistics' 'Write statistics about each read database to standard output' '-S' 'Write statistics about each read database to standard output' '--quiet' 'Write no messages about errors' '-q' 'Write no messages about errors' '--regex' 'Interpret all PATTERNs as extended regexps' '--stdio' 'Ignored, for compatibility with BSD and GNU locate' '-s' 'Ignored, for compatibility with BSD and GNU locate' '--version' 'Write information about the version and license' '-V' 'Write information about the version and license' '--wholename' 'Match only the whole path name' '-w' 'Match only the whole path name' '--help' 'Show command help' '-h' 'Show command help')
    OPTIONS=('--database' 'Replace the default database with DBPATH' '-d' 'Replace the default database with DBPATH' '--limit' 'Exit successfully after finding LIMIT entries' '-n' 'Exit successfully after finding LIMIT entries' '-l' 'Exit successfully after finding LIMIT entries' '--regexp' 'Search for a basic regexp REGEXP' '-r' 'Search for a basic regexp REGEXP')
    __locate_handle_options_flags

    case ${MYWORDS[$INDEX-1]} in
      --database|-d)
      ;;
      --limit|-n|-l)
      ;;
      --regexp|-r)
      ;;

    esac
    case $INDEX in
      0)
          __comp_current_options || return
      ;;


    *)
        __comp_current_options || return
    ;;
    esac

}

_locate_compreply() {
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


__locate_dynamic_comp() {
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
    _locate_compreply ${comp[@]}
}

function __locate_handle_options() {
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

function __locate_handle_flags() {
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

__locate_handle_options_flags() {
    __locate_handle_options
    __locate_handle_flags
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
      __locate_dynamic_comp 'options' "$options_spec"

      return 1
    else
      return 0
    fi
}


complete -o default -F _locate locate

