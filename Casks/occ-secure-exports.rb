cask "occ-secure-exports" do
  version "0.7.0"

  on_arm do
    sha256 "324226e2e0db3e53b77ef5361d98d5d3214cb42dffc22721087f8ae7f6b4dd71"
    url "https://github.com/JoschaP/occ-secure-exports/releases/download/v0.7.0/OCC.Secure.Exports_0.7.0_aarch64.dmg",
        verified: "github.com/JoschaP/occ-secure-exports/"
  end
  on_intel do
    sha256 "96694129d3c63288d7705fc8f18c43b79a236d7f2552d53c18398bc949f6b443"
    url "https://github.com/JoschaP/occ-secure-exports/releases/download/v0.7.0/OCC.Secure.Exports_0.7.0_x64.dmg",
        verified: "github.com/JoschaP/occ-secure-exports/"
  end

  name "OCC Secure Exports"
  desc "Retrieve & decrypt your age-encrypted data exports"
  homepage "https://github.com/JoschaP/occ-secure-exports"

  app "OCC Secure Exports.app"

  zap trash: [
    "~/Library/Application Support/de.occ-secure-exports.app",
    "~/Library/Caches/de.occ-secure-exports.app",
    "~/Library/WebKit/de.occ-secure-exports.app",
  ]
end
