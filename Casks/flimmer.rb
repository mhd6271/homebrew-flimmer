cask "flimmer" do
  version "0.5.30"
  sha256 "7e2a6a1cd08136987a7d3eba935df678487369cc2f1ebc8b671aa5c3e1e9c9c3"

  url "https://github.com/mhd6271/flimmer-releases/releases/download/v#{version}/Flimmer-#{version}-macOS-arm64.zip"
  name "Flimmer"
  desc "Werbefreier YouTube-Client mit SponsorBlock und DeArrow"
  homepage "https://muehlbronner.de/projekte/flimmer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Flimmer.app"

  zap trash: [
    "~/Library/Caches/io.github.mhd6271.flimmer",
    "~/Library/WebKit/io.github.mhd6271.flimmer",
  ]

  caveats <<~EOS
    Flimmer ist nicht bei Apple notarisiert. Beim ersten Start meldet macOS einen
    nicht verifizierten Entwickler: Systemeinstellungen → Datenschutz & Sicherheit →
    „Dennoch öffnen“. Das ist nur einmal nötig; Updates holt Flimmer danach selbst.
  EOS
end
