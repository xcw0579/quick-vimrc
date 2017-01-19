# 前提：将本文件拷贝到 ~/.oh-my-zsh/themes/ 下
# 使用：在.zshrc加一行 ZSH_THEME="punchme"
#
#
# 如果需要适当修改，可以参考 https://code.tutsplus.com/tutorials/how-to-customize-your-command-prompt--net-24083
# 颜色 %{$fg[...]%}
# 重置颜色 %{$reset_color%}

# 获取当前路径
function get_pwd() {
    echo "[${PWD/$HOME/~}]"
}

# 前缀: %n表示用户名，%m表示主机名
PROMPT='%{$fg[white]%}%n $(get_pwd)%{$reset_color%} '

# 后缀: 显示分支 还有状态图标
RPROMPT='%{$fg[white]%}$(git_prompt_info)%{$reset_color%} %{$fg[white]%}$(git_prompt_status)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✈"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✭"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ✂"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%} ✱"
