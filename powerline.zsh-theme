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

local rvm_ruby_info='%F{216} $(rvm-prompt i v g)'" %k%f""%F{166}%K{162}"$'\u2b80'%f

#local TERMWIDTH
#(( TERMWIDTH = ${COLUMNS} - 1 ))

#local timelen=15

local time=$POWERLINE_COLOR_FG_WHITE$'\u2b82'"%f$POWERLINE_COLOR_BG_WHITE $POWERLINE_COLOR_FG_GRAY%D{%H:%M:%S}  "$'\u2b82'"%f%k$POWERLINE_COLOR_BG_GRAY$POWERLINE_COLOR_FG_WHITE %D{%Y-%m-%d} %f%k"
local info="%k%f%F{black}%K{118} %1~ %k""%F{118}%K{075}"$'\u2b80'""%f"%F{237}"$'`git_prompt_info`'" %k%f""%F{075}%K{166}"$'\u2b80'"$rvm_ruby_info"

#local pwdsize=${#${%~}}

#PR_FILLBAR=""
#PR_PWDLEN=""
#typeset -A altchar
#set -A altchar ${(s..)terminfo[acsc]}
#PR_HBAR=${altchar[ ]: }


PROMPT="
"$info""$time"
%K{blue}%F{white} %n %f%F{blue}%K{white}"$'\u2b80'"%F{black}@%m%k%f%F{white}"$'\u2b80'"%f%k "

#RPROMPT=$POWERLINE_COLOR_FG_WHITE$'\u2b82'"%f$POWERLINE_COLOR_BG_WHITE $POWERLINE_COLOR_FG_GRAY%D{%H:%M:%S}  "$'\u2b82'"%f%k$POWERLINE_COLOR_BG_GRAY$POWERLINE_COLOR_FG_WHITE %D{%Y-%m-%d} %f%k"
