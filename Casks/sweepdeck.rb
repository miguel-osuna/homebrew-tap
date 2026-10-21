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
    macOS may show a security warning the first time you open Sweepdeck. This build
    has an ad-hoc signature, no Apple-issued Developer ID signature, and no
    notarization ticket. If macOS blocks the app, you can choose whether to allow it
    in System Settings > Privacy & Security > Open Anyway. Homebrew leaves quarantine
    in place and the cask does not bypass Gatekeeper.
  EOS
end
