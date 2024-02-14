Install_tools() {
    
    clear
    echo "-----------------"
    echo "Quel outil voulez-vous installer : "
    echo "-----------------"
    read -p "Entrez le nom de l'outil : " choix

    if dpkg -s "$choix" &> /dev/null | grep -q "Status: install ok installed"; then
        clear
        echo "---------------------------"
        echo "L'outil est déjà installé, retour au menu précédent dans 2 secondes"
        echo "---------------------------"   
        sleep 2
        clear
        Menu_d_installation_tools
        
    else
        clear
        sleep 1
        echo "---------------------"
        echo "Installation en cours"
        echo "---------------------"
        
        # Utilisez apt install avec l'option -y pour éviter que la commande ne demande confirmation
        apt install -y "$choix" | tee /Script_Install_Server/Log/Log_Tools.txt

        if dpkg -s "$choix" &> /dev/null; then
            clear
            echo "---------------------"
            echo "$choix est correctement installé "
            echo "---------------------"
            sleep 3 && clear && main
        else 
            clear
            echo "---------------------"
            echo "Une erreur s'est produite pendant l'installation de l'outil $choix"
            echo "---------------------"
            sleep 3 && clear && main
        fi
    fi
}
