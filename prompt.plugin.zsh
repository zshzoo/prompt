#
# prompt - Set zsh prompt.
#

#
# Functions
#

# Add prompt functions to fpath.
0=${(%):-%N}
fpath=(${0:A:h}/functions $fpath)

#
# Init
#

# Initialize Zsh's prompt system
autoload -Uz promptinit && promptinit

# Set the prompt if specified
typeset -ga prompt_theme
zstyle -a ':zshzoo:prompt' theme 'prompt_theme' \
  || prompt_theme=$ZSH_THEME

if [[ ${prompt_theme[1]} == "powerlevel10k" ]]; then
  # instant prompt
  typeset -g use_instaprompt
  if ! zstyle -t ':zshzoo:prompt:powerlevel10k:instaprompt' skip \
     && [[ ! -v __p9k_instant_prompt_sourced ]]
  then
    if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
      source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
    fi
  fi
  unset use_instaprompt
fi

if [[ $TERM == (dumb|linux|*bsd*) ]]; then
  prompt 'off'
elif (( $#prompt_theme > 0 )); then
  prompt "$prompt_theme[@]"
fi
unset prompt_theme
