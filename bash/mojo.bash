#!bash

# Generated with perl module App::Spec v0.012

_mojo() {

    COMPREPLY=()
    local program=mojo
    local cur prev words cword
    _init_completion -n : || return
    declare -a FLAGS
    declare -a OPTIONS
    declare -a MYWORDS

    local INDEX=`expr $cword - 1`
    MYWORDS=("${words[@]:1:$cword}")

    FLAGS=('--help' 'Show command help' '-h' 'Show command help')
    OPTIONS=('--mode' 'Operating mode for your application' '-m' 'Operating mode for your application' '--home' 'Path to application home directory')
    __mojo_handle_options_flags

    case $INDEX in

    0)
        __comp_current_options || return
        __mojo_dynamic_comp 'commands' 'cgi'$'\t''Start application with CGI'$'\n''cpanify'$'\t''Upload distribution to CPAN'$'\n''daemon'$'\t''Start application with HTTP and WebSocket server'$'\n''eval'$'\t''Run code against application'$'\n''generate'$'\t''Generate files and directories from templates'$'\n''get'$'\t''Perform HTTP request'$'\n''help'$'\t''Show command help'$'\n''inflate'$'\t''Inflate embedded files to real files'$'\n''prefork'$'\t''Start application with pre-forking HTTP and WebSocket server'$'\n''psgi'$'\t''Start application with PSGI'$'\n''routes'$'\t''Show available routes'$'\n''test'$'\t''Run tests'$'\n''version'$'\t''Show versions of available modules'

    ;;
    *)
    # subcmds
    case ${MYWORDS[0]} in
      cgi)
        FLAGS+=('--nph' 'Enable non-parsed-header mode')
        __mojo_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --mode|-m)
          ;;
          --home)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      cpanify)
        OPTIONS+=('--password' 'PAUSE password' '-p' 'PAUSE password' '--user' 'PAUSE username' '-u' 'PAUSE username')
        __mojo_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --mode|-m)
          ;;
          --home)
          ;;
          --password|-p)
          ;;
          --user|-u)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      daemon)
        FLAGS+=('--proxy' 'Activate reverse proxy support' '-p' 'Activate reverse proxy support')
        OPTIONS+=('--clients' 'Maximum number of concurrent connections' '-c' 'Maximum number of concurrent connections' '--listen' 'One or more locations you want to listen on' '-l' 'One or more locations you want to listen on' '--requests' 'Maximum number of requests per keep-alive connection' '-r' 'Maximum number of requests per keep-alive connection' '--backlog' 'Listen backlog size' '-b' 'Listen backlog size' '--inactivity-timeout' 'Inactivity timeout' '-i' 'Inactivity timeout')
        __mojo_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --mode|-m)
          ;;
          --home)
          ;;
          --clients|-c)
          ;;
          --listen|-l)
          ;;
          --requests|-r)
          ;;
          --backlog|-b)
          ;;
          --inactivity-timeout|-i)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      eval)
        FLAGS+=('--verbose' 'Print return value to STDOUT' '-v' 'Print return value to STDOUT' '-V' 'Print returned data structure to STDOUT')
        __mojo_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --mode|-m)
          ;;
          --home)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      generate)
        __mojo_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __mojo_dynamic_comp 'commands' 'app'$'\t''Generate Mojolicious application directory structure'$'\n''lite_app'$'\t''Generate Mojolicious::Lite application'$'\n''makefile'$'\t''Generate Makefile.PL'$'\n''plugin'$'\t''Generate Mojolicious plugin directory structure'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          app)
            __mojo_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          lite_app)
            __mojo_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          makefile)
            __mojo_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          plugin)
            __mojo_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
      get)
        FLAGS+=('--redirect' 'Follow up to 10 redirects' '-r' 'Follow up to 10 redirects' '--verbose' 'Print request and response headers to STDERR' '-v' 'Print request and response headers to STDERR')
        OPTIONS+=('--charset' 'Charset of HTML/XML content' '-C' 'Charset of HTML/XML content' '--content' 'Content to send with request' '-c' 'Content to send with request' '--form' 'One or more form values and file uploads' '-f' 'One or more form values and file uploads' '--header' 'One or more additional HTTP headers' '-h' 'One or more additional HTTP headers' '--connect-timeout' 'Connect timeout' '-o' 'Connect timeout' '--response-size' 'Maximum response size in bytes' '-S' 'Maximum response size in bytes' '--user' 'Alternate mechanism for specifying colon-separated username and password' '-u' 'Alternate mechanism for specifying colon-separated username and password' '--method' 'HTTP method to use' '-M' 'HTTP method to use' '--inactivity-timeout' 'Inactivity timeout' '-i' 'Inactivity timeout')
        __mojo_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --mode|-m)
          ;;
          --home)
          ;;
          --charset|-C)
          ;;
          --content|-c)
          ;;
          --form|-f)
          ;;
          --header|-h)
          ;;
          --connect-timeout|-o)
          ;;
          --response-size|-S)
          ;;
          --user|-u)
          ;;
          --method|-M)
            _mojo_compreply "GET" "HEAD" "POST" "PUT" "DELETE" "CONNECT" "OPTIONS" "TRACE" "PATCH"
            return
          ;;
          --inactivity-timeout|-i)
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
        __mojo_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __mojo_dynamic_comp 'commands' 'cgi'$'\n''cpanify'$'\n''daemon'$'\n''eval'$'\n''generate'$'\n''get'$'\n''inflate'$'\n''prefork'$'\n''psgi'$'\n''routes'$'\n''test'$'\n''version'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          cgi)
            __mojo_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          cpanify)
            __mojo_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          daemon)
            __mojo_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          eval)
            __mojo_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          generate)
            __mojo_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __mojo_dynamic_comp 'commands' 'app'$'\n''lite_app'$'\n''makefile'$'\n''plugin'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              app)
                __mojo_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              lite_app)
                __mojo_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              makefile)
                __mojo_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              plugin)
                __mojo_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
            esac

            ;;
            esac
          ;;
          get)
            __mojo_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          inflate)
            __mojo_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          prefork)
            __mojo_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          psgi)
            __mojo_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          routes)
            __mojo_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          test)
            __mojo_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          version)
            __mojo_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
      inflate)
        __mojo_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      prefork)
        FLAGS+=('--proxy' 'Activate reverse proxy support' '-p' 'Activate reverse proxy support')
        OPTIONS+=('--accepts' 'Number of connections for workers to accept' '-a' 'Number of connections for workers to accept' '--clients' 'Maximum number of concurrent connections' '-c' 'Maximum number of concurrent connections' '--graceful-timeout' 'Graceful timeout' '-G' 'Graceful timeout' '--heartbeat-interval' 'Heartbeat interval' '-I' 'Heartbeat interval' '--heartbeat-timeout' 'Heartbeat timeout' '-H' 'Heartbeat timeout' '--listen' 'One or more locations you want to listen on' '-l' 'One or more locations you want to listen on' '--pid-file' 'Path to process id file' '-P' 'Path to process id file' '--requests' 'Maximum number of requests per keep-alive connection' '-r' 'Maximum number of requests per keep-alive connection' '--spare' 'Temporarily spawn up to this number of additional workers' '-s' 'Temporarily spawn up to this number of additional workers' '--workers' 'Number of workers' '-w' 'Number of workers' '--backlog' 'Listen backlog size' '-b' 'Listen backlog size' '--inactivity-timeout' 'Inactivity timeout' '-i' 'Inactivity timeout')
        __mojo_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --mode|-m)
          ;;
          --home)
          ;;
          --accepts|-a)
          ;;
          --clients|-c)
          ;;
          --graceful-timeout|-G)
          ;;
          --heartbeat-interval|-I)
          ;;
          --heartbeat-timeout|-H)
          ;;
          --listen|-l)
          ;;
          --pid-file|-P)
          ;;
          --requests|-r)
          ;;
          --spare|-s)
          ;;
          --workers|-w)
          ;;
          --backlog|-b)
          ;;
          --inactivity-timeout|-i)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      psgi)
        __mojo_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      routes)
        FLAGS+=('--verbose' 'Print additional details about routes' '-v' 'Print additional details about routes')
        __mojo_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --mode|-m)
          ;;
          --home)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      test)
        FLAGS+=('--verbose' 'Print verbose debug information to STDERR' '-v' 'Print verbose debug information to STDERR')
        __mojo_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --mode|-m)
          ;;
          --home)
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      version)
        __mojo_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
    esac

    ;;
    esac

}

_mojo_compreply() {
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


__mojo_dynamic_comp() {
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
    _mojo_compreply ${comp[@]}
}

function __mojo_handle_options() {
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

function __mojo_handle_flags() {
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

__mojo_handle_options_flags() {
    __mojo_handle_options
    __mojo_handle_flags
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
      __mojo_dynamic_comp 'options' "$options_spec"

      return 1
    else
      return 0
    fi
}


complete -o default -F _mojo mojo

