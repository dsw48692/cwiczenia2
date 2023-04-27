#!/bin/bash

if [[ "$1" == "--date" ]]; then
  echo "Dzisiaj jest $(date +%Y-%m-%d)"
else
  echo "Sposób użycia: $0 --date"
fi