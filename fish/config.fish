alias slime='open -a "Sublime Text"'
alias ax='chmod a+x'
alias ff='open -a Finder ./'
alias p='ps aux| grep -v grep| grep -i'
alias h='history'
alias gs='git status'
#alias ls='gls -pF --human-readable --group-directories-first --classify'
alias ls='exa --group-directories-first -F --classify'
alias ll='exa -l --group-directories-first -F --classify'
alias lll='exa -l  --group-directories-first -F --classify | less'
alias lla='exa -la --group-directories-first -F --classify'
alias llt='exa -T'
alias llfu='exa -bghHliS --git'

alias gp='git push'
alias cdgit='cd (git rev-parse --show-toplevel)'
alias v='source ./venv/bin/activate'
function cdf
    set target (osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)')
    if [ $target ]
        cd $target
        pwd
    else
        echo 'No Finder window found' >&2
    end
end
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish
status --is-interactive; and source (rbenv init -|psub)
source /Users/rhyd.lewis/Library/Preferences/org.dystroy.broot/launcher/fish/br
source ~/.asdf/asdf.fish
thefuck --alias | source
zoxide init fish | source
starship init fish | source
