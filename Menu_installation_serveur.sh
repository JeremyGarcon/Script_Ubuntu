Menu_installation_serveur() {
    clear
    echo "--------------------"
    Menu "d'instalation automatique de Serveur :"
    echo "--------------------"
    echo "Qu'elle Serveur voulez vous installer : "
    echo "1) Serveur FTP"
    echo "2) Serveur Web"
    echo "3) Installation de Serveur LAMP"
    echo "4) Installation de Serveur SSH"
    echo "5) Installation de Serveur WordPress"
    echo "6) Revenir au Menu Principale"
    read -p "Entre votre reponse:  " choix
    
    case $choix in 
    1) Install_ServeurFTP;;
    2) Choix_Serveur_Web ;;
    3) Install_ServeurLAMP ;;
    4) Install_ServeurSSH ;; 
    5) ;;
    6) main ;;
    *) 
    Entree_Invalide
    Menu_installation_serveur 
    ;;
    esac

}