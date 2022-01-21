
# パス
export PATH=/usr/local/bin:$PATH
# デフォルトエディタ
export EDITOR=vim
# 文字コードの指定
export LANG=ja_JP.UTF-8


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/i.nagashima/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/i.nagashima/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/i.nagashima/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/i.nagashima/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

