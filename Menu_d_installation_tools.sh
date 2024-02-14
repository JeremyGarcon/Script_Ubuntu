Menu_d_installation_tools() {   # Menu de l'installation de tools pratique
    clear
    echo "-----------------------"
    echo "1) voir si un tools est déja installer "
    echo "2) Installer un tools linux"
    echo "3) retour au menu principale"
    echo "-----------------------"
    read -p "Votre choix : " choix # prend l'entré utilisateur 

    case $choix in              # fait appelle à des fonctions en fonction de l'entre utilisateur
    1) Menu_Recherche_tools ;;  #recherche un tools 
    2) Install_tools ;;         # fonction pour l'ainstallation du tools
    3) clear && main   ;;          # retourne au menu principale
    *)                          # en cas de réponse invalide le relance la fonctions 
    Entree_Invalide
    Menu_d_installation_tools # fait appelle à la fonction Menu_d_installation_tools, script = Menu_d_installation_tools.sh
    esac
}
