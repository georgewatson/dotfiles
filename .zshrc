# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
#export ZSH=/home/userfs/g/gw639/.oh-my-zsh
export ZSH=/home/george/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"

#POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh context dir vcs dir_writable)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode status command_execution_time background_jobs time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_OK=false
#POWERLEVEL9K_SSH_ICON="ssh"
POWERLEVEL9K_SSH_ICON="\uf0c1"
#POWERLEVEL9K_CARRIAGE_RETURN_ICON="↵"
POWERLEVEL9K_CARRIAGE_RETURN_ICON=""
#POWERLEVEL9K_EXECUTION_TIME_ICON=""
POWERLEVEL9K_EXECUTION_TIME_ICON="\uf017"
POWERLEVEL9K_VI_INSERT_MODE_STRING="INS"
POWERLEVEL9K_VI_COMMAND_MODE_STRING="NOR"
POWERLEVEL9K_VCS_GIT_ICON=""
POWERLEVEL9K_VCS_GIT_GITHUB_ICON="\uf113"
POWERLEVEL9K_SHOW_CHANGESET="true"
POWERLEVEL9k_BACKGROUND_JOBS_ICON=""
POWERLEVEL9K_VCS_GIT_HOOKS=(git-untracked git-aheadbehind git-stash git-remotebranch vcs-detect-changes git-tagname)

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%{%F{249}%}\u250f"
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%F{249}%}\u2517%{%F{default}%} "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%F{white}"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460 %h%F{default} "

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=' '
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
#POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=''
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="clear"
POWERLEVEL9K_SSH_BACKGROUND="clear"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="red"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="blue"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="clear"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="blue"
POWERLEVEL9K_TIME_BACKGROUND="clear"
POWERLEVEL9K_TIME_FOREGROUND="white"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND="clear"
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="green"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="clear"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="clear"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="yellow"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="yellow"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="clear"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="magenta"
POWERLEVEL9K_HISTORY_BACKGROUND="clear"
POWERLEVEL9K_HISTORY_FOREGROUND="gray"
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND="clear"
POWERLEVEL9K_VI_MODE_COMMAND_BACKGROUND="clear"
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND="clear"
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND="clear"

ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(history git git-flow taskwarrior rsync zsh-syntax-highlighting vi-mode extract)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

# Vi keybindings
bindkey -v
export KEYTIMEOUT=1

# But keep some of the useful emacs bindings
bindkey "^R" history-incremental-search-backward
bindkey -M vicmd "/" history-incremental-search-backward
# If you really want push-line, do this
# But you think you're a vim wizard so dd and P are better
stty -ixon
bindkey "^q" push-line

# Expand ! history on space
bindkey ' ' magic-space

# Hit e in command mode to edit in vim
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd e edit-command-line

TIMEFMT=$'%J\nReal\t%*E\nUser\t%*U\nSystem\t%*S\n%P CPU'

DEFAULT_USER="george"

setopt autocd
#setopt histignorealldups
unsetopt histignorealldups
setopt promptsubst

export EDITOR=vim
export BROWSER=vivaldi

alias viv="vivaldi </dev/null >/dev/null 2>&1 & disown"
alias kraken="gitkraken </dev/null >/dev/null 2>&1 & disown"
alias tasks="while true; do clear; task next; sleep 10; done"

export AMBERHOME="/software/Ambertools16/amber16"

# From $AMBERHOME/amber.sh
export PATH="${AMBERHOME}/bin:${PATH}"
# Add location of Amber Python modules to default Python search path
if [ -z "$PYTHONPATH" ]; then
    export PYTHONPATH="${AMBERHOME}/lib/python2.7/site-packages"
else
    export PYTHONPATH="${AMBERHOME}/lib/python2.7/site-packages:${PYTHONPATH}"
fi
if [ -z "${LD_LIBRARY_PATH}" ]; then
   export LD_LIBRARY_PATH="${AMBERHOME}/lib"
else
   export LD_LIBRARY_PATH="${AMBERHOME}/lib:${LD_LIBRARY_PATH}"
fi

