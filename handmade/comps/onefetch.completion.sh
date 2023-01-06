_onefetch() {
    local i cur prev opts cmds
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    cmd=""
    opts=""

    for i in ${COMP_WORDS[@]}
    do
        case "${cmd},${i}" in
            ",$1")
                cmd="onefetch"
                ;;
            *)
                ;;
        esac
    done

    case "${cmd}" in
        onefetch)
            opts="-a -c -d -i -n -e -l -p -o -t -z -E -T -h -V --ascii-input --ascii-language --ascii-colors --disabled-fields --image --image-protocol --color-resolution --no-bold --no-merges --no-color-palette --number-of-authors --exclude --no-bots --languages --package-managers --output --true-color --show-logo --text-colors --iso-time --email --include-hidden --type --generate --help --version [INPUT]"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --ascii-input)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ascii-language)
                    COMPREPLY=($(compgen -W "abnf abap ada assembly autohotkey bash c cmake c# ceylon clojure coffeescript coq c++ crystal css d dart dockerfile emacs-lisp elixir elm emojicode erlang f# fish forth fortran fortranmodern gdscript go graphql groovy haskell haxe hcl holyc html idris java javascript json jsonnet jsx julia jupyter-notebooks kotlin llvm lisp lua markdown nim nix ocaml objective-c org perl raku php powershell processing prolog protocol-buffers purescript python qml r racket renpy ruby rust sass scala scheme shell solidity sql svelte swift systemverilog tcl tex toml tsx typescript vala verilog vhdl vimscript vue webassembly wolfram xsl xaml xml yaml zig zsh" -- "${cur}"))
                    return 0
                    ;;
                -a)
                    COMPREPLY=($(compgen -W "abnf abap ada assembly autohotkey bash c cmake c# ceylon clojure coffeescript coq c++ crystal css d dart dockerfile emacs-lisp elixir elm emojicode erlang f# fish forth fortran fortranmodern gdscript go graphql groovy haskell haxe hcl holyc html idris java javascript json jsonnet jsx julia jupyter-notebooks kotlin llvm lisp lua markdown nim nix ocaml objective-c org perl raku php powershell processing prolog protocol-buffers purescript python qml r racket renpy ruby rust sass scala scheme shell solidity sql svelte swift systemverilog tcl tex toml tsx typescript vala verilog vhdl vimscript vue webassembly wolfram xsl xaml xml yaml zig zsh" -- "${cur}"))
                    return 0
                    ;;
                --ascii-colors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --disabled-fields)
                    COMPREPLY=($(compgen -W "title project head pending version created languages dependencies authors last-change contributors repo commits lines-of-code size license" -- "${cur}"))
                    return 0
                    ;;
                -d)
                    COMPREPLY=($(compgen -W "title project head pending version created languages dependencies authors last-change contributors repo commits lines-of-code size license" -- "${cur}"))
                    return 0
                    ;;
                --image)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -i)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --image-protocol)
                    COMPREPLY=($(compgen -W "kitty sixel iterm" -- "${cur}"))
                    return 0
                    ;;
                --color-resolution)
                    COMPREPLY=($(compgen -W "16 32 64 128 256" -- "${cur}"))
                    return 0
                    ;;
                --number-of-authors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -n)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --exclude)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -e)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --no-bots)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -W "json yaml" -- "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -W "json yaml" -- "${cur}"))
                    return 0
                    ;;
                --true-color)
                    COMPREPLY=($(compgen -W "auto never always" -- "${cur}"))
                    return 0
                    ;;
                --show-logo)
                    COMPREPLY=($(compgen -W "auto never always" -- "${cur}"))
                    return 0
                    ;;
                --text-colors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -t)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --type)
                    COMPREPLY=($(compgen -W "programming markup prose data" -- "${cur}"))
                    return 0
                    ;;
                -T)
                    COMPREPLY=($(compgen -W "programming markup prose data" -- "${cur}"))
                    return 0
                    ;;
                --generate)
                    COMPREPLY=($(compgen -W "bash elvish fish powershell zsh" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
    esac
}

complete -F _onefetch -o bashdefault -o default onefetch
