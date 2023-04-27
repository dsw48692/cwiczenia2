#!/bin/bash

if [[ "$1" == "--logs" && "$2" =~ ^[0-9]+$ ]]; then
  count=$2
  for ((i=1; i<=count; i++))
  do
    filename="log${i}.txt"
    echo "Nazwa pliku: $filename" > $filename
    echo "Nazwa skryptu: $0" >> $filename
    echo "Data: $(date +%Y-%m-%d)" >> $filename
  done
else
  echo "Sposób użycia: $0 --logs <liczba_plików>"
fi
