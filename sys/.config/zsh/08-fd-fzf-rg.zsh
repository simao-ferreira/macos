export FZF_DEFAULT_OPTS='--ansi --sort --multi --height 60% --layout=reverse'

# Find file, directory, extension
alias fdf='fd -c always -H -tf'
alias fdd='fd -c always -H -td'
alias fde='fd -c always -H -e'

# Find in dir - with tree 
function fdir() {
    PREFIX='fd -c always -H -td'
    local dir
    dir="$(
        FZF_DEFAULT_COMMAND="$PREFIX '$1'" \
            fzf --preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200' \
                --phony -q "$1" \
                --bind "change:reload:$PREFIX {q}" \
                --preview-window="60%:wrap"
    )" &&
    echo "opening $dir" &&
    cd "$dir"
}

# Find file in dirs 
function ffile() {
    PREFIX='fd -c always -H -tf'
    local file
	file="$(
		FZF_DEFAULT_COMMAND="$PREFIX '$1'" \
            fzf --preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200' \
                --phony -q "$1" \
                --bind "change:reload:$PREFIX {q}" \
                --preview-window="60%:wrap"
 	)" &&
	echo "opening $file" &&
	idea "$file"
}

# Find in files
function fif() {
	PREFIX="rg --files-with-matches \
        --hidden \
        --ignore-file $XDG_CONFIG_HOME/fd/ignore"
	local file
	file="$(
		FZF_DEFAULT_COMMAND="$PREFIX '$1'" \
            fzf --preview="[[ ! -z {} ]] && rg --pretty --context 5 {q} {}" \
				--phony -q "$1" \
				--bind "change:reload:$PREFIX {q}" \
				--preview-window="60%:wrap"
	)" &&
	echo "opening $file" &&
	idea "$file"
}
