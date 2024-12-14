#!/bin/sh

missing_files=""

if [ $# -ne 1 ]; then
  echo "Uso: $0 <extensión>"
  exit 1
fi

ext=$1

for i in $(seq -w 000 999); do
  if [ ! -f "$i.$ext" ]; then
    missing_files="$missing_files $i.$ext"
  fi
done

if [ -n "$missing_files" ]; then
  echo "touch$missing_files"
fi