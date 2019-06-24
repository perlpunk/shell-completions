#!bash

# Generated with perl module App::Spec v0.010

_POST() {

    COMPREPLY=()
    local program=POST
    local cur prev words cword
    _init_completion -n : || return
    declare -a FLAGS
    declare -a OPTIONS
    declare -a MYWORDS

    local INDEX=`expr $cword - 1`
    MYWORDS=("${words[@]:1:$cword}")

    FLAGS=('-f' 'make request even if lwp-request believes method is illegal' '-a' 'Use text mode for content I/O' '-P' 'don'"\\'"'t load proxy settings from environment' '-u' 'Display method and URL before any response' '-U' 'Display request headers (implies -u)' '-s' 'Display response status code' '-S' 'Display response status chain (implies -u)' '-e' 'Display response headers (implies -s)' '-E' 'Display whole chain of headers (implies -S and -U)' '-d' 'Do not display content' '-v' 'Show program version' '--help' 'Show command help' '-h' 'Show command help')
    OPTIONS=('-m' 'use method for the request (default is '"\\'"'GET'"\\'"')' '-b' 'Use the specified URL as base' '-t' 'Set timeout value' '-i' 'Set the If-Modified-Since header on the request' '-c' 'use this content-type for POST, PUT, CHECKIN' '-p' 'use this as a proxy' '-H' 'send this HTTP header (you can specify several)' '-C' 'provide credentials for basic authentication (<username>:<password>)' '-o' 'Process HTML content in various ways')
    __POST_handle_options_flags

    case ${MYWORDS[$INDEX-1]} in
      -m)
        _POST_compreply "GET" "HEAD" "POST" "PUT" "DELETE" "CONNECT" "OPTIONS" "TRACE" "PATCH"
        return
      ;;
      -b)
      ;;
      -t)
      ;;
      -i)
      ;;
      -c)
      ;;
      -p)
      ;;
      -H)
      ;;
      -C)
      ;;
      -o)
        _POST_compreply "text" "ps" "links" "html" "dump"
        return
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

_POST_compreply() {
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


__POST_dynamic_comp() {
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
    _POST_compreply ${comp[@]}
}

function __POST_handle_options() {
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

function __POST_handle_flags() {
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

__POST_handle_options_flags() {
    __POST_handle_options
    __POST_handle_flags
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
      __POST_dynamic_comp 'options' "$options_spec"

      return 1
    else
      return 0
    fi
}


complete -o default -F _POST POST

