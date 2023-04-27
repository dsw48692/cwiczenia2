#!/bin/bash

if [ "$1" == "--init" ]; then
  # Klonowanie repozytorium do aktualnego katalogu
  git clone https://github.com/nazwa/repo.git

  # Dodanie ścieżki do zmiennej środowiskowej PATH
  echo 'export PATH=$PATH:'$(pwd)'/repo' >> ~/.bashrc
  source ~/.bashrc  # Odświeżenie zmiennej środowiskowej PATH
elif [ "$1" == "--error" ]; then
  if [ -z "$2" ]; then
    # Brak podanej liczby plików, domyślnie 100
    num_files=100
  else
    num_files=$2
  fi

  # Utworzenie katalogu errorx i num_files plików errorx.txt
  mkdir errorx
  for (( i=1; i<=$num_files; i++ )); do
    touch errorx/error$i.txt
  done
else
  echo "Nieprawidłowa opcja. Użyj '--init' lub '--error [liczba]'"
fi

