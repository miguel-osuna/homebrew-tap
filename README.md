# Miguel Osuna's Homebrew tap

Homebrew formulae and casks maintained by Miguel Osuna. This tap currently
includes Sweepdeck, a free local Mac app for reviewing files before moving them
to the macOS Trash.

## Install Sweepdeck

The fully qualified command is:

```sh
brew install --cask miguel-osuna/tap/sweepdeck
```

Homebrew trusts only the cask named by that fully qualified command. To install
by the short name, first add the tap, trust this specific cask, and then install:

```sh
brew tap miguel-osuna/tap
brew trust --cask miguel-osuna/tap/sweepdeck
brew install --cask sweepdeck
```

The short command does not work from a fresh Homebrew setup without those setup
steps or inclusion in an official Homebrew tap.

The cask downloads the versioned app archive from Sweepdeck's
[GitHub Release](https://github.com/miguel-osuna/Sweepdeck/releases/tag/v0.3.0)
and verifies its SHA-256. It installs only `Sweepdeck.app`. Uninstall leaves
Sweepdeck preferences and history intact; the cask has no `zap` stanza or cleanup
scripts.

## macOS security

This no-cost build is ad-hoc signed and has no Apple-issued Developer ID signature
or notarization ticket. macOS may block the first launch because Apple cannot
verify the app is free of malware. If you downloaded it from the official release
or installed it from this tap and trust that source, macOS provides a one-time,
per-app approval:

1. Click **Done** in the warning. **Move to Trash** removes the app.
2. Open **System Settings > Privacy & Security**, scroll to **Security**, and click
   **Open Anyway** for Sweepdeck.
3. When the warning appears again, click **Open** if you still want to run it.

macOS saves this exception for Sweepdeck, so future launches work normally. Read
Apple's [security guidance](https://support.apple.com/en-au/102445) before
proceeding. Homebrew preserves quarantine; this tap does not disable Gatekeeper or
automate the approval. For a manual install, the 0.3.0 release also provides a
[drag-to-Applications DMG](https://github.com/miguel-osuna/Sweepdeck/releases/download/v0.3.0/Sweepdeck-0.3.0-macOS.dmg) with an Applications shortcut and
`INSTALL.txt`. It contains the same app, so it requires the same first-launch
approval; Homebrew continues to use the ZIP.

## Cask maintenance

Cask updates are manual and reviewed. For each Sweepdeck release, verify the
published archive's `.sha256` sidecar, update the version and release URL in
`Casks/sweepdeck.rb`, then open a pull request. The tap's disposable Apple Silicon
macOS workflow runs Homebrew audit and style checks, installs the release under
quarantine, records installed files and Gatekeeper/first-launch behavior, and
uninstalls the app before merge. It does not approve the app or bypass security.
