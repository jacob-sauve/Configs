# Colored man pages
export LESS_TERMCAP_mb=$'\e[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\e[1;31m'     # begin blink
export LESS_TERMCAP_me=$'\e[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\e[1;33;44m'  # begin reverse video (standout)
export LESS_TERMCAP_se=$'\e[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\e[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\e[0m'        # reset underline
export GROFF_NO_SGR=1                  # don't use SGR


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

${HOME}/bash_testing/foxsay.sh "$(${HOME}/bash_testing/quote.sh)"


autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{magenta}${vcs_info_msg_0_}%f$ '


export PATH="$HOME/.local/bin:/opt/homebrew/bin:/usr/local/bin:$PATH"
eval "$(zoxide init zsh)"
alias cd=z
alias clone="~/.clone.sh"
alias jv='source ${HOME}/Documents/PythonTinkering/venv/bin/activate'
alias jd=deactivate


# default fzf options to have preview and nice-looking ui
# source: https://github.com/junegunn/fzf/blob/master/README.md#customizing-the-look
export FZF_DEFAULT_OPTS="
    --style full \
    --preview 'fzf-preview.sh {}' \
    --bind 'focus:transform-header:file --brief {}'"

