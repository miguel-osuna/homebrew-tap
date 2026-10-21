# Miguel Osuna's Homebrew tap

Homebrew formulae and casks maintained by Miguel Osuna. The initial Sweepdeck cask
and app release are not published yet. The 0.1.0 candidate check,
[run 39644553243](https://github.com/miguel-osuna/Sweepdeck/actions/runs/39644553243),
passed Homebrew audit, style, install, bundle inspection, and uninstall on a disposable
Apple Silicon runner. Gatekeeper rejected the quarantined ad-hoc-signed app (`spctl`
exit status 3). Its first-launch screen said **“Sweepdeck” Not Opened** because Apple
could not verify it was free of malware. Launch Services timed out after 15 seconds,
but a Sweepdeck process was observed. The runner did not approve the app or verify a
successful post-approval launch.

The maintainer chose a no-cost, warning-forward path rather than Developer ID signing
and notarization. macOS blocks first launch until the user makes an explicit choice.
If you choose to proceed, click **Done** on the warning, then check **System Settings >
Privacy & Security > Open Anyway** and confirm. Apple says that option is available for
about an hour after trying to open the app. Review Apple's [security
guidance](https://support.apple.com/en-au/102445) before making that choice. The tap will
leave quarantine in place and will not automate it. This is an owner-managed tap;
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
