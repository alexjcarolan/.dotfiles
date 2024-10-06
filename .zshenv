# Ensure that a non-login, non-interactive shell has a defined environment
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# Set env vars
export VISUAL=vim
export EDITOR="$VISUAL"

# Set aliases
alias -g macfetch="macchina"
alias -g gitfetch="onefetch"
