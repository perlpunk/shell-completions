#!bash

# Generated with perl module App::Spec v0.010

_file() {

    COMPREPLY=()
    local program=file
    local cur prev words cword
    _init_completion -n : || return
    declare -a FLAGS
    declare -a OPTIONS
    declare -a MYWORDS

    local INDEX=`expr $cword - 1`
    MYWORDS=("${words[@]:1:$cword}")

    FLAGS=('--apple' 'output file type and creator code as used by older MacOS versions' '--brief' 'Do not prepend filenames to output' '-b' 'Do not prepend filenames to output' '--compile' 'Write a magic.mgc output file' '-C' 'Write a magic.mgc output file' '--checking-printout' 'Cause a checking printout of the parsed form of the magic file' '-c' 'Cause a checking printout of the parsed form of the magic file' '-d' 'Prints internal debugging information' '-E' 'On filesystem errors, issue an error message and exit' '--extension' 'Print a slash-separated list of valid extensions' '--no-dereference' 'option causes symlinks not to be followed' '-h' 'option causes symlinks not to be followed' '--mime' 'Causes the file command to output mime type strings' '-i' 'Causes the file command to output mime type strings' '--keep-going' 'Don'"\\'"'t stop at the first match' '-k' 'Don'"\\'"'t stop at the first match' '--list' 'Shows a list of patterns and their strength' '-l' 'Shows a list of patterns and their strength' '--dereference' 'option causes symlinks to be followed' '-L' 'option causes symlinks to be followed' '--no-pad' 'Dont pad filenames' '-N' 'Dont pad filenames' '--no-buffer' 'Force stdout to be flushed after checking each file' '-n' 'Force stdout to be flushed after checking each file' '--preserve-date' 'attempt to preserve the access time of files' '-p' 'attempt to preserve the access time of files' '--raw' 'Dont translate unprintable characters to \ooo' '-r' 'Dont translate unprintable characters to \ooo' '--special-files' 'causes file to also read argument files which are block or character special files' '-s' 'causes file to also read argument files which are block or character special files' '--version' 'Print the version of the program and exit' '-v' 'Print the version of the program and exit' '--uncompress' 'Try to look inside compressed files' '-z' 'Try to look inside compressed files' '--uncompress-noreport' 'Like uncompress, but report information about the contents only not the compression' '-Z' 'Like uncompress, but report information about the contents only not the compression' '--print0' 'Output a null character \0 after the end of the filename' '-0' 'Output a null character \0 after the end of the filename' '--mime-type' 'Like --mime, but print only the specified element(s)' '--mime-encoding' 'Like --mime, but print only the specified element(s)' '--help' 'Show command help' '-h' 'Show command help')
    OPTIONS=('--seperator' 'Use the specified string as the separator' '-F' 'Use the specified string as the separator' '--files-from' 'Read the names of the files to be examined from file' '-f' 'Read the names of the files to be examined from file' '--magic-file' 'Specify an alternate list of files and directories containing magic' '-m' 'Specify an alternate list of files and directories containing magic' '--exclude' 'Exclude named tests from the list of tests made to determine the file type' '-e' 'Exclude named tests from the list of tests made to determine the file type' '--parameter' 'Set various parameter limits' '-P' 'Set various parameter limits')
    __file_handle_options_flags

    case ${MYWORDS[$INDEX-1]} in
      --seperator|-F)
      ;;
      --files-from|-f)
      ;;
      --magic-file|-m)
      ;;
      --exclude|-e)
        _file_compreply "apptype" "ascii" "encoding" "tokens" "cdf" "compress" "elf" "soft" "tar" "text"
        return
      ;;
      --parameter|-P)
        _file_compreply "indir=" "name=" "elf_notes=" "elf_phnum=" "elf_shnum=" "regex=" "bytes="
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

_file_compreply() {
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


__file_dynamic_comp() {
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
    _file_compreply ${comp[@]}
}

function __file_handle_options() {
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

function __file_handle_flags() {
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

__file_handle_options_flags() {
    __file_handle_options
    __file_handle_flags
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
      __file_dynamic_comp 'options' "$options_spec"

      return 1
    else
      return 0
    fi
}


complete -o default -F _file file

