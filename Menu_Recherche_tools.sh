Menu_Recherche_tools() {

    clear
    echo "==================================================================="
    read -p "1) Entrer le nom du tools que vous voulez chercher : " choix
    echo "==================================================================="
    
    if dpkg -s "$choix" 2>/dev/null | grep -q "Status: deinstall ok config-files"; then
        clear
        echo "-----------------------------------------"
        echo "$choix n'est pas installé mais des informations sont disponibles sur le tools"
        echo "-----------------------------------------"
    elif dpkg -s "$choix" 2>/dev/null | grep -q "Status: install ok installed"; then
        clear
        echo "-----------------------------------------"
        echo "$choix est installé"
        echo "-----------------------------------------"
        sleep 2 && clear && main
    else
        clear
        echo "-----------------------------------------"
        echo "$choix n'est pas présent sur le système, aucune information n'est disponible"
        echo "-----------------------------------------"
        sleep 2 && clear && main
    fi
}
