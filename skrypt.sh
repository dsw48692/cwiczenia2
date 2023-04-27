#!/bin/bash

if [[ "$1" == "--date" || "$1" == "-d" ]]; then
  echo "Dzisiaj jest $(date +%Y-%m-%d)"
else
  echo "Sposób użycia: $0 --date| -d"
fi
