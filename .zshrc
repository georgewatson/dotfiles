# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="powerlevel10k/powerlevel10k"

source ~/.p10k.zsh

#POWERLEVEL9K_MODE='awesome-fontconfig'
#POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_MODE='default'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh context dir vcs dir_writable newline prompt_char)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time background_jobs)
typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
    # =========================[ Line #1 ]=========================
    status                  # exit code of the last command
    command_execution_time  # duration of the last command
    background_jobs         # presence of background jobs
    direnv                  # direnv status (https://direnv.net/)
    virtualenv              # python virtual environment (https://docs.python.org/3/library/venv.html)
    anaconda                # conda environment (https://conda.io/)
    pyenv                   # python environment (https://github.com/pyenv/pyenv)
    goenv                   # go environment (https://github.com/syndbg/goenv)
    nodenv                  # node.js version from nodenv (https://github.com/nodenv/nodenv)
    nvm                     # node.js version from nvm (https://github.com/nvm-sh/nvm)
    nodeenv                 # node.js environment (https://github.com/ekalinin/nodeenv)
    # node_version          # node.js version
    # go_version            # go version (https://golang.org)
    # rust_version          # rustc version (https://www.rust-lang.org)
    # dotnet_version        # .NET version (https://dotnet.microsoft.com)
    rbenv                   # ruby version from rbenv (https://github.com/rbenv/rbenv)
    rvm                     # ruby version from rvm (https://rvm.io)
    fvm                     # flutter version management (https://github.com/leoafarias/fvm)
    luaenv                  # lua version from luaenv (https://github.com/cehoffman/luaenv)
    jenv                    # java version from jenv (https://github.com/jenv/jenv)
    plenv                   # perl version from plenv (https://github.com/tokuhirom/plenv)
    kubecontext             # current kubernetes context (https://kubernetes.io/)
    terraform               # terraform workspace (https://www.terraform.io)
    aws                     # aws profile (https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html)
    aws_eb_env              # aws elastic beanstalk environment (https://aws.amazon.com/elasticbeanstalk/)
    azure                   # azure account name (https://docs.microsoft.com/en-us/cli/azure)
    gcloud                  # google cloud cli acccount and project (https://cloud.google.com/)
    google_app_cred         # google application credentials (https://cloud.google.com/docs/authentication/production)
    context                 # user@hostname
    nordvpn                 # nordvpn connection status, linux only (https://nordvpn.com/)
    ranger                  # ranger shell (https://github.com/ranger/ranger)
    nnn                     # nnn shell (https://github.com/jarun/nnn)
    vim_shell               # vim shell indicator (:sh)
    midnight_commander      # midnight commander shell (https://midnight-commander.org/)
    # vpn_ip                # virtual private network indicator
    # ram                   # free RAM
    # load                  # CPU load
    todo                    # todo items (https://github.com/todotxt/todo.txt-cli)
    # time                  # current time
    # =========================[ Line #2 ]=========================
    newline
    # public_ip             # public IP address
    # proxy                 # system-wide http/https/ftp proxy
    # battery               # internal battery
    # example               # example user-defined segment (see prompt_example function below)
)
typeset -g POWERLEVEL9K_KUBECONTEXT_SHOW_ON_COMMAND='kubectl|helm|kubens|kubectx'
typeset -g POWERLEVEL9K_AWS_SHOW_ON_COMMAND='aws|awless|terraform|pulumi'
typeset -g POWERLEVEL9K_AZURE_SHOW_ON_COMMAND='az|terraform|pulumi'
typeset -g POWERLEVEL9K_GCLOUD_SHOW_ON_COMMAND='gcloud|gcs'
typeset -g POWERLEVEL9K_GOOGLE_APP_CRED_SHOW_ON_COMMAND='terraform|pulumi'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_OK=false
#POWERLEVEL9K_SSH_ICON="ssh"
#POWERLEVEL9K_CARRIAGE_RETURN_ICON="↵"
POWERLEVEL9K_CARRIAGE_RETURN_ICON="!"
POWERLEVEL9K_EXECUTION_TIME_ICON=""
#POWERLEVEL9K_EXECUTION_TIME_ICON="\uf017"
POWERLEVEL9K_VI_INSERT_MODE_STRING=":"
POWERLEVEL9K_VI_COMMAND_MODE_STRING="#"
POWERLEVEL9K_VCS_GIT_ICON="[git]"
POWERLEVEL9K_VCS_GIT_GITHUB_ICON="[gh]"
POWERLEVEL9K_SHOW_CHANGESET="true"
POWERLEVEL9k_BACKGROUND_JOBS_ICON="*"
POWERLEVEL9K_VIRTUALENV_ICON="[py]"
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_ETC_ICON=''
POWERLEVEL9K_SSH_ICON='[ssh]'
POWERLEVEL9K_VCS_GIT_HOOKS=(git-untracked git-aheadbehind git-stash git-remotebranch vcs-detect-changes git-tagname)

