cask "occ-secure-exports" do
  version "0.6.0"

  on_arm do
    sha256 "4eead6f986a4f5a7fa860131f6e41cb423b444e730df263ae0f5e2f053c765f3"
    url "https://github.com/JoschaP/occ-secure-exports/releases/download/v0.6.0/OCC.Secure.Exports_0.6.0_aarch64.dmg",
        verified: "github.com/JoschaP/occ-secure-exports/"
  end
  on_intel do
    sha256 "c9007339fb2b520d5e1eb6bbe453ac60c2d52ad7d8c6e203c834cae5dd42ee3e"
    url "https://github.com/JoschaP/occ-secure-exports/releases/download/v0.6.0/OCC.Secure.Exports_0.6.0_x64.dmg",
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
