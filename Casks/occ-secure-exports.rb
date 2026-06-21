cask "occ-secure-exports" do
  version "0.9.4"

  on_arm do
    sha256 "a801c61199891f1ffd36f59e7d7c10b597b6070670a101523e18ef962715a75e"
    url "https://github.com/JoschaP/occ-secure-exports/releases/download/v0.9.4/OCC.Secure.Exports_0.9.4_aarch64.dmg",
        verified: "github.com/JoschaP/occ-secure-exports/"
  end
  on_intel do
    sha256 "52e5d94e77883e9b76144003ea385638e3a3dca9517cabf0b336ec67030f21ea"
    url "https://github.com/JoschaP/occ-secure-exports/releases/download/v0.9.4/OCC.Secure.Exports_0.9.4_x64.dmg",
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
