cask "occ-secure-exports" do
  version "0.9.0"

  on_arm do
    sha256 "c832fc5ec867b9da5b67bc93df7b5a438835fa6bc7a9b45d4962ead9504e70d7"
    url "https://github.com/JoschaP/occ-secure-exports/releases/download/v0.9.0/OCC.Secure.Exports_0.9.0_aarch64.dmg",
        verified: "github.com/JoschaP/occ-secure-exports/"
  end
  on_intel do
    sha256 "fea988d321673bfc7171353a55d40fc9a0540aee129e1d4d4d30dc7dea1ca42e"
    url "https://github.com/JoschaP/occ-secure-exports/releases/download/v0.9.0/OCC.Secure.Exports_0.9.0_x64.dmg",
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
