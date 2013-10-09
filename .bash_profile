# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

#aliases
alias ll='ls -lah'
alias gs='git status -s'
alias gd='git diff -w --color'
alias gdm='git diff -w --color origin/master..master'
alias gc='git commit'
alias gp='git pull'
alias gpush='git push'
alias gb='git branch'
alias gco='git checkout'
alias gl="git log --pretty=format:'%C(bold blue)%ad %Cred%an%Cgreen%d %C(yellow)%s %Creset' --abbrev-commit | head -n 30"
alias glm="git log --pretty=format:'%C(bold blue)%ad %Cred%an%Cgreen%d %C(yellow)%s %Creset' --abbrev-commit origin..HEAD"
alias glb="git log --pretty=format:'%C(bold blue)%ad %Cred%an%Cgreen%d %C(yellow)%s %Creset' --abbrev-commit master.."

#History settings
export HISTTIMEFORMAT='%D %T '
export HISTSIZE="10000"
export HISTFILESIZE="10000"

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
  shopt -s "$option" 2> /dev/null
done

PS1="[\u][\w/]\$ "

#Display information on login
echo -ne "Today is "; date
echo -e ""; cal ;
echo -ne "Uptime:";uptime | awk /'up/
{print $3,$4}'
