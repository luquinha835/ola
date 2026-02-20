#!/usr/bin/env bash
# Abre o app no navegador usando $BROWSER, ou imprime a URL
URL="https://ola-web.onrender.com"
if [ -n "$BROWSER" ]; then
  "$BROWSER" "$URL" &
else
  if command -v xdg-open >/dev/null 2>&1; then
    xdg-open "$URL" &
  else
    echo "Abra esta URL no seu navegador: $URL"
  fi
fi
