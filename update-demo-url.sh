#!/usr/bin/env bash
# Point the front door at a new live address. The submitted link never changes.
#   bash update-demo-url.sh https://xxxx.trycloudflare.com "임시 주소"
set -euo pipefail
[ $# -ge 1 ] || { echo "usage: $0 <url> [note]" >&2; exit 2; }
cd "$(dirname "${BASH_SOURCE[0]}")"
python3 - "$1" "${2:-}" <<'PY'
import json, sys
from datetime import datetime, timezone
url, note = sys.argv[1], sys.argv[2]
json.dump({'url': url, 'note': note,
           'updated': datetime.now(timezone.utc).isoformat(),
           'meaning': 'The live demo address. Kept in its own file so it can change without '
                      'editing the page.'},
          open('demo.json', 'w'), ensure_ascii=False, indent=2)
open('demo.json', 'a').write('\n')
print('demo.json ->', url)
PY
git add demo.json && git commit -q -m "Point the demo at ${1}" && git push -q origin main && echo "pushed"
