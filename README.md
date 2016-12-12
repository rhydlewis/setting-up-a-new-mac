# Initial boot

## System Preferences

* Give the Mac a suitable name (`System Preferences > Sharing` or `sudo scutil --set ComputerName <name>`)
* Change trackpad settings
* Enable FileVault and don't forget to make a note of the key in 1Password
* Login to iCloud

## Setup

1. Run brew setup and bundle script
2. Install [bash it](https://github.com/Bash-it/bash-it)
3. Set up [GitHub ssh keys](https://help.github.com/articles/generating-ssh-keys)
4. Configure git global username and email (`git config --global user.name "Rhyd Lewis"`, `git config --global user.email <email>`)
5. Sign into Dropbox
6. Sign into 1Password

# Sublime Text 3

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

# Useful Links

* [OS-X-Yosemite-Security-and-Privacy-Guide](https://github.com/drduh/OS-X-Yosemite-Security-and-Privacy-Guide)
* [Stop Yosemite Phoning Home](https://github.com/fix-macosx/yosemite-phone-home)
