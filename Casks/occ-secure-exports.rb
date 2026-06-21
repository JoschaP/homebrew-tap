cask "occ-secure-exports" do
  version "0.8.0"

  on_arm do
    sha256 "253a7ca7d0333b5e3922f0c03014687c4a6f6511be1be2b5aab46b81a996253d"
    url "https://github.com/JoschaP/occ-secure-exports/releases/download/v0.8.0/OCC.Secure.Exports_0.8.0_aarch64.dmg",
        verified: "github.com/JoschaP/occ-secure-exports/"
  end
  on_intel do
    sha256 "699d3aa47232420a4f61db9a5059536cd71d128409f2157458580d1ddb970043"
    url "https://github.com/JoschaP/occ-secure-exports/releases/download/v0.8.0/OCC.Secure.Exports_0.8.0_x64.dmg",
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
