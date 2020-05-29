# ZSH Theme - Preview: https://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png

# https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/
# http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Prompt-Expansion
# https://jonasjacek.github.io/colors/
# https://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html

local return_code="%(?.%F{10}√.%F{9}✗%f)" #local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if [[ $UID -eq 0 ]]; then
    local user_host='%{$terminfo[bold]$fg[red]%}%n@%m %{$reset_color%}'
    local user_symbol='#'
else
    local user_host='%F{10}%n%f%F{15}@%f%F{11}%m%f %F{15}in %f'
    local user_symbol='%F{178}$%f'
fi

local current_dir='%F{81}%1~ %f'
local git_branch='$(git_prompt_info)'
local rvm_ruby='$(ruby_prompt_info)'
local venv_prompt='$(virtualenv_prompt_info)'



ZSH_THEME_RVM_PROMPT_OPTIONS="i v g"

PROMPT="%B${return_code}%b
${user_host}${current_dir}${rvm_ruby}${git_branch}${venv_prompt}
%B${user_symbol}%b "
#RPROMPT="%B${return_code}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%F{10}git‹%F{7}"
ZSH_THEME_GIT_PROMPT_SUFFIX="›%f:" 							#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{10})%F{9}✗%f"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{10}%f"

ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[red]%}‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="› %{$reset_color%}"

ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX="%{$fg[green]%}‹"
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="› %{$reset_color%}"
ZSH_THEME_VIRTUALENV_PREFIX=$ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX
ZSH_THEME_VIRTUALENV_SUFFIX=$ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX
