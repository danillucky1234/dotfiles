### What are dotfiles?
Dotfiles are the customization files that are used to personalize your Linux or other Unix-based system.  

This repository contains my personal dotfiles. They are stored here for convenience so that I may quickly access them on new machines or new installs. Also, others may find some of my configurations helpful in customizing their own dotfiles.  

Screenshots [below](#screenshots)
### My dotfiles includes:
#### Shells:
- [.bashrc](https://github.com/danillucky1234/dotfiles/blob/main/.bashrc)

#### Editors:
- [.vim/](https://github.com/danillucky1234/dotfiles/tree/main/.vim)
- [.vimrc](https://github.com/danillucky1234/dotfiles/blob/main/.vimrc)

#### Terminal emulators:
- [gnome](https://github.com/danillucky1234/dotfiles/blob/main/gnome-terminal-profile.dconf)
- [kitty](https://github.com/danillucky1234/dotfiles/blob/main/.config/kitty/kitty.conf)

#### WM:
- [i3](https://github.com/danillucky1234/dotfiles/blob/main/.config/i3)

#### Status bars:
- [i3blocks](https://github.com/danillucky1234/dotfiles/blob/main/.config/i3blocks)  
- [polybar](https://github.com/danillucky1234/dotfiles/blob/main/.config/polybar/)

#### Another useful programs:
- [neofetch](https://github.com/danillucky1234/dotfiles/blob/main/.config/neofetch)

### Also I have some scripts which help me to make my configs better:
- [lock screen](https://github.com/danillucky1234/dotfiles/blob/main/.local/bin/lock.sh) - This script create snapshots of the monitors, blur them and add them as bg for lock screen. [This is what it looks like](https://imgur.com/gallery/CNW9TQZ)
- [i3cpu](https://github.com/danillucky1234/dotfiles/blob/main/.local/bin/i3cpu) - This script scrapes the information about the 10 programs that load the system the most and displays the temperature of the computer in the tray
- [i3mem](https://github.com/danillucky1234/dotfiles/blob/main/.local/bin/i3mem) - This script scrapes the information about the 10 programs that consume the most memory and displays the total amount of used memory in the tray
- [i3vol](https://github.com/danillucky1234/dotfiles/blob/main/.local/bin/i3vol) - This script takes the thunder level on the computer and displays it in the tray  
- [mail](https://github.com/danillucky1234/dotfiles/blob/main/.config/polybar/mail.py) - This simple python script shows amount of unread messages in my status bar
- [notes](https://github.com/danillucky1234/dotfiles/blob/main/.config/polybar/openNotes.sh) - This simple bash script opens a new window in vim with my markdown notes in 6th workspace and also opens a preview for the notes in Firefox

#### [How to export gnome-terminal profile?](https://gist.github.com/reavon/0bbe99150810baa5623e5f601aa93afc)

<a name="screenshots"></a>
#### Screenshots
- polybar  
![polybar](https://github.com/danillucky1234/dotfiles/blob/main/screenshots/polybar.png)  
- i3blocks  
![i3blocks](https://github.com/danillucky1234/dotfiles/blob/main/screenshots/i3blocks.png)  
- kitty + polybar + vim  
![rice](https://i.imgur.com/lDOKqvT.png)  
