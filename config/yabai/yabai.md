# Updating to the latest release

To update yabai to the latest version, simply upgrade it with the yabai installer script or Homebrew
(depending on the original installation method) and reconfigure the scripting addition again:

Upgrade yabai with homebrew (remove old service file because homebrew changes binary path)

```bash
yabai --uninstall-service
brew upgrade yabai
```

Start yabai

```bash
yabai --start-service
```

---

# Configure scripting addition

Yabai uses the macOS Mach APIs to inject code into Dock.app; this requires elevated (root) privileges.
You can configure your user to execute yabai --load-sa as the root user without having to enter a password.
To do this, we add a new configuration entry that is loaded by /etc/sudoers.

Create a new file for writing - visudo uses the vim editor by default.

```bash
sudo visudo -f /private/etc/sudoers.d/yabai
```

- Input the line below into the file you are editing.

  - Replace <yabai> with the path to the yabai binary (output of: `which yabai`).
  - Replace <user> with your username (output of: `whoami`).
  - Replace <hash> with the sha256 hash of the yabai binary (output of: `shasum -a 256 $(which yabai)`).

- This hash must be updated manually after upgrading yabai.

```bash
<user> ALL=(root) NOPASSWD: sha256:<hash> <yabai> --load-sa
```

---

View on github [github.com/koekeishiya/yabai](https://github.com/koekeishiya/yabai)