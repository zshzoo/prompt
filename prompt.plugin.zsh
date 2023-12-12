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
local -a prompt_theme
zstyle -a ':zshzoo:prompt' theme 'prompt_argv'
if [[ $TERM == (dumb|linux|*bsd*) ]]; then
  prompt 'off'
elif (( $#prompt_argv > 0 )); then
  prompt "$prompt_argv[@]"
fi
unset prompt_argv
