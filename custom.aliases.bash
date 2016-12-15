alias yd='youtube-dl -x --audio-format m4a'
alias slime='open -a "Sublime Text"'
alias ax='chmod a+x'
alias ff='open -a Finder ./'
cdf() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"; pwd
    else
        echo 'No Finder window found' >&2
    fi
}
alias pip-upgrade-all="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip install -U"
alias p='ps aux| grep -v grep| grep -i'
alias ebp='slime ~/.bash_profile'
alias update='sudo softwareupdate -i -a; brew update; brew upgrade --all; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; rbenv rehash;'
alias edlast='open `ls -tr | tail -1`'
