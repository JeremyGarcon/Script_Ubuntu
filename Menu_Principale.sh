#!/bin/bash


# fait appelle à d'autre Scripte
source apt_update.sh
source Ping_DNS.sh
source Netplan_view.sh
source Menu_d_installation_tools.sh
source func_install_tools.sh  
source Menu_Recherche_tools.sh
source Menu_installation_serveur.sh
source Serveur_FTP.sh
source Variable.sh
source ServeurWeb.sh
source Clear_Log.sh
source Entree_Invalide.sh
source Automatisation_Serveur_Install/Serveur_FTP.sh
source Automatisation_Serveur_Install/ServeurLAMP.sh
source Automatisation_Serveur_Install/ServeurSSH.sh
source Automatisation_Serveur_Install/ServeurWeb.sh


# Menu principale
main() { # Point d'entre du script et menu principale 
clear # clear le terminal 
echo "======================================================================================================"
echo "Bienvenue dans le script d'installation automatique de serveur Ubuntu !"
echo ""
echo "Que voulez-vous faire ?"
echo "1) Mettre à jour la list des packets" 
echo "2) Ping Google"  
echo "3) Voir sa configuration Ethernet" 
echo "4) Menu d'installation Tools Unix" 
echo "5) Installation automatique de serveur linux"
echo "6) Clear Les Logs"
echo "7) Quitter"  
echo "======================================================================================================"
read -p "Votre choix : " choix

case $choix in
    1) apt_update ;;                # fait un apt update, nom du scripte = apt_update.sh
    2) Ping8.8.8.8  ;;              # fait un ping 8.8.8.8 ce qui permet de tester une connexion ethernet, nom du scripte = Ping_DSN.sh
    3) Netplan_view ;;              # fait voir le fichier /etc/netplan/* responsable de la conf réseaux de l'os, nom du script = Netplan_view.sh
    4) Menu_d_installation_tools ;; # permet d'accéder au Menu de l'installation de tools pratique, nom du script = Menu_d_installation_tools.sh
    5) Menu_installation_serveur ;;
    6) Clear_Log ;;
    7)                              # met fin au programme 
        clear                       # clear le terminal 
        echo "================="
        echo "fin du script"    
        echo "=================" 
        clear && exit                        # met fin au script
        ;;
        *) 
        Entree_Invalide 
        main
        ;;
        esac
       
    }
# Appel de la fonction main c'est le point d'entre du programme 
main


# notion 
# &>
# /dev/null
# grep -q et -o
# dpkg -s