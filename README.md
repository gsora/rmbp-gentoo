# gsora's Gentoo configuration files

And some dotfiles too!

This repositories contains everything is needed to make my Retina MacBook Pro 13" Late 2013 work with Gentoo, and my environment.

---
## Files and folders comments

+ `config-4.11.9-ck-retina-mbp` - kernel configuration for my machine; works only with Gentoo's `ck-sources`
+ `i3status.conf` - i3status configuration file, to be used with `homebin/i3cool`
+ `xinitrc` - X.org startx friend, starts the entire graphical UI up
+ `config` - the `~/.config/` folder, where you'll find my i3, compton, fontconfig, mpv, neovim, rofi and termite configuration files
+ `etc` - the `/etc/` folder; mostly contains only portage-related configurations, like make.conf and the various package.{use,license,keywords} folders
+ `var` - the `/var/` folder; contains the portage world file.
+ `homebin` - the `~/.bin/` folder; contains some scripts I use in the configuration files across this repository
