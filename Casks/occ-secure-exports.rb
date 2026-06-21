cask "occ-secure-exports" do
  version "0.9.2"

  on_arm do
    sha256 "2aaf3ac841eb47ee0bce310c7cb992de6d0b166285a7358edac5716ad831b535"
    url "https://github.com/JoschaP/occ-secure-exports/releases/download/v0.9.2/OCC.Secure.Exports_0.9.2_aarch64.dmg",
        verified: "github.com/JoschaP/occ-secure-exports/"
  end
  on_intel do
    sha256 "1cda5b03b0d1f8d69c7b6bb4723869a9a52e66c67eef520a3557ae62d92a28b1"
    url "https://github.com/JoschaP/occ-secure-exports/releases/download/v0.9.2/OCC.Secure.Exports_0.9.2_x64.dmg",
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
