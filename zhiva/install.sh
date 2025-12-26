#!/bin/bash

set -e

if [ -d "$HOME/.zhiva" ]; then
    echo "Zhiva is already installed."
    echo "[res]0.0.1[/res]"
    exit 0
fi

curl -fsSL https://raw.githubusercontent.com/wxn0brP/Zhiva/HEAD/install/prepare.sh | bash

export PATH="$HOME/.zhiva/bin:$PATH"

zhiva install Zhiva-store-app

add_line() {
  local line="$1"
  local file="$2"

  grep -qxF "$line" "$file" 2>/dev/null || echo "$line" >> "$file"
}

add_line 'export PATH="$HOME/.zhiva/bin:$PATH"' ~/.bashrc
add_line 'export PATH="$HOME/.zhiva/bin:$PATH"' ~/.zshrc
add_line '[ -s "~/.zhiva/scripts/_zhiva" ] && source "~/.zhiva/scripts/_zhiva"' ~/.zshrc

echo "Zhiva installed successfully!"
echo "[res]0.0.1[/res]"