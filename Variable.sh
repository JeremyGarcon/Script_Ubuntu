# Variables des Journeaux
Log_Tools="Log/Log_Tools.txt"
Log_apt_Install_Serveur="Log/Log_apt_Install_Serveur.txt"

Service_Log_Install_Serveur() {
    local Commande_Install="$1"
    local Log="$2"

    clear
    echo "====================================="
    echo "Installation en Coure de traitement"
    echo "===================================="
    
    echo "--------------Début de l'opération--------------" &>> "$Log"
    date >> "$Log"  # Ajout de la date de début de l'opération dans le fichier de log
    $Commande_Install &>> "$Log"  # Exécute la commande et redirige la sortie standard et d'erreur vers le fichier de log
    echo "--------------Fin de l'opération--------------" &>> "$Log"
    date >> "$Log"  # Ajout de la date de fin de l'opération dans le fichier de log
    sleep 2 && clear

    echo "=========================================================================="
    echo "Installation Terminer, Vous pouvez consuler le Log dans $Log"
    echo "=========================================================================="
    
}

