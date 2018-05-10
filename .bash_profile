#   -------------------------------
#   1. ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Change Prompt
#   ------------------------------------------------------------
export PS1="\u@\h:\w>"

#   -----------------------------
#   2. MAKE TERMINAL BETTER
#   -----------------------------

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias dir='ls -lhFG'
alias adir='ls -alhFG'
alias test1='ssh test1 -l jarnow'
alias test2='ssh test2 -l jarnow'

#   -----------------------------
#   3. RANDOM TOOLING
#   -----------------------------
alias builddocs="pushd ~/git/dc/docs ; rm -r _build ; rm -r api ; make html ; popd"


#   ---------------------------
#   4. SEARCHING
#   ---------------------------

alias qfind="find . -name "                 # qfind:    Quickly search for file
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string

#   spotlight: Search for a file using MacOS Spotlight's metadata
#   -----------------------------------------------------------
    spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }

#   -------
#   5. History
#   ------
HISTFILESIZE=10000
HISTSIZE=10000
HISTTIMEFORMAT="%d/%m/%y %T "
alias h='history'


#   ---------------------------
#   9. Path
#   ---------------------------
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
# Path for maven
PATH="/opt/apache-maven/bin:${PATH}"
export PATH
# mysql
PATH="/usr/local/mysql/bin:${PATH}"
export PATH

# for AWS?
PATH="~/Library/Python/3.6/bin:${PATH}"
export PATH

# RabbitMQ
PATH=$PATH:/usr/local/sbin

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# added by Anaconda3 5.0.1 installer
export PATH="/Users/jimarnow/anaconda3/bin:$PATH"
