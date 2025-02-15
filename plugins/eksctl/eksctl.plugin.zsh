if (( ! $+commands[eksctl] )); then
  return
fi

# Ensure the cache directory exists
mkdir -p "$ZSH_CACHE_DIR/completions"

# Generate completions only if they don't exist or are outdated
if [[ ! -f "$ZSH_CACHE_DIR/completions/_eksctl" ]]; then
  eksctl completion zsh 2> /dev/null >| "$ZSH_CACHE_DIR/completions/_eksctl"
fi

# Source the completions
source "$ZSH_CACHE_DIR/completions/_eksctl"

# Optionally include anywhere completions if needed
if [[ ! -f "$ZSH_CACHE_DIR/completions/_eksctl_anywhere" ]]; then
  eksctl anywhere completion zsh 2> /dev/null >| "$ZSH_CACHE_DIR/completions/_eksctl_anywhere"
fi
source "$ZSH_CACHE_DIR/completions/_eksctl_anywhere"

# create a function for which the anywhere completions are correctly registered
anywhere() {
  eksctl anywhere "$@"
}
# create also a shorter alias
alias an='anywhere'
