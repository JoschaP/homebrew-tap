cask "occ-companion" do
  version "0.3.0"

  on_arm do
    sha256 "0cdecc7ca2716752c4a4030e450f05a24e77d286db671e10cf6222c71ac97895"
    url "https://github.com/JoschaP/occ-companion/releases/download/v0.3.0/OCC.Companion_0.3.0_aarch64.dmg",
        verified: "github.com/JoschaP/occ-companion/"
  end
  on_intel do
    sha256 "36dec258d9686559cc88bddb18b75a73d48c2d1821c43762ed2ff406c6d8e801"
    url "https://github.com/JoschaP/occ-companion/releases/download/v0.3.0/OCC.Companion_0.3.0_x64.dmg",
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
