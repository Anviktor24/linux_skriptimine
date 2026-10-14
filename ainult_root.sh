
#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Viga: seda skripti saab käivitada ainult root-kasutaja."
    exit 1
fi

echo "Root-kontroll õnnestus."
echo "Skript töötab root-kasutaja õigustes."
