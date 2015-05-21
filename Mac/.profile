export PATH=$PATH:/Applications/Unity/MonoDevelop.app/Contents/Frameworks/Mono.framework/Versions/2.10.12/bin

#Quite nice colors for terminal i MAC
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export PATH=$PATH:/Users/tobiasj/android-sdk-macosx/platform-tools

#Useful aliases
alias ls='ls -GFh'
alias nuget='mono ~/Downloads/Nuuget.exe'
alias gs='git status'
alias gits='git status'
alias gitall='~/gitbatch.sh'

#ENV variables
export M2_HOME=/Users/tobiasj/apache-maven-3.3.3
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home

#Show git branch in terminal.
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
 
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"
 
PS1="$GREEN\u@\h$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "
