#compdef jq

# Generated with perl module App::Spec v0.012

_jq() {
    local program=jq
    typeset -A opt_args
    local curcontext="$curcontext" state line context


        # ---- Command: 
        _arguments -s  \
            '1: :->filter' \
            '2: :->files' \
            '--arg[pre-set a variable to a string]:arg' \
            '--argjson[pre-set a variable to an object]' \
            '--ascii-output[restrict output to ASCII]' \
            '-a[restrict output to ASCII]' \
            '--color-output[output in color]' \
            '-C[output in color]' \
            '--compact-output[don'"'"'t pretty-print]' \
            '-c[don'"'"'t pretty-print]' \
            '--exit-status[report "false" and "null" results via exit code]' \
            '-e[report "false" and "null" results via exit code]' \
            '--from-file[read filter from file]:from-file:_files' \
            '-f[read filter from file]:from-file:_files' \
            '--indent[indent output using given number of spaces]:indent:("1" "2" "3" "4" "5" "6" "7" "8")' \
            '--join-output[like -r, without newlines between outputs]' \
            '-j[like -r, without newlines between outputs]' \
            '-L[prepend a directory to the module search path]:L:_files' \
            '--monochrome-output[output without color]' \
            '-M[output without color]' \
            '--null-input[input is ignored]' \
            '-n[input is ignored]' \
            '--raw-input[consider each input line as a JSON strings]' \
            '-R[consider each input line as a JSON strings]' \
            '--raw-output[don'"'"'t JSON-quote output if it'"'"'s a string]' \
            '-r[don'"'"'t JSON-quote output if it'"'"'s a string]' \
            '--seq[use application/json-seq ASCII RS/LF scheme in input and output]' \
            '--slurp[join input JSON objects to array before filtering]' \
            '-s[join input JSON objects to array before filtering]' \
            '--slurpfile[pre-set a variable to contents of a file]:slurpfile' \
            '--sort-keys[output object keys in sorted order]' \
            '-S[output object keys in sorted order]' \
            '--stream[parse input streamily (changes output)]' \
            '--tab[indent output using TAB characters]' \
            '--unbuffered[flush output after each JSON object]' \
            '--version[output jq'"'"'s version number]' \
            '--run-tests[Runs  the tests in the given file or standard input]:run-tests:_files' \
            '--help[Show command help]' \
            '-h[Show command help]' \
            && ret=0

        case $state in
        filter)

        ;;
        files)
_files
        ;;
        esac


}


__jq_dynamic_comp() {
    local argname="$1"
    local arg="$2"
    local comp="arg:$argname:(("
    local line
    while read -r line; do
        local name="$line"
        local desc="$line"
        name="${name%$'\t'*}"
        desc="${desc/*$'\t'}"
        comp="$comp$name"
        if [[ -n "$desc" && "$name" != "$desc" ]]; then
            comp="$comp\\:"'"'"$desc"'"'
        fi
        comp="$comp "
    done <<< "$arg"

    comp="$comp))"
    _alternative "$comp"
}

