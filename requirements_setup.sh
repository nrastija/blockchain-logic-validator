#
# Skripta za setup okruženja
# Datum: 6/1/2026
#


echo "============================================"
echo "[1/2] Ažuriranje sustava (dinamično)"
echo "============================================"

if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO=$ID
    echo "Detektirana distribucija: $DISTRO"
else
    echo "GREŠKA: Ne mogu detektirati distribuciju!"
    exit 1
fi

case $DISTRO in
    fedora)
        echo "Ažuriranje Fedora sustava..."
        sudo dnf upgrade -y
        ;;
    ubuntu|debian)
        echo "Ažuriranje Ubuntu/Debian sustava..."
        sudo apt update && sudo apt upgrade -y
        ;;
    arch|manjaro)
        echo "Ažuriranje Arch/Manjaro sustava..."
        sudo pacman -Syu --noconfirm
        ;;
    *)
    echo "Error: Nepoznat Linux distro: $DISTRO"
    echo "Preskače se ažuriranje sustava, molim da sami ažurirate sustav"
    ;;
esac

echo "============================================"
echo "[2/2] Instaliranje Flora-2 verzija 2.1."
echo "============================================"

# Instalacija preuzeta od dokumenta Installfest sa 2. laboratorijskih vježbi na predmetu
wget -O flora2.run "https://downloads.sourceforge.net/project/flora/FLORA-2/2.1%20%28Punica%20granatum%29/flora2-2.1-RC1.run?ts=gAAAAABnDtrFOdlvUMvPBO_22hsX9guXx4pgiB2FfNTXZlfYrHjRXsGw3WUatICxM2HuzXnYmkb7J8qaoN8Xawt5e-8R7BZqww%3D%3D&use_mirror=master&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fflora%2Ffiles%2FFLORA-2%2F2.1%2520%2528Punica%2520granatum%2529%2F"
chmod +x flora2.run
./flora2.run

rm flora2.run


echo "============================================"
echo "[FIN] Završena setup skripta!"
echo "============================================"
