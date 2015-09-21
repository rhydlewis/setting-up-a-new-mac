# Brew

xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Sublime Text 3

1) Installing [Sublime Text 3](http://www.sublimetext.com/3):

    mv '*ackages' /Users/<user>/Dropbox/Apps/Sublime\ Text\ 3/
    ln -s /Users/<user>/Dropbox/Apps/Sublime\ Text\ 3/Installed\ Packages/ 'Installed Packages'
    ln -s /Users/<user>/Dropbox/Apps/Sublime\ Text\ 3/Packages/ 'Packages'

2) Install Package Control

    import urllib.request,os,hashlib; h = 'eb2297e1a458f27d836c04bb0cbaf282' + 'd0e7a3098092775ccb37ca9d6b2e4b7d'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)

3) Install Packages

* GitGutter
* SideBarEnhancements
* BracketHighlighter
* HTML-CSS-JS Prettify
* MarkdownEditing
* Pretty JSON

4) Update preferences - **TODO**
5) Update sublime markdown editing color scheme - **TODO**
6) Install View in Marked as build option (https://github.com/kotfu/marked-bonus-pack)

# Useful Links

* [OS-X-Yosemite-Security-and-Privacy-Guide](https://github.com/drduh/OS-X-Yosemite-Security-and-Privacy-Guide)
* [Stop Yosemite Phoning Home](https://github.com/fix-macosx/yosemite-phone-home)
