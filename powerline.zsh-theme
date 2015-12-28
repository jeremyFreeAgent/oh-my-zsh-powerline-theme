# FreeAgent puts the powerline style in zsh !

#Two-line version modified by brucehsu
#Some code borrowed from Phil's Prompt and bira theme
#http://aperiodic.net/phil/prompt/


POWERLINE_COLOR_BG_GRAY=%K{240}
POWERLINE_COLOR_BG_LIGHT_GRAY=%K{240}
POWERLINE_COLOR_BG_WHITE=%K{255}
POWERLINE_COLOR_BG_PURPLE=%K{225}

POWERLINE_COLOR_FG_GRAY=%F{240}
POWERLINE_COLOR_FG_LIGHT_GRAY=%F{240}
POWERLINE_COLOR_FG_WHITE=%F{255}


GIT_DIRTY_COLOR=%F{124}
GIT_CLEAN_COLOR=%F{118}
GIT_PROMPT_INFO=%F{012}

ZSH_THEME_GIT_PROMPT_PREFIX=" \u2b60 "
ZSH_THEME_GIT_PROMPT_SUFFIX="$GIT_PROMPT_INFO"
ZSH_THEME_GIT_PROMPT_DIRTY=" $GIT_DIRTY_COLOR✘ "
ZSH_THEME_GIT_PROMPT_CLEAN=" $GIT_CLEAN_COLOR✔ "

ZSH_THEME_GIT_PROMPT_ADDED="%F{082}✚%f"
ZSH_THEME_GIT_PROMPT_MODIFIED="%F{166}✹%f"
ZSH_THEME_GIT_PROMPT_DELETED="%F{160}✖%f"
ZSH_THEME_GIT_PROMPT_RENAMED="%F{220]➜%f"
ZSH_THEME_GIT_PROMPT_UNMERGED="%F{082]═%f"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{190]✭%f"


function get_git_branch() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return 0
    ref=${ref#refs/heads/}
    echo "$ref       "
}

function get_zsh_pwd() {
    path=`echo $PWD | awk -F/ '{print $NF}'`
    if [ "$PWD" = "$HOME" ]; then
	path='~'
    fi
    echo $path
}

function get_rbenv_version() {
    rb_ver=`rbenv version | awk '{print $1}'`
    echo $rb_ver
}

local pl_static_len=34

local pl_rvm_info='%K{166}%F{216} $(rvm-prompt i v g)'" %k%f""%F{166}%K{129}"$'\u2b80'%f
local pl_rbenv_info='%K{166}%F{216}$(get_rbenv_version)'" %k%f""%F{166}%K{129}"$'\u2b80'%f
local pl_nvm_info='%K{166}%F{216}$(nvm current)'" %k%f""%F{166}%K{129}"$'\u2b80'%f
local pl_dir="%F{black}%K{118} %1~ %k%F{118}%K{075}"$'\u2b80'"%f%k"
local pl_git_branch="%K{075}%F{237}"$'`git_prompt_info`'" %k%f%F{075}%K{166}"$'\u2b80'" %f%k"
local pl_info="${pl_dir}${pl_git_branch}${pl_nvm_info}"

local pl_fill='${(l.((${COLUMNS}+2-${#$(get_git_branch)}-${#$(get_zsh_pwd)}-${#$(nvm current)}-$pl_static_len))...)}'

local pl_time=$POWERLINE_COLOR_FG_WHITE$'\u2b82'"%f$POWERLINE_COLOR_BG_WHITE $POWERLINE_COLOR_FG_GRAY%D{%H:%M:%S} "$'\u2b82'"%f%k$POWERLINE_COLOR_BG_GRAY$POWERLINE_COLOR_FG_WHITE %D{%Y-%m-%d} %f%k"

local pl_user="%K{blue}%F{white} %n %f%k%F{blue}%K{white}"$'\u2b80'"%f%k"
local pl_host="%K{white}%F{black}@%m%k%f%F{white}"$'\u2b80'"%f%k"

PROMPT="
${pl_info}${pl_fill}${pl_time}
${pl_user}${pl_host} "

#RPROMPT=$POWERLINE_COLOR_FG_WHITE$'\u2b82'"%f$POWERLINE_COLOR_BG_WHITE $POWERLINE_COLOR_FG_GRAY%D{%H:%M:%S}  "$'\u2b82'"%f%k$POWERLINE_COLOR_BG_GRAY$POWERLINE_COLOR_FG_WHITE %D{%Y-%m-%d} %f%k"
