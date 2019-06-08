#!bash

# Generated with perl module App::Spec v0.009

_cpan() {

    COMPREPLY=()
    local program=cpan
    local cur prev words cword
    _init_completion -n : || return
    declare -a FLAGS
    declare -a OPTIONS
    declare -a MYWORDS

    local INDEX=`expr $cword - 1`
    MYWORDS=("${words[@]:1:$cword}")

    FLAGS=('-a' 'Creates a CPAN.pm autobundle with CPAN::Shell->autobundle' '-A' 'Shows the primary maintainers for the specified modules' '-c' 'Runs a '"\\'"'make clean'"\\'"' in the specified module'"\\'"'s directories' '-C' 'Show the Changes files for the specified modules' '-D' 'Show the module details' '-f' 'Force the specified action, when it normally would have failed' '-F' 'Turn off CPAN.pm'"\\'"'s attempts to lock anything' '-g' 'Downloads to the current directory the latest distribution...' '-i' 'Install the specified modules' '-I' 'Load "local::lib" (think like "-I" for loading lib paths)' '-J' 'Dump the configuration in the same format that CPAN.pm uses' '-l' 'List all installed modules with their versions' '-L' 'List the modules by the specified authors' '-m' 'Make the specified modules' '-O' 'Show the out-of-date modules' '-p' 'Ping the configured mirrors' '-P' 'Find the best mirrors you could be using' '-r' 'Recompiles dynamically loaded modules with CPAN::Shell->recompile' '-t' 'Run a '"\\'"'make test'"\\'"' on the specified modules' '-T' 'Do not test modules. Simply install them' '-u' 'Upgrade all installed modules' '-v' 'Print the script version and CPAN.pm version' '-V' 'Print detailed information about the cpan client' '--help' 'Show command help' '-h' 'Show command help')
    OPTIONS=('-j' 'Load the file that has the CPAN configuration data')
    __cpan_handle_options_flags

    case ${MYWORDS[$INDEX-1]} in
      -j)
      ;;

    esac
    case $INDEX in
      0)
          __comp_current_options || return
            _cpan__param_Modules_completion
      ;;


    *)
        __comp_current_options || return
    ;;
    esac

}

_cpan_compreply() {
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

_cpan__param_Modules_completion() {
    local CURRENT_WORD="${words[$cword]}"
    local param_Modules="$(\
( [[ "$CURRENT_WORD{0:1}" == . ]] || [[ "$CURRENT_WORD{0:1}" == / ]] ) \
  || zless ${CPAN_PACKAGES_DETAILS:-~/.local/share/.cpan/sources/modules/02packages.details.txt.gz} \
  | tail -n +8 \
  | cut -f 1 -d ' ' \
  | grep "^$CURRENT_WORD" \
  | head -${CPAN_MAX_MODULES:-10000})"
    _cpan_compreply "$param_Modules"
}

__cpan_dynamic_comp() {
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
    _cpan_compreply ${comp[@]}
}

function __cpan_handle_options() {
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

function __cpan_handle_flags() {
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

__cpan_handle_options_flags() {
    __cpan_handle_options
    __cpan_handle_flags
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
      __cpan_dynamic_comp 'options' "$options_spec"

      return 1
    else
      return 0
    fi
}


complete -o default -F _cpan cpan

