tabs 4
export VISUAL=vim
export EDITOR="$VISUAL"
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\][\W]\[\033[00m\]\$ '

export VULKAN_SDK="$HOME/Documents/programming/online/vulkan-sdk/x86_64"
export VK_LAYER_PATH="$VULKAN_SDK/etc/vulkan/explicit_layer.d"
export LD_LIBRARY_PATH="$VULKAN_SDK/lib:${LD_LIBRARY_PATH:-}"
export VULKAN_SDK_PATH="$VULKAN_SDK"

PATH=""
PATH="$PATH:/usr/local/sbin"
PATH="$PATH:/usr/local/bin"
PATH="$PATH:/usr/sbin"
PATH="$PATH:/usr/bin"
PATH="$PATH:/sbin"
PATH="$PATH:/bin"
PATH="$PATH:/usr/games"
PATH="$PATH:/usr/local/games"
PATH="$PATH:/snap/bin"
PATH="$PATH:/usr/local/go/bin"
PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$HOME/.cargo/bin"
PATH="$PATH:$HOME/.hymn/bin"
PATH="$PATH:$VULKAN_SDK/bin"

export PATH

function ll {
  ls -l --color "$@"
}

function gg {
  ls -alF --color "$@"
}

function calc {
  python -c 'print('"$@"')'
}