#POWERLEVEL9K_TRANSIENT_PROMPT=same-dir

POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%{%F{249}%}\u250f"
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%F{249}%}\u2517%{%F{default}%} "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460 %h%F{default} "
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\uf460%F{default} "

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=' '
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=' '
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=' '
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=' '
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
POWERLEVEL9K_TIME_FOREGROUND="014"
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
POWERLEVEL9K_VIRTUALENV_BACKGROUND="clear"
POWERLEVEL9K_VIRTUALENV_FOREGROUND="green"

# Fun icons in December
month=$(date '+%m')
if [ $month -eq 12 ]
then
    POWERLEVEL9K_HOME_ICON="🎄"
fi

################################[ prompt_char: prompt symbol ]##################
# Blue prompt in insert mode
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VIVIS,VIOWR}_FOREGROUND="blue"
# Red prompt on error
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VIVIS,VIOWR}_FOREGROUND="red"
# Grey prompt in normal mode
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VICMD_FOREGROUND="gray"
# Prompt points right in insert mode
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIINS_CONTENT_EXPANSION=':'
# Prompt points left in normal mode
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VICMD_CONTENT_EXPANSION='#'
# Enable changing prompt
typeset -g POWERLEVEL9K_PROMPT_CHAR_OVERWRITE_STATE=true
typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL=''

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
export BROWSER=qutebrowser

# Solarized colours in ls
eval `dircolors ~/.dircolors`

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
#setopt share_history

unsetopt share_history
setopt no_share_history

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

# Custom continuation prompt
export PS2="%F{blue} ;  %F{normal}"

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

# Disable hostname completion
zstyle ':completion:*' hosts off

alias qjobs="watch 'qstat | cut -c-$COLUMNS'"

show()
{
    pygmentize -O style=native $1 2>/dev/null || cat $1
}
# Copy tab completion from cat
compdef show=cat

alias tmux="tmux -2"
alias irssi='TERM=screen-256color irssi'

alias gcasm='git commit -a -S -m'

# Make connecting to the university VPN easier
# alias yorkvpn='/usr/local/pulse/pulsesvc -h webvpn.york.ac.uk -u gw639 -r york_users_realm'
alias yorkvpn='sudo openconnect --protocol=nc --no-dtls webvpn.york.ac.uk -u gw639'
alias splitvpn='sudo openconnect --protocol=nc --no-dtls webvpn.york.ac.uk/split -u gw639'
# alias vpnstatus='/usr/local/pulse/pulsesvc -S'

# thefuck
eval $(thefuck --alias)

# Open rtv content in a new browser window
export RTV_BROWSER='qutebrowser'

alias dropdown='nohup konsole -name __dropdown &'
alias feh='feh --scale-down --auto-zoom --image-bg "#333333" --conversion-timeout 1'
alias neofetch='neofetch --ascii_colors 6 7 1 2 3 4'

# Open .md file in vim & .pdf in zathura simultaneously
note () {
    echo "${1:r}.pdf"
    zathura "${1:r}.pdf" &
    if [ -f "$1" ]; then
        vim "$1"
    else
        vim "${1:r}.md"
    fi
}

# "Do not disturb"
dnd () {
    nohup ~/dotfiles/do_not_disturb.sh $1 &
}

alias todo='while true; do clear && task && sleep 10; done'

source ~/.zshrc.local

PATH="/home/george/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/george/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/george/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/george/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/george/perl5"; export PERL_MM_OPT;

export PATH=$HOME/go/bin:$PATH

source $ZSH/oh-my-zsh.sh
