#aliases
alias gs='git status -s'
alias gd='git diff -w --color'
alias gc='git commit'
alias gp='git pull'
alias gpush='git push'
alias gl="git log --pretty=format:'%C(bold blue)%ad %Cred%an%Cgreen%d %C(yellow)%s %Creset' --abbrev-commit | head -n 30"

#History settings
export HISTTIMEFORMAT='%D %T '
export HISTSIZE="10000"
export HISTFILESIZE="10000"

shopt -s histappend

PS1="[\u][\w/]\$ "

# Functions
f () { find . -type f \( -name "*.php" \) -print0 | xargs -0 grep -i "$1" ; }
fjs () { find . -type f \( -name "*.js" \) -print0 | xargs -0 grep -i "$1" ; }
fall () { find . -type f -print0 | xargs -0 grep -i "$1" ; }

#Display information on login
echo -ne "Today is "; date
echo -e ""; cal ;
echo -ne "Uptime:";uptime | awk /'up/
{print $3,$4}'