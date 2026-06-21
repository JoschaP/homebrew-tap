cask "occ-companion" do
  version "0.5.0"

  on_arm do
    sha256 "2b2c0ed190d082cb48b1631a6a80faf8b5f4b72da686fb3452f7ce90145ba6e8"
    url "https://github.com/JoschaP/occ-companion/releases/download/v0.5.0/OCC.Companion_0.5.0_aarch64.dmg",
        verified: "github.com/JoschaP/occ-companion/"
  end
  on_intel do
    sha256 "17dc44ec721a878587b8b46d1a5fc56caf985222fa03c6f5b3c2755435370684"
    url "https://github.com/JoschaP/occ-companion/releases/download/v0.5.0/OCC.Companion_0.5.0_x64.dmg",
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
