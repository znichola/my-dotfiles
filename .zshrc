# PLUS whatever is default with a ohmyzsh install

# alias code="flatpak run com.visualstudio.code"

export EDITOR=vim
export PATH=$HOME/lib/unisonlanguage:$PATH
# for pip insalled packages
export PATH="$HOME/.local/bin:$PATH"

# After downloading the vscode binary to sgoinfre
export PATH="/home/znichola/sgoinfre/VSCode-linux-x64/bin/:$PATH"

export PATH="/home/znichola/sgoinfre/ocaml/:$PATH"

# BEGIN opam configuration

# Ensure opam knows it's already configured in sgoingre
export OPAMROOT=/sgoinfre/znichola/.opam


# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/sgoinfre/znichola/.opam/opam-init/init.zsh' ]] || source '/sgoinfre/znichola/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration
