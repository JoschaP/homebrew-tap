cask "occ-secure-exports" do
  version "0.9.3"

  on_arm do
    sha256 "ec37983783f0af63747d6b22bef26fb9673e33b6fa68aa5e67269100961b03a2"
    url "https://github.com/JoschaP/occ-secure-exports/releases/download/v0.9.3/OCC.Secure.Exports_0.9.3_aarch64.dmg",
        verified: "github.com/JoschaP/occ-secure-exports/"
  end
  on_intel do
    sha256 "541aaf5eb78e012ac6b1644c9e389819d13de26711be119d0e9ac7e740af7896"
    url "https://github.com/JoschaP/occ-secure-exports/releases/download/v0.9.3/OCC.Secure.Exports_0.9.3_x64.dmg",
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
