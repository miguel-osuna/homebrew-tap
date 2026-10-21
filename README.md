# Miguel Osuna's Homebrew tap

Homebrew formulae and casks maintained by Miguel Osuna. The initial cask and app
release are not published. Eleven release-candidate checks passed Homebrew audit,
style, install, bundle inspection, and uninstall on disposable Apple Silicon runners,
but Gatekeeper rejected the quarantined app (`spctl` exit status 3) and first launch
did not start. The latest result is [candidate run 39633942051](https://github.com/miguel-osuna/Sweepdeck/actions/runs/39633942051).
The maintainer decided not to add Developer ID signing or notarization for this
release attempt, so publication remains blocked by that compatibility check.

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
Apple Silicon runner, checks first launch, and uninstalls the app. The planned cask
will leave Sweepdeck preferences and history intact and will not contain a `zap` stanza.
