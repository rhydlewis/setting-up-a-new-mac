# Initial boot

## System Preferences

* Give the Mac a suitable name (`System Preferences > Sharing` or `sudo scutil --set ComputerName <name>`)
* Change trackpad settings
* Enable FileVault and don't forget to make a note of the key in 1Password
* Login to iCloud

## Set up Homebrew, git etc.

### Homebrew

* Run brew setup via `install-brew.sh`
* Run `brew bundle` to install tools and apps
* Run `install-mas.sh` to install MAS apps

### Bash It

Install [bash it](https://github.com/Bash-it/bash-it) and update `~/.bash_profile` with the following:

    export BASH_IT_THEME='single-user'
    export EDITOR="/usr/local/bin/subl"
    export GIT_EDITOR='/usr/local/bin/subl'
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
    fi

### Git

1. Set up [GitHub ssh keys](https://help.github.com/articles/generating-ssh-keys)
2. Configure git global username and email:
    * `git config --global user.name "Rhyd Lewis"`
    * `git config --global user.email <email>`)

### Other

1. Sign into Dropbox
2. Sign into 1Password

## Sublime Text 3

After installing [Sublime Text 3], link to config files in Dropbox:

    ln -s /Users/<user>/Dropbox/Apps/Sublime\ Text\ 3/Installed\ Packages/ 'Installed Packages'
    ln -s /Users/<user>/Dropbox/Apps/Sublime\ Text\ 3/Packages/ 'Packages'

Install Package Control

    import urllib.request,os,hashlib; h = 'eb2297e1a458f27d836c04bb0cbaf282' + 'd0e7a3098092775ccb37ca9d6b2e4b7d'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)

Install Packages

* GitGutter
* SideBarEnhancements
* BracketHighlighter
* HTML-CSS-JS Prettify
* MarkdownEditing
* Pretty JSON

Install View in Marked as build option (https://github.com/kotfu/marked-bonus-pack)

## iTerm 2

* Import `iterm2.json` profile
* set Preferences > Keys > Hotkey > 'Show/hide iTerm2 with a system-wide hotkey' to `⌘§`

## Other

* Install PyCharm CE (not working in brew for some reason)
* Set file association for `txt` and `md`:

`duti -s com.sublimetext.3 .txt all`
`duti -s com.sublimetext.3 .md all`

# Useful Links

* [OS-X-Yosemite-Security-and-Privacy-Guide](https://github.com/drduh/OS-X-Yosemite-Security-and-Privacy-Guide)
* [Stop Yosemite Phoning Home](https://github.com/fix-macosx/yosemite-phone-home)
