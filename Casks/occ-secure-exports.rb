cask "occ-secure-exports" do
  version "0.9.1"

  on_arm do
    sha256 "8bd60da156b101a901dc2ccadbf92abfb2f3273a18ede36db2fffabdad476687"
    url "https://github.com/JoschaP/occ-secure-exports/releases/download/v0.9.1/OCC.Secure.Exports_0.9.1_aarch64.dmg",
        verified: "github.com/JoschaP/occ-secure-exports/"
  end
  on_intel do
    sha256 "23244e9810c7c00ed00322b265bf8462f7b17cbd4227a8c704877593ea022c2f"
    url "https://github.com/JoschaP/occ-secure-exports/releases/download/v0.9.1/OCC.Secure.Exports_0.9.1_x64.dmg",
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
