<h1 align="center">
    ༒ Necromancy ༒
</h1>

<p align="center"> ༓ 
    <a href="#-features">Features</a> ۞ 
    <a href="-packages">Packages</a> ۞ 
    <a href="#-font-and-icons">Fonts and Icons</a> ۞ 
    <a href="#-roadmap">Roadmap</a> ༓
</p>

## Showcase

![Empty workspace](https://github.com/emersonds/necromancy-dotfiles/blob/main/assets/examples/Empty-Desktop.png "Empty Workspace")
![Minimal example of neovim, kitty, and walker](https://github.com/emersonds/necromancy-dotfiles/blob/main/assets/examples/Kitty-Walker-Nvim.png "Neovim, Kitty, and Walker")
![Busy workspace example](https://github.com/emersonds/necromancy-dotfiles/blob/main/assets/examples/Example-Workspace.png "Productivity Workspace Example")

## Features

- Dark, gritty theme with vibrant greens, blue undertones, and purple accents
- Rounded, borderless windows that blur when out of focus
- Minimal status bar
- Modern app launcher with several utilities
- Developer-focused with autocompletions and syntax highlighting
- Default Hyprland keybindings makes switching a breeze

## Packages
| Name | Usage | Notes |
| ---------- | ---------------------------------------------- | ---------------------------------------------------------------- |
| `hyprland` | Tiling window manager with built-in animations. | Tested on a 1080p monitor, may need to adjust scaling as needed. |
| `walker` | Application launcher by [abenz1267](https://github.com/abenz1267/walker). | Requires `elephant` to browse files and applications. |
| `elephant` | Data provider service for walker. | Has [several different data providers](https://github.com/abenz1267/elephant) to browse files, applications, AUR packages, and more. |
| `waybar` | Status bar. | Currently low funcitonality until `eww` widgets are made and implemented. |
| `swww` | Wallpapers. | Creator is renaming to `awww` and moving codebase so this will have to be updated soon. |
| `neovim` | Text Editor. | Custom config originally from [NvChad](https://github.com/NvChad/NvChad). |
| `kitty` | GPU-based Terminal | Used in these dotfiles with `zsh` shell. |
| `fastfetch` | Display system info in the terminal window. | Called when kitty launches. |
| `eww` | Widgets. | Primarily used for status bar widgets, like the power menu and internet. |
| `swaync` | Notification daemon. | Displays desktop notifications. |

All packages can be installed with `package-installer.sh` in the scripts folder.

## Font and Icons
| Name | Usage | Source |
| --------------------------- | ------------ | -------------------------------------------------------------------------------------------------------------- |
| `IosevkaTermSlab Nerd Font` | System Font  | [IosevkaTermSlab Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/IosevkaTermSlab) |

## Roadmap
- [ ] Add widgets using eww.
- [x] Theme walker to match other applications. (WIP, not a fan of the colors currently)
- [ ] Display currently playing song in waybar with Mopidy and mpd.
- [ ] Update cursor theme and app icons.
- [ ] Create a bash script to automate updating local configs with git configs.
