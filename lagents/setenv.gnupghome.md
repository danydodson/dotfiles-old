Copy file to Library:

```bash
cp ~/.dotfiles/lagents/setenv.gnupghome.plist ~/Library/LaunchAgents/setenv.gnupghome.plist
```

unload launch agent:

```basshh
launchctl load -w /Library/LaunchAgents/setenv.gnupghome.plist
```

unload launch agent:

```bash
launchctl unload ~/Library/LaunchAgents/setenv.gnupghome.plist
```
