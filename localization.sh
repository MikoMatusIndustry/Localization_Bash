#!/bin/bash

# Nazwa pliku wejściowego
INPUT_FILE="widok.JPG"
OUTPUT_FILE="geolocation_data.txt"

# Sprawdzenie, czy plik wejściowy istnieje
if [ ! -f "$INPUT_FILE" ]; then
  echo "Plik wejściowy $INPUT_FILE nie istnieje."
  exit 1
fi

# Użycie exiftool do wyodrębnienia danych geolokalizacyjnych
latitude=$(exiftool -n -p '$GPSLatitude' "$INPUT_FILE" 2>/dev/null)
longitude=$(exiftool -n -p '$GPSLongitude' "$INPUT_FILE" 2>/dev/null)
altitude=$(exiftool -n -p '$GPSAltitude' "$INPUT_FILE" 2>/dev/null)
# Sprawdzenie, czy dane geolokalizacyjne są dostępne
if [ -z "$latitude" ] || [ -z "$longitude" ]; then
  echo "Brak danych geolokalizacyjnych w pliku $INPUT_FILE."
  exit 1
fi

# Tworzenie pliku wyjściowego i zapisywanie danych w czytelnym formacie
{
  echo "file name: $INPUT_FILE"
  echo "latitude: $latitude"
  echo "longitude: $longitude"
  echo "altitude: $altitude"
} > "$OUTPUT_FILE"

echo "Dane geolokalizacyjne zapisane do $OUTPUT_FILE."
