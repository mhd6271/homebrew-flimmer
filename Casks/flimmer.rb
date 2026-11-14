cask "flimmer" do
  version "0.5.40"
  sha256 "345111135067cc8555a8434daf33f7a0beae8d27924921f18aed080ff2344619"

  url "https://github.com/mhd6271/flimmer-releases/releases/download/v#{version}/Flimmer-#{version}-macOS-arm64.zip"
  name "MM Alternative Videoplayer"
  desc "Werbefreier YouTube-Client mit SponsorBlock und DeArrow"
  homepage "https://github.com/mhd6271/flimmer-releases"

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
    MM Alternative Videoplayer ist nicht bei Apple notarisiert. Beim ersten Start
    meldet macOS einen nicht verifizierten Entwickler: Systemeinstellungen →
    Datenschutz & Sicherheit → „Dennoch öffnen“. Das ist nur einmal nötig; Updates
    holt die App danach selbst.
  EOS
end
