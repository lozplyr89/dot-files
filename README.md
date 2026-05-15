My **DESKTOP** dotfiles so far, will definitely have to redo some stuff probably when I setup themes but for now this is what I got

This is primarily a glorified backup just incase I break **Something** which I already did once/Incase I need to show someone how something works

**DEPENDENCIES**

```Kitty```
```nvim```
```waybar```
```yazi```
```hyprland```
```hyprpaper```

```import.sh``` is just to automate copying over my config files so I stop doing it manually like a neanderthal.

```theme-switcher.sh``` is what it sounds like. It's a shell script that lets you pick from your ~/.config/.themes/. It's pretty basic but it is really cool and I plan to add more themes to further utilize it

There are further dependencies obv, but it's not my job to tell you what those are as it's a personal backup more than anything.

If you do grab my ```yazi.toml``` and hit Shit+Enter on any archive file it will bring up "Open with Archipelago" and "Install with Poptracker", if you do not know what these are, it's for the Archipelago Multiworld which is a big randomizer thing I highly recommend, but it's such a niche use case so I would probably take that out if you are not interested.

My nvim bindings do reverse j, and k, so J is up and K is down. Just delete the line if you hate it, but also keep in mind the ```binds.conf``` for ```hyprland.conf``` is using the same thing for window moving and focus moving between workspaces.

Speaking of ```hyprland.conf``` it's all modulated because I hate looking at how ridiculously long it is, and also also, technically the current ```binds.conf``` has no means to access workspaces 5-9, but I have 4 monitors, and usually that 4th monitor finds issues getting used all the time anyways, and because I hard dedicate a specific workspace to each monitor, I don't need it at this very moment.

This is a very personal setup, and I haven't been using Linux, or git for very long yet, so this repo is also a testing ground for that sorta thing, so if this looks funky... yeah that's why.

**TO DO**
Start converting hypr stuff into lua before hyhyprlang becomes fully deprecated.
