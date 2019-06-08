#!bash

# Generated with perl module App::Spec v0.009

_starman() {

    COMPREPLY=()
    local program=starman
    local cur prev words cword
    _init_completion -n : || return
    declare -a FLAGS
    declare -a OPTIONS
    declare -a MYWORDS

    local INDEX=`expr $cword - 1`
    MYWORDS=("${words[@]:1:$cword}")

    FLAGS=('--max-requests' 'Number of the requests to process per one worker process' '--preload-app' 'This option lets Starman preload the specified PSGI application...' '--disable-keepalive' 'Disable Keep-alive persistent connections' '--enable-ssl' 'Enable SSL on all TCP sockets' '--disable-proctitle' 'Disable the behavior to set proctitle to "starman (master)"' '--daemonize' 'Makes the process run in the background' '-D' 'Makes the process run in the background' '--no-default-middleware' 'This prevents loading the default middleware stack...' '--reload' 'Makes plackup restart the server whenever a file...' '-r' 'Makes plackup restart the server whenever a file...' '--help' 'Show command help' '-h' 'Show command help')
    OPTIONS=('--listen' 'Specifies the TCP address, ports and UNIX domain sockets' '-l' 'Specifies the TCP address, ports and UNIX domain sockets' '--host' 'Specifies the address to bind' '--port' 'Specifies the port to bind' '--socket' 'Specifies the path to UNIX domain socket to bind' '-S' 'Specifies the path to UNIX domain socket to bind' '--workers' 'Specifies the number of worker pool' '--backlog' 'Specifies the number of backlog (listen queue size)...' '--keepalive-timeout' 'The number of seconds Starman will wait for a subsequent request' '--read-timeout' 'The number of seconds Starman will wait for a request on a new...' '--user' 'To listen on a low-numbered (<1024) port...' '--group' 'Specify the group id or group name that the server...' '--pid' 'Specify the pid file path' '--error-log' 'Specify the pathname of a file where the error log...' '--ssl-cert' 'Specify the path to SSL certificate file' '--ssl-key' 'Specify the path to SSL key file' '--app' 'Specifies the full path to a ".psgi" script' '-a' 'Specifies the full path to a ".psgi" script' '-e' 'Evaluates the given perl code as a PSGI app' '--server' 'Selects a specific server implementation to run on' '-s' 'Selects a specific server implementation to run on' '--socket' 'Listens on a UNIX domain socket path' '-S' 'Listens on a UNIX domain socket path' '-I' 'Specifies Perl library include paths' '-M' 'Loads the named modules before loading the app'"\\'"'s code' '--env' 'Specifies the environment option' '-E' 'Specifies the environment option' '--Reload' 'Makes plackup restart the server whenever a given file...' '-R' 'Makes plackup restart the server whenever a given file...' '--access-log' 'Specifies the pathname of a file where the access log...' '--path' 'Specify the root path of your app' '--loader' 'Specifies the server loading subclass' '-L' 'Specifies the server loading subclass')
    __starman_handle_options_flags

    case ${MYWORDS[$INDEX-1]} in
      --listen|-l)
      ;;
      --host)
      ;;
      --port)
      ;;
      --socket|-S)
      ;;
      --workers)
      ;;
      --backlog)
      ;;
      --keepalive-timeout)
      ;;
      --read-timeout)
      ;;
      --user)
      ;;
      --group)
      ;;
      --pid)
      ;;
      --error-log)
      ;;
      --ssl-cert)
      ;;
      --ssl-key)
      ;;
      --app|-a)
      ;;
      -e)
      ;;
      --server|-s)
      ;;
      --socket|-S)
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
        _starman_compreply "Restarter" "Delayed" "Shotgun"
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

_starman_compreply() {
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


__starman_dynamic_comp() {
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
    _starman_compreply ${comp[@]}
}

function __starman_handle_options() {
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

function __starman_handle_flags() {
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

__starman_handle_options_flags() {
    __starman_handle_options
    __starman_handle_flags
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
      __starman_dynamic_comp 'options' "$options_spec"

      return 1
    else
      return 0
    fi
}


complete -o default -F _starman starman

