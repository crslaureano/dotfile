# Setup fzf
# ---------
if [[ ! "$PATH" == */home/n1rf/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/n1rf/.fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/n1rf/.fzf/shell/completion.zsh"

# Key bindings
# ------------
source "/home/n1rf/.fzf/shell/key-bindings.zsh"
