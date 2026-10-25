# Homebrew-Tap für Flimmer

[Flimmer](https://muehlbronner.de/projekte/flimmer/) ist ein werbefreier YouTube-Client mit SponsorBlock und DeArrow
für macOS, Windows, Linux und Android. Dieser Tap installiert die Mac-Fassung (Apple-Prozessor) mit Homebrew:

```bash
brew install --cask mhd6271/flimmer/flimmer
```

Flimmer ist nicht bei Apple notarisiert. Beim ersten Start meldet macOS einen nicht verifizierten Entwickler:
**Systemeinstellungen → Datenschutz & Sicherheit → „Dennoch öffnen“**. Das ist nur einmal nötig.

Flimmer aktualisiert sich selbst; `brew upgrade` ist dafür nicht nötig. Deinstallieren mit
`brew uninstall --cask flimmer`, samt Einstellungen, Abos und Verlauf mit `brew uninstall --zap --cask flimmer`.

Downloads für alle Systeme: <https://github.com/mhd6271/flimmer-releases/releases/latest>

Flimmer ist mit YouTube und Google nicht verbunden. YouTube ist eine Marke von Google LLC.
