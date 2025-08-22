# Auto-Warpify
status --is-interactive

# Rust Cargo
set -gx PATH ~/.cargo/bin $PATH

# Flutter
set -gx PATH ~/flutter/bin $PATH

# Bun
set -gx PATH ~/.bun/bin $PATH

# LLVM
set -gx PATH /usr/local/opt/llvm/bin $PATH

# NVM
set -gx NVM_DIR $HOME/.nvm
mkdir -p $NVM_DIR
function nvm
    bass source (brew --prefix nvm)/nvm.sh ';' nvm $argv
end
