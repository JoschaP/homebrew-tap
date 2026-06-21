cask "occ-companion" do
  version "0.2.0"

  on_arm do
    sha256 "ef78fbec5a4fcac849dc4be60b576691c9e701daa083df2a4ab5168e0bee9f03"
    url "https://github.com/JoschaP/occ-companion/releases/download/v0.2.0/OCC.Companion_0.2.0_aarch64.dmg",
        verified: "github.com/JoschaP/occ-companion/"
  end
  on_intel do
    sha256 "bd090b9cc8d2660d90c52dcb9cde00cd8266f349ac3d6210e08f1c755630e242"
    url "https://github.com/JoschaP/occ-companion/releases/download/v0.2.0/OCC.Companion_0.2.0_x64.dmg",
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
