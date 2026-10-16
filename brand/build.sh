#!/bin/sh
# Regenerates the PNGs in brand/ from the HTML sources using headless Chrome.
# Usage: ./brand/build.sh   (run from anywhere)
set -e
cd "$(dirname "$0")"
CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
shot() { "$CHROME" --headless --hide-scrollbars "$@" >/dev/null 2>&1; }
shot --screenshot="$PWD/wordmark-light.png" --window-size=960,240 --default-background-color=00000000 "file://$PWD/wordmark.html"
shot --screenshot="$PWD/wordmark-dark.png"  --window-size=960,240 --default-background-color=00000000 "file://$PWD/wordmark.html?dark"
mkdir -p social
for repo in avotoast avotoast-frontend avotoast-backend; do
  shot --screenshot="$PWD/social/$repo.png" --window-size=1280,640 "file://$PWD/social-preview.html?repo=$repo"
done
# Bezzie is a component, so it gets its own subline instead of the Avotoast tagline.
shot --screenshot="$PWD/social/bezzie.png" --window-size=1280,640 "file://$PWD/social-preview.html?repo=bezzie&title=bezzie&sub=BFF+auth+for+Cloudflare+Workers."
echo "done"
