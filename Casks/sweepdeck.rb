cask "sweepdeck" do
  version "0.2.0"
  sha256 "e31d64f80948461fe0f92d5c482c8f11c8f364ca81f8c326a40f8db8d2dbd760"

  url "https://github.com/miguel-osuna/Sweepdeck/releases/download/v#{version}/Sweepdeck-#{version}-macOS.zip"
  name "Sweepdeck"
  desc "Review local files before moving them to Trash"
  homepage "https://github.com/miguel-osuna/Sweepdeck"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Sweepdeck.app"

  caveats <<~EOS
    This ad-hoc signed build has no Apple-issued Developer ID signature or
    notarization ticket, so macOS may block its first launch. Continue only if you
    trust that you installed Sweepdeck from this tap or its official GitHub release.

    To approve Sweepdeck once:
      1. Click Done in the warning. Move to Trash removes the app.
      2. Open System Settings > Privacy & Security, scroll to Security, and click
         Open Anyway for Sweepdeck.
      3. When the warning appears again, click Open if you still want to run it.

    macOS saves this as a per-app exception for future launches. Homebrew leaves
    quarantine in place, and this cask does not bypass Gatekeeper.
  EOS
end
