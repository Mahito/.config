###############################################
# Mahito .zshrc file
# initial setup file for only interactive zsh
# This file is read after .zshenv file is read
# Created by Mahito for 4.3.10
###############################################

# Set Shell variable
# WORDCHARS=$WORDCHARs:s,/,,

# 履歴サイズ、保存ファイル、保存数を設定
HISTSIZE=200 HISTFILE=~/.zhistory SAVEHIST=180

# プロンプト前方に"マシン名{ユーザ名}% "で表示
PROMPT='%m(%n)%% '

# プロンプト後方に"[カレントディレクトリ"]を表示
RPROMPT='[%~]'

# Set shell option
# Enable option is less mutable
# Disable option is conbiniente, but more mutable
setopt auto_cd auto_remove_slash auto_name_dirs
setopt extended_history hist_ignore_dups hist_ignore_space prompt_subst
setopt extended_glob list_types no_beep always_last_prompt
setopt cdable_vars sh_word_split auto_param_keys pushd_ignore_dups
#setopt auto_menu correct rm_star_silent sun_keyboard_hack
#setopt share_history inc_append_history

# Alias and functions
alias copy='cp -ip' del='rm -i' move='mv -i'
alias ls='ls -F' la='ls -a' ll='ls -la'
alias pu=pushd po=popd dirs='dirs -v'
alias .='source'
alias df='df -h' du='du -h'
alias vi='vim'
alias aptitude='sudo aptitude'
alias shutdown='sudo shutdown -h now'

mdcd () {mkdir -p "$@" && cd "$*[-1]"}
mdpu () {mkdir -p "$@" && pushd "$*[-1]"}

# Suffix aliases
alias -s dvi=xdvi
alias -s {odt,ods,odp,doc,xls,ppt}=soffice
alias -s {tgz,lzh,zip,arc}=file-roller

# binding keys
bindkey -e
#bindkey '^p' history-beginning-search-backward
#bindkey '^n' history-beginning-search-forward

# 補完システムを利用
zstyle ':completion:*' format '%BCompleting %d%b'
zstyle ':completion;*' group-name ''
autoload -U compinit && compinit

# Load RVM into a shell session *as a function*
[[ -s "/usr/local/rvm/scripts/rvm" ]] && . "/usr/local/rvm/scripts/rvm"
