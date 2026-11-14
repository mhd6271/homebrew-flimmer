# Homebrew-Tap für den MM Alternative Videoplayer

Der MM Alternative Videoplayer (früher „Flimmer“) ist ein werbefreier YouTube-Client mit SponsorBlock und DeArrow
für macOS, Windows, Linux, Android und Google TV, als Test auch iPhone und iPad. Dieser Tap installiert die
Mac-Fassung (Apple-Prozessor) mit Homebrew:

```bash
brew install --cask mhd6271/flimmer/flimmer
```

Der Befehl und der Dateiname bleiben beim alten Namen: Homebrew legt die App als `Flimmer.app` nach `/Applications`,
im Dock und im Menü heißt sie seit 0.5.39 „MM Alternative Videoplayer“. Liegt schon eine von Hand installierte Kopie in
`~/Applications`, diese vorher löschen, sonst gibt es die App zweimal. Abos und Einstellungen bleiben dabei erhalten.

Die App ist nicht bei Apple notarisiert. Beim ersten Start meldet macOS einen nicht verifizierten Entwickler:
**Systemeinstellungen → Datenschutz & Sicherheit → „Dennoch öffnen“**. Das ist nur einmal nötig.

Die App aktualisiert sich selbst; `brew upgrade` ist dafür nicht nötig. Deinstallieren mit
`brew uninstall --cask flimmer`, samt Einstellungen, Abos und Verlauf mit `brew uninstall --zap --cask flimmer`.

Downloads für alle Systeme: <https://github.com/mhd6271/flimmer-releases/releases/latest>

Der MM Alternative Videoplayer ist mit YouTube und Google nicht verbunden. YouTube ist eine Marke von Google LLC.
