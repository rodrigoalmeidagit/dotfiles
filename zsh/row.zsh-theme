function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '>' && return
    hg root >/dev/null 2>/dev/null && echo 'Hg' && return
    echo '>'
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

PROMPT='%F{#fc2f00}%}%n%{$reset_color%} at %F{#eac435}%m%{$reset_color%} in %{$fg_bold[green]%}%~%{$reset_color%}$(git_prompt_info)
$(virtualenv_info)$(prompt_char) '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %F{#957fef}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} ✗"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%} ?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
