cask "occ-companion" do
  version "0.1.0"

  on_arm do
    sha256 "afec82031843ce210fdc46f5efbb9f27a0c4a3ed19fc4a55250e19e2d0d0a393"
    url "https://github.com/JoschaP/occ-companion/releases/download/v0.1.0/OCC.Companion_0.1.0_aarch64.dmg",
        verified: "github.com/JoschaP/occ-companion/"
  end
  on_intel do
    sha256 "9cb30b0047109501c52849b7fa85c4baf99cc0e1aba730e57b30505dc9973fdb"
    url "https://github.com/JoschaP/occ-companion/releases/download/v0.1.0/OCC.Companion_0.1.0_x64.dmg",
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
