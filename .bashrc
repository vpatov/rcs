parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


export PS1="\[\e[31m\]\u\[\e[m\]-\[\e[37m\]\t \[\e[m\]\[\e[36m\]$(parse_git_branch)\[\e[m\]\[\e[33m\]\w\[\e[m\]: "
