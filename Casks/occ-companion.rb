cask "occ-companion" do
  version "0.1.1"

  on_arm do
    sha256 "a2d5bdebda110dae4eef33f3247220834a8a9fe3c245d6d368983cb72ec1364f"
    url "https://github.com/JoschaP/occ-companion/releases/download/v0.1.1/OCC.Companion_0.1.1_aarch64.dmg",
        verified: "github.com/JoschaP/occ-companion/"
  end
  on_intel do
    sha256 "7598cb794f1029c5900df4f942e196a07dbe91c818950a166d23a8eb9d827db7"
    url "https://github.com/JoschaP/occ-companion/releases/download/v0.1.1/OCC.Companion_0.1.1_x64.dmg",
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
