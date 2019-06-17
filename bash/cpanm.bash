#!bash

# Generated with perl module App::Spec v0.010

_cpanm() {

    COMPREPLY=()
    local program=cpanm
    local cur prev words cword
    _init_completion -n : || return
    declare -a FLAGS
    declare -a OPTIONS
    declare -a MYWORDS

    local INDEX=`expr $cword - 1`
    MYWORDS=("${words[@]:1:$cword}")

    FLAGS=('--install' 'Installs the modules. This is a default behavior' '-i' 'Installs the modules. This is a default behavior' '--self-upgrade' 'Upgrades itself' '--info' 'Displays the distribution information in "AUTHOR/Dist-Name-ver.tar.gz" format' '--installdeps' 'Installs the dependencies of the target distribution but won'"\\'"'t build itself' '--look' 'Download and unpack the distribution and then open the directory with your shell' '--version' 'Displays the version number' '-v' 'Displays the version number' '--force' 'Force install modules even when testing failed' '-f' 'Force install modules even when testing failed' '--notest' 'Skip the testing of modules' '-n' 'Skip the testing of modules' '--test-only' 'Run the tests only, and do not install the specified module or distributions' '--sudo' 'Switch to the root user with "sudo" when installing modules' '-S' 'Switch to the root user with "sudo" when installing modules' '--verbose' 'Makes the output verbose' '-v' 'Makes the output verbose' '--quiet' 'Makes the output even more quiet than the default' '-q' 'Makes the output even more quiet than the default' '--self-contained' 'When examining the dependencies, assume no non-core modules are installed on the system' '--exclude-vendor' 'Don'"\\'"'t include modules installed under the '"\\'"'vendor'"\\'"' paths...' '--mirror-only' 'Download the mirror'"\\'"'s index file instead of querying the CPAN Meta DB' '--metacpan' 'Prefers MetaCPAN API over CPAN MetaDB' '--prompt' 'Prompts when a test fails so that you can skip, force install...' '--dev' 'EXPERIMENTAL search for a newer developer release as well' '--reinstall' 'reinstall module' '--interactive' 'Makes the configuration (such as "Makefile.PL" and "Build.PL") interactive' '--pureperl' 'Prefer Pure perl build of modules' '--pp' 'Prefer Pure perl build of modules' '--with-recommends' 'EXPERIMENTAL Installs dependencies declared as "recommends"' '--with-suggests' 'EXPERIMENTAL Installs dependencies declared as "suggests"' '--with-develop' 'EXPERIMENTAL Installs develop phase dependencies' '--with-configure' 'EXPERIMENTAL Installs configure phase dependencies' '--with-feature' 'EXPERIMENTAL Specifies the feature to enable' '--without-feature' 'EXPERIMENTAL Specifies the feature to enable' '--with-all-features' 'EXPERIMENTAL Specifies the feature to enable' '--scandeps' 'DEPRECATED Scans the depencencies of given modules' '--uninst-shadows' 'Uninstalls the shadow files of the distribution' '--uninstall' 'Uninstalls a module from the library path' '-U' 'Uninstalls a module from the library path' '--cascade-search' 'EXPERIMENTAL Specifies whether to cascade search when you specify multiple mirrors' '--skip-installed' 'Specifies whether a module given in the command line is skipped...' '--skip-satisfied' 'EXPERIMENTAL Specifies whether a module (and version) given...' '--verify' 'Verify the integrity of distribution files retrieved from PAUSE' '--report-perl-version' 'Whether it reports the locally installed perl version' '--man-pages' 'Generates man pages for executables (man1) and libraries (man3)' '--lwp' 'Uses LWP module to download stuff over HTTP' '--wget' 'Uses GNU Wget (if available) to download stuff' '--curl' 'Uses cURL (if available) to download stuff' '--help' 'Show command help' '-h' 'Show command help')
    OPTIONS=('--local-lib' 'Sets the local::lib compatible path to install modules to' '-l' 'Sets the local::lib compatible path to install modules to' '--local-lib-contained' 'Same with "--local-lib" but with --self-contained set' '-L' 'Same with "--local-lib" but with --self-contained set' '--mirror' 'Specifies the base URL for the CPAN mirror to use' '--from' 'Use the given mirror URL and its index as the only source' '-M' 'Use the given mirror URL and its index as the only source' '--mirror-index' 'EXPERIMENTAL Specifies the file path to "02packages.details.txt"' '--cpanmetadb' 'EXPERIMENTAL Specifies an alternate URI for CPAN MetaDB' '--cpanfile' 'EXPERIMENTAL Specified an alternate path for cpanfile' '--configure-timeout' 'Specify the timeout length (in seconds) to wait' '--build-timeout' 'Specify the timeout length (in seconds) to wait' '--test-timeout' 'Specify the timeout length (in seconds) to wait' '--configure-args' 'EXPERIMENTAL Pass arguments for configure command' '--build-args' 'EXPERIMENTAL Pass arguments for build command' '--test-args' 'EXPERIMENTAL Pass arguments for test command' '--install-args' 'EXPERIMENTAL Pass arguments for install command' '--format' 'DEPRECATED Determines what format to display the scanned dependency tree' '--save-dists' 'Specifies the optional directory path to copy downloaded tarballs' '--auto-cleanup' 'Specifies the number of days in which cpanm'"\\'"'s work directories expire')
    __cpanm_handle_options_flags

    case ${MYWORDS[$INDEX-1]} in
      --local-lib|-l)
      ;;
      --local-lib-contained|-L)
      ;;
      --mirror)
      ;;
      --from|-M)
      ;;
      --mirror-index)
      ;;
      --cpanmetadb)
      ;;
      --cpanfile)
      ;;
      --configure-timeout)
      ;;
      --build-timeout)
      ;;
      --test-timeout)
      ;;
      --configure-args)
      ;;
      --build-args)
      ;;
      --test-args)
      ;;
      --install-args)
      ;;
      --format)
        _cpanm_compreply "tree" "json" "yaml" "dists"
        return
      ;;
      --save-dists)
      ;;
      --auto-cleanup)
      ;;

    esac
    case $INDEX in
      0)
          __comp_current_options || return
            _cpanm__param_Modules_completion
      ;;


    *)
        __comp_current_options || return
    ;;
    esac

}

_cpanm_compreply() {
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

_cpanm__param_Modules_completion() {
    local CURRENT_WORD="${words[$cword]}"
    local param_Modules="$(\
( [[ "${CURRENT_WORD:0:1}" == . ]] || [[ "${CURRENT_WORD:0:1}" == / ]] ) \
  || ${ZCAT_BIN:-zcat} ${CPAN_PACKAGES_DETAILS:-~/.cpanm/sources/http%www.cpan.org/02packages.details.txt.gz} \
  | tail -n +8 \
  | cut -f 1 -d ' ' \
  | grep "^$CURRENT_WORD" \
  | head -${CPAN_MAX_MODULES:-10000})"
    _cpanm_compreply "$param_Modules"
}

__cpanm_dynamic_comp() {
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
    _cpanm_compreply ${comp[@]}
}

function __cpanm_handle_options() {
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

function __cpanm_handle_flags() {
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

__cpanm_handle_options_flags() {
    __cpanm_handle_options
    __cpanm_handle_flags
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
      __cpanm_dynamic_comp 'options' "$options_spec"

      return 1
    else
      return 0
    fi
}


complete -o default -F _cpanm cpanm

