#!/bin/bash

# Quell- und Zielverzeichnis
SOURCE_DIR="config/"
TARGET_DIR="$HOME/.config/hypr"

# Überprüfen, ob das Quellverzeichnis existiert
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Das Quellverzeichnis '$SOURCE_DIR' existiert nicht."
    exit 1
fi

# Überprüfen, ob das Zielverzeichnis existiert, wenn nicht, erstelle es
if [ ! -d "$TARGET_DIR" ]; then
    echo "Das Zielverzeichnis '$TARGET_DIR' existiert nicht. Es wird erstellt."
    mkdir -p "$TARGET_DIR"
fi

# Kopieren der Dateien und Überschreiben vorhandener Dateien
cp -r "$SOURCE_DIR"* "$TARGET_DIR/"

# Bestätigung der erfolgreichen Kopie
echo "Dateien wurden erfolgreich von '$SOURCE_DIR' nach '$TARGET_DIR' kopiert."
