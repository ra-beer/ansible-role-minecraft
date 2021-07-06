curl -s $(curl -fsSL 'https://launchermeta.mojang.com/mc/game/version_manifest.json' | jq -r 'first(.versions[]|select(.type == "release")).url') | jq -r '.downloads.server.url'
