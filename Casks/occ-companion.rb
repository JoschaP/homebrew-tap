cask "occ-companion" do
  version "0.4.0"

  on_arm do
    sha256 "9fe2bea2edfd7a43389faeab6d2859b150bb8a1a6db502f9a77cd41858a3951e"
    url "https://github.com/JoschaP/occ-companion/releases/download/v0.4.0/OCC.Companion_0.4.0_aarch64.dmg",
        verified: "github.com/JoschaP/occ-companion/"
  end
  on_intel do
    sha256 "fc0a9a522ea26019dd0bbd7dc6861452149aeff5dbb7c58687fa12063abad2da"
    url "https://github.com/JoschaP/occ-companion/releases/download/v0.4.0/OCC.Companion_0.4.0_x64.dmg",
        verified: "github.com/JoschaP/occ-companion/"
  end

  name "OCC Companion"
  desc "Retrieve & decrypt your age-encrypted data exports"
  homepage "https://github.com/JoschaP/occ-companion"

  app "OCC Companion.app"

  zap trash: [
    "~/Library/Application Support/de.occ-companion.app",
    "~/Library/Caches/de.occ-companion.app",
    "~/Library/WebKit/de.occ-companion.app",
  ]
end