# Source rupa/z
#. ~/scripts/z.sh

# Font maps
#source ~/.fonts/*.sh

# Solarized colours in ls
eval `dircolors ~/.dircolors`

## History stuff
### Command history configuration
#if [ -z "$HISTFILE" ]; then
#    HISTFILE=$HOME/.zsh_history
#fi
#
#HISTSIZE=10000
#SAVEHIST=10000
#
## Show history
#case $HIST_STAMPS in
#  "mm/dd/yyyy") alias history='fc -fl 1' ;;
#  "dd.mm.yyyy") alias history='fc -El 1' ;;
#  "yyyy-mm-dd") alias history='fc -il 1' ;;
#  *) alias history='fc -l 1' ;;
#esac

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

# Ugly hack to fix history number in prompt
# TODO: This mildly breaks command_execution_time; fix that

# prompt_history() {
#     HISTORYSIZE=$(grep -c '^:' $HISTFILE)
#     "$1_prompt_segment" "$0" "$2" "244" "$DEFAULT_COLOR" "$(($HISTORYSIZE + 1))"
# }
#count_hist () {
#    HISTORYSIZE=$(grep -c '^:' $HISTFILE)
#    POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460 $(($HISTORYSIZE + 1))%F{default} "
#}

#function zle-line-init {
#  count_hist
#  powerlevel9k_prepare_prompts
#  if (( ${+terminfo[smkx]} )); then
#    printf '%s' ${terminfo[smkx]}
#  fi
#  zle reset-prompt
#  zle -R
#}

#function zle-line-finish {
#  count_hist
#  powerlevel9k_prepare_prompts
#  if (( ${+terminfo[rmkx]} )); then
#    printf '%s' ${terminfo[rmkx]}
#  fi
#  zle reset-prompt
#  zle -R
#}
#
##zle -N zle-line-init
#zle -N zle-line-finish

# For 3DNA
#export X3DNA="/software/x3dna-v2.3"
#export PATH="/software/x3dna-v2.3/bin:$PATH"

# Custom continuation prompt
export PS2="%F{blue}        %F{normal}"

# Shorter aliases of already-aliased rsync-copy and rsync-move
# Should work as drop-in replacements for cp and mv
# Not rcp & rmv because it's to easy to typo rmv as rm
alias cpr="rsync-copy --no-perms -O" # Use this one all the time; it's better
alias mvr=rsync-move # Use only when copying between partitions

# Allow fancier glob syntax using #, ~, and ^
# #: Matches zero or more of previous pattern (x# matches a, x, and xx)
# ##: Matches one or more of previous pattern (x## matches x and xx)
# ^: Negation (e.g. ^*.txt matches everything not ending .txt)
# ~: AND NOT (e.g. *.pdb~*.min.pdb matches foo.pdb but not foo.min.pdb)
# Also allows fuzzy matching (e.g. (#a1)foo matches boo and ofo)
setopt extended_glob

# Standard error in red; requires git:sickill/stderred
#export LD_PRELOAD="/home/userfs/g/gw639/stderred/build/libstderred.so${LD_PRELOAD:+:$LD_PRELOAD}"
# TODO: Get stderred working

# Add gem executables to path
export PATH=$PATH:'/home/userfs/g/gw639/.gem/ruby/2.3.0/bin'

# Add custom scripts to END of $PATH
export PATH=$PATH:'/home/userfs/g/gw639/myscripts'

# Disable hostname completion
zstyle ':completion:*' hosts off

alias qjobs="watch 'qstat | cut -c-$COLUMNS'"

show()
{
    pygmentize $1 2>/dev/null || cat $1
}
# Copy tab completion from cat
compdef show=cat

alias tmux="tmux -2"
alias irssi='TERM=screen-256color irssi'

alias gcasm='git commit -a -S -m'

# Make connecting to the university VPN easier
alias yorkvpn='/usr/local/pulse/pulsesvc -h webvpn.york.ac.uk -u gw639 -r york_users_realm'
alias vpnstatus='/usr/local/pulse/pulsesvc -S'

source ~/.zshrc.local
