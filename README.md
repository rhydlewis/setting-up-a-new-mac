# Initial boot

## System Preferences

* Give the Mac a suitable name (`System Preferences > Sharing` or `sudo scutil --set ComputerName <name>`)
* Login to iCloud

## Set up Homebrew, git etc.

### Homebrew

* Run brew setup via `install-brew.sh`
* Run `install-mas.sh` to install MAS apps

### Fish

Install [Fish](https://fishshell.com) using config files from `fish` folder

### Git

1. Set up [GitHub ssh keys](https://help.github.com/articles/generating-ssh-keys)
2. Configure git global username and email:
    * `git config --global user.name "Rhyd Lewis"`
    * `git config --global user.email <email>`)

## Sublime Text 3

Installing Sublime Text 3 and install Package Control:

    import urllib.request,os,hashlib; h = 'eb2297e1a458f27d836c04bb0cbaf282' + 'd0e7a3098092775ccb37ca9d6b2e4b7d'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)

* Download `Packages` and `Local Packages` from private repo.
* Install View in Marked as build option (https://github.com/kotfu/marked-bonus-pack)

## iTerm 2

* Import `iterm2.json` profile
* Set Preferences > Keys > Hotkey > 'Show/hide iTerm2 with a system-wide hotkey' to `⌘§`

## Other

* Set file association for `txt` and `md`:

`duti -s com.sublimetext.3 .txt all`<br/>
`duti -s com.sublimetext.3 .md all`

* Show macOS app switcher for all monitors

```
defaults write com.apple.Dock appswitcher-all-displays -bool true
killall Dock
```

see https://gist.github.com/jthodge/c4ba15a78fb29671dfa072fe279355f0
defaults write com.apple.Dock appswitcher-all-displays -bool truekillall Dock

