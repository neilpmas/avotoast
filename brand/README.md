# Brand assets

The Avotoast mascot (an avocado half on toast), wordmark and social preview images.

| File | Use |
|---|---|
| `avotoast.svg` / `avotoast-dark.svg` | The mascot on its violet plate (light / dark). No text, so it works as an `<img>` anywhere. Good as an avatar. |
| `mark-small.svg` | Simplified mark for 16–48px (favicon, small avatars). No face. |
| `wordmark-light.png` / `wordmark-dark.png` | Mascot + `avotoast` wordmark on a transparent background. |
| `social/*.png` | 1280×640 GitHub social previews, one per repo. Upload under the repo's Settings → General → Social preview (there is no API). |

## Look

- Colours come from Neil's personal style system: violet accent `#7C3AED` (dark `#9F5FFF`), rose `#E84D8B`, warm off-white `#F4F3EF`, ink `#1A1916`. Fonts are Inter and JetBrains Mono (both SIL OFL), copied into `fonts/`.
- The food colours (avocado greens, toast browns) are illustration-only. They live inside the mascot SVGs and are not UI colours.
- The avocado stone uses the violet-to-rose gradient so the brand accent is the focal point.

## Regenerating the PNGs

The PNGs are rendered from `wordmark.html` and `social-preview.html` with headless Chrome:

```sh
./brand/build.sh
```

Set `CHROME=/path/to/chrome` if Chrome is not at the macOS default location. To change the tagline, edit the default text in `social-preview.html`, or pass `?sub=…` as `build.sh` does for Bezzie.
