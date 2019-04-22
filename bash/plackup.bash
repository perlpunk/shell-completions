#!bash

_plackup() {

    COMPREPLY=()
    local program=plackup
    local cur=${COMP_WORDS[$COMP_CWORD]}
#    echo "COMP_CWORD:$COMP_CWORD cur:$cur" >>/tmp/comp
    declare -a FLAGS
    declare -a OPTIONS
    declare -a MYWORDS

    local INDEX=`expr $COMP_CWORD - 1`
    MYWORDS=("${COMP_WORDS[@]:1:$COMP_CWORD}")

    FLAGS=('--daemonize' 'Makes the process run in the background' '-D' 'Makes the process run in the background' '--no-default-middleware' 'This prevents loading the default middleware stack...' '--reload' 'Makes plackup restart the server whenever a file...' '-r' 'Makes plackup restart the server whenever a file...' '--help' 'Show command help' '-h' 'Show command help')
    OPTIONS=('--app' 'Specifies the full path to a ".psgi" script' '-a' 'Specifies the full path to a ".psgi" script' '-e' 'Evaluates the given perl code as a PSGI app' '--host' 'Binds to a TCP interface' '-o' 'Binds to a TCP interface' '--port' 'Binds to a TCP port' '-p' 'Binds to a TCP port' '--server' 'Selects a specific server implementation to run on' '-s' 'Selects a specific server implementation to run on' '--socket' 'Listens on a UNIX domain socket path' '-S' 'Listens on a UNIX domain socket path' '--listen' 'Listens on one or more addresses' '-l' 'Listens on one or more addresses' '-I' 'Specifies Perl library include paths' '-M' 'Loads the named modules before loading the app'"\\'"'s code' '--env' 'Specifies the environment option' '-E' 'Specifies the environment option' '--Reload' 'Makes plackup restart the server whenever a given file...' '-R' 'Makes plackup restart the server whenever a given file...' '--access-log' 'Specifies the pathname of a file where the access log...' '--path' 'Specify the root path of your app' '--loader' 'Specifies the server loading subclass' '-L' 'Specifies the server loading subclass')
    __plackup_handle_options_flags

    case ${MYWORDS[$INDEX-1]} in
      --app|-a)
      ;;
      -e)
      ;;
      --host|-o)
      ;;
      --port|-p)
      ;;
      --server|-s)
      ;;
      --socket|-S)
      ;;
      --listen|-l)
      ;;
      -I)
      ;;
      -M)
      ;;
      --env|-E)
      ;;
      --Reload|-R)
      ;;
      --access-log)
      ;;
      --path)
      ;;
      --loader|-L)
        _plackup_compreply "'Restarter'"$'\n'"'Delayed'"$'\n'"'Shotgun'"
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

_plackup_compreply() {
    IFS=$'\n' COMPREPLY=($(compgen -W "$1" -- ${COMP_WORDS[COMP_CWORD]}))

    # http://stackoverflow.com/questions/7267185/bash-autocompletion-add-description-for-possible-completions
    if [[ ${#COMPREPLY[*]} -eq 1 ]]; then # Only one completion
        COMPREPLY=( ${COMPREPLY[0]%% -- *} ) # Remove ' -- ' and everything after
        COMPREPLY=( ${COMPREPLY[0]%% *} ) # Remove trailing spaces
    fi
}


__plackup_dynamic_comp() {
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
            formatted=`printf "%-*s -- %-*s" "$max" "$name" "$desclength" "$desc"`
            comp="$comp$formatted"$'\n'
        else
            comp="$comp'$name'"$'\n'
        fi
    done <<< "$arg"
    _plackup_compreply "$comp"
}

function __plackup_handle_options() {
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

function __plackup_handle_flags() {
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

__plackup_handle_options_flags() {
    __plackup_handle_options
    __plackup_handle_flags
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
      __plackup_dynamic_comp 'options' "$options_spec"

      return 1
    else
      return 0
    fi
}


complete -o default -F _plackup plackup

