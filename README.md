# IHK Wohnimmobilienverwalter Blog

Mein persönlicher Blog zur Vorbereitung auf die IHK-Zertifizierung zum Wohnimmobilienverwalter.

## Lokale Entwicklung

```bash
# Blog lokal starten (mit Future-Artikeln, Development-Umgebung und localhost-Links)
make dev

# Öffnen: http://localhost:1313
```

Wichtig: Lokal nicht `hugo server -D` verwenden. Die produktive `baseURL` in `hugo.toml`
zeigt absichtlich auf `https://blog.homeadmin24.de/`. Fuer lokale Vorschau muss der
Server mit `--baseURL http://localhost:1313/` laufen, sonst erzeugt Hugo absolute
Links zur Produktionsdomain.

Der `make dev`-Befehl rendert in den Speicher (`--renderToMemory`). Dadurch kann ein
normaler Produktionsbuild in `public/` die lokale Vorschau nicht wieder auf
`https://blog.homeadmin24.de/` umbiegen.

## Neuen Artikel erstellen

```bash
# Neuer Post
hugo new posts/mein-artikel.md

# Dann editieren: content/posts/mein-artikel.md
```

## Artikel-Template

```markdown
---
title: "Titel des Artikels"
date: 2025-12-06
draft: false
tags: ["WEG-Recht", "Prüfung"]
categories: ["Rechtliches"]
---

Ihr Inhalt hier...
```

## Deployment (später)

Wenn der Blog fertig ist für GitHub Pages:

1. Build erstellen: `make build`
2. GitHub Repo erstellen
3. GitHub Actions für Auto-Deploy
4. DNS: `blog.homeadmin24.de` → GitHub Pages

## Theme

- **PaperMod**: https://github.com/adityatelange/hugo-PaperMod
- Clean, fast, blog-focused theme
- Features: Dark mode, search, table of contents

## Struktur

```
blog/
├── content/
│   ├── posts/           # Blog-Artikel
│   └── about.md         # Über-Seite
├── themes/PaperMod/     # Theme (git submodule)
├── hugo.toml            # Konfiguration
└── public/              # Generated site (nach hugo build)
```
