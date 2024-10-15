
copy file to library:
```bash
cp ~/.dotfiles/macos/setenv.gnupghome.plist /Library/LaunchDaemons/setenv.gnupghome.plist
```

load deamon:
```bash
launchctl load -w /Library/LaunchDaemons/setenv.gnupghome.plist
```

unload deamon:
```bash
launchctl unload ~/Library/LaunchAgents/setenv.gnupghome.plist
```
