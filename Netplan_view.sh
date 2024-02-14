Netplan_view() {
    clear                                                                        # clear le terminal
    echo "==================================================================="
    cat /etc/netplan/*                                                           # afficher la configuration réseaux sur l'ensebe des interfaces possèdant un fichier de configuration netplan
    echo "==================================================================="
    read -p "Taper sur une touche, pour revenir au menu principale : " choix     # attend une entré utilisateur
    case $choix in                                                               # retour menu principale par le main
    *) 
        clear && main
    ;;
esac
}

