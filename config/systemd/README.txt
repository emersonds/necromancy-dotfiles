These services are for swww to shuffle the wallpaper every hour.

Run these services as user.
systemctl --user enable swww.service
systemctl --user start swww.service
systemctl --user enable change_wallpaper.service
systemctl --user start change_wallpaper.service
systemctl --user enable change_wallpaper.timer
systemctl --user start change_wallpaper.timer

Credit to LittleSmartyFox on /r/Hyprland.
https://www.reddit.com/r/hyprland/comments/1df3c93/tutorial_swww_how_to_setup/
