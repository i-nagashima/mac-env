# プロンプト
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
PROMPT='%{$fg[green]%}%n@%m %{$fg[cyan]%}[%*] %{${reset_color}%}[%~] %{$fg[green]%}[$vcs_info_msg_0_]
%{${reset_color}%}-> %# '
zstyle ':vcs_info:git:*' formats '%b'

# zsh-completions の設定。コマンド補完機能
autoload -U compinit && compinit -u

# エイリアス
alias h='history 1'
#alias hall='history 1'
alias vi='vim'
alias c='clear'
alias desk='cd ~/Desktop'

# 色を使用出来るようにする
autoload -Uz colors
colors

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# cd なしでもディレクトリ移動
setopt auto_cd

# ビープ音の停止
setopt no_beep
# ビープ音の停止(補完時)
setopt nolistbeep

# cd [TAB] で以前移動したディレクトリを表示
setopt auto_pushd

# ヒストリ (履歴) を保存、数を増やす
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
# 同時に起動した zsh の間でヒストリを共有する
setopt share_history
# 直前と同じコマンドの場合はヒストリに追加しない
setopt hist_ignore_dups
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space
# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# [TAB] でパス名の補完候補を表示したあと、
# 続けて [TAB] を押すと候補からパス名を選択できるようになる
# 候補を選ぶには [TAB] か Ctrl-N,B,F,P
zstyle ':completion:*:default' menu select=1

# コマンドのスペルを訂正する
setopt correct

# cd した先のディレクトリをディレクトリスタックに追加する
# cd [TAB] でディレクトリのヒストリが表示されるので、選択して移動できる
# ※ ディレクトリスタック: 今までに行ったディレクトリのヒストリのこと
setopt auto_pushd

# pushd したとき、ディレクトリがすでにスタックに含まれていればスタックに追加しない
setopt pushd_ignore_dups

# git のカラー表示
git config --global color.ui auto


# rbenv
[[ -d ~/.rbenv  ]] && \
export PATH=${PATH}:${HOME}/.rbenv/bin && \
eval "$(rbenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# java
export JAVA_HOME=`/usr/libexec/java_home -v 11`
export PATH=$PATH:$JAVA_HOME/bin

# Android SDK
export ANDROID_SDK=/Users/i.nagashima/Library/Android/sdk
export ANDROID_SDK_ROOT=/Users/i.nagashima/Library/Android/sdk
export PATH=$PATH:/Users/i.nagashima/Library/Android/sdk/platform-tools
# Android NDK
export ANDROID_NDK_HOME=/Users/i.nagashima/Library/Android/sdk/ndk

# flutter
export PATH=$PATH:/Users/i.nagashima/.fvm/flutter_sdk/bin

# gnubin
export PATH=$PATH:/usr/local/opt/coreutils/libexec/gnubin
