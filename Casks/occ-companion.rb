cask "occ-companion" do
  version "0.2.1"

  on_arm do
    sha256 "00b0285093f9b73da6a14708918b9e09b5eaa1915b0fbebaf6840fa299e81d87"
    url "https://github.com/JoschaP/occ-companion/releases/download/v0.2.1/OCC.Companion_0.2.1_aarch64.dmg",
        verified: "github.com/JoschaP/occ-companion/"
  end
  on_intel do
    sha256 "80e4deb0ec542a61afab377d8fa648c7291e9d3215ddb75a5d3e7ef89627d13b"
    url "https://github.com/JoschaP/occ-companion/releases/download/v0.2.1/OCC.Companion_0.2.1_x64.dmg",
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
