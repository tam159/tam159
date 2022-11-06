# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path
export PATH=/usr/local/opt/sqlite/bin:$PATH
export PATH=/usr/local/opt/openssl/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=/Library/PostgreSQL/14/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/python/python3.9.12/bin:$PATH
export LESS=-FRX
export GPG_TTY=$(tty)

# Configuration for virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=$HOME/python/python3.9.12/bin/python3.9
export VIRTUALENVWRAPPER_VIRTUALENV=$HOME/python/python3.9.12/bin/virtualenv
source $HOME/python/python3.9.12/bin/virtualenvwrapper.sh

# Java
export JAVA_HOME_17=$(/usr/libexec/java_home -v17)
export JAVA_HOME_11=$(/usr/libexec/java_home -v11)
export JAVA_HOME_8=$(/usr/libexec/java_home -v1.8)
export JAVA_HOME=$JAVA_HOME_17
# export JAVA_HOME=$JAVA_HOME_11
# export JAVA_HOME=$JAVA_HOME_8

# Maven
export MAVEN_HOME=$HOME/maven/apache-maven-3.8.5
export PATH=$MAVEN_HOME/bin:$PATH

# Scala
export SCALA_HOME_21215=$HOME/scala/scala-2.12.15
export SCALA_HOME_2138=$HOME/scala/scala-2.13.8
export SCALA_HOME_312=$HOME/scala/scala3-3.1.2
# export SCALA_HOME=$SCALA_HOME_21215
export SCALA_HOME=$SCALA_HOME_2138
# export SCALA_HOME=$SCALA_HOME_312
export PATH=$PATH:$SCALA_HOME/bin

# SBT
export SBT_HOME_162=$HOME/sbt/sbt-1.6.2
export SBT_HOME=$SBT_HOME_162
export PATH=$PATH:$SBT_HOME/bin

# Spark
export SPARK_HOME_3=$HOME/spark/spark-3.2.1-bin-hadoop3.2-scala2.13
export SPARK_HOME=$SPARK_HOME_3
export PATH=$PATH:$SPARK_HOME/bin

# Airflow
export GDP_AIRFLOW_HOME=$HOME/airflow/gdp_airflow
# export GFG_AIRFLOW_HOME=$HOME/airflow/gfg_airflow
export AIRFLOW_HOME=$GDP_AIRFLOW_HOME

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="avit"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)
plugins=(
  git
  brew
  docker
  docker-compose
  aws
  macos
  bgnotify
  zsh-autosuggestions
  zsh-syntax-highlighting
  poetry
  kubectl
)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias qua="$HOME/python/code-quality.sh"
alias ge=great_expectations

# Terraform tab completion
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/may/gcp/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/may/gcp/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/may/gcp/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/may/gcp/google-cloud-sdk/completion.zsh.inc'; fi
