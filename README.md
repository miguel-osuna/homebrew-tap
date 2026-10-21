# Sweepdeck Homebrew tap

Owner-managed tap for Sweepdeck. The initial cask is not published yet. The
release-shaped 0.1.0 candidate passed Homebrew audit/style/install/uninstall on a
disposable Apple Silicon runner, but Gatekeeper rejected its quarantined app
(`spctl` exit status 3) and first launch did not start. Publication is blocked pending
a Developer ID signing and notarization decision, followed by a successful candidate
retest.

When the cask is published, the fully qualified install command will be:

```sh
brew install --cask miguel-osuna/tap/sweepdeck
```

That command trusts only the Sweepdeck cask. To use the short cask name, first tap
this repository and trust the individual cask:

```sh
brew tap miguel-osuna/tap
brew trust --cask miguel-osuna/tap/sweepdeck
brew install --cask sweepdeck
```

Cask version and SHA-256 updates are manual and reviewed in pull requests. CI runs
Homebrew audit/style checks, installs the released app under quarantine on a disposable
Apple Silicon runner, checks first launch, and uninstalls the app. The cask does not
delete Sweepdeck preferences or history and will not contain a `zap` stanza.
