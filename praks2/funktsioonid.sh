#!/bin/bash

# 1. Lihtne funktsioon ilma argumentideta
show_header() {
    echo "======================================"
    echo "       BASHI FUNKTSIOONIDE PRAKTIKA   "
    echo "======================================"
}

# 2. Funktsioon argumentide ja lokaalsete muutujatega (local)
tervita_kasutajat() {
    local nimi="$1"
    local roll="$2"

    # Kontrollime argumentide arvu ($#)
    if [ $# -lt 1 ]; then
        echo "Viga: Nimi on sisestamata!"
        return 1
    fi

    echo "Tere, $nimi!"
    if [ -n "$roll" ]; then
        echo "Sinu roll: $roll"
    fi
    return 0
}

# 3. Arvutusfunktsioon, mille väljund salvestatakse muutujasse
liida_arvud() {
    local a="$1"
    local b="$2"

    if [ $# -ne 2 ]; then
        echo "Viga: Sisesta täpselt kaks arvu!"
        return 1
    fi

    echo "$((a + b))"
}

# 4. Süsteemi info kuvamise funktsioon
show_system_info() {
    echo "--- Süsteemi andmed ---"
    echo "Kasutaja: $(whoami)"
    echo "Arvuti nimega: $(hostname)"
    echo "Kerneli versioon: $(uname -r)"
}

# ======================================
# PÕHIPROGRAMM (Kutsuge funktsioonid välja)
# ======================================

# Päise kuvamine
show_header

# Tervituse väljakutsumine argumentidega
tervita_kasutajat "Anviktor" "Administrator"

# Arvutuse tegemine ja tulemuse püüdmine muutujasse $(...)
summa=$(liida_arvud 15 25)
echo "Arvutuse liida_arvud(15, 25) tulemus: $summa"

# Süsteemi info kuvamine
show_system_info
