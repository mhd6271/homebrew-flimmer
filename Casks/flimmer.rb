cask "flimmer" do
  version "0.5.34"
  sha256 "9ba2ba62b23fe0dd7a090e6b0f12b3fea9e0e6d44515de49313e1a3eaf013ec4"

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
