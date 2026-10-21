# Miguel Osuna's Homebrew tap

Homebrew formulae and casks maintained by Miguel Osuna. The initial Sweepdeck cask
and app release are not published yet. Candidate checks passed Homebrew audit, style,
install, bundle inspection, and uninstall on a disposable Apple Silicon runner, while
Gatekeeper rejected the quarantined ad-hoc-signed app (`spctl` exit status 3). The
latest completed result is [candidate run 39633942051](https://github.com/miguel-osuna/Sweepdeck/actions/runs/39633942051):
Launch Services timed out after 15 seconds, but a Sweepdeck process was observed. The
runner did not capture a warning dialog or inspect visible app UI, so the result does
not prove what a user sees or verify an interactive launch.

The maintainer chose a no-cost, warning-forward path rather than Developer ID signing
and notarization. macOS may warn or require an explicit user approval on first launch.
If you choose to proceed after a warning, try opening the app, then check **System
Settings > Privacy & Security > Open Anyway** and confirm. The tap will leave
quarantine in place and will not automate that choice. This is an owner-managed tap;
the app does not meet the official Homebrew cask Gatekeeper requirement, and no
official-cask submission is planned.

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
Apple Silicon runner, records Gatekeeper's result and first-launch behavior without
approving the app, and uninstalls it. The cask will install only `Sweepdeck.app`, leave
preferences and history intact, and contain no `zap` stanza or cleanup scripts.
