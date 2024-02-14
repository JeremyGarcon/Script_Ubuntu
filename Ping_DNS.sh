Ping8.8.8.8() { # fonction pour tester la connectivité Ethernet à google.com
    clear
    ping -c 3 8.8.8.8 &> tmp.txt && Verif_Ping && rm tmp.txt && sleep 2 && clear && main
}
Verif_Ping() {
    lost=$(grep -oP '\d+(?=% packet loss)' tmp.txt)
    if [ "$lost" -eq 100 ]; then
        clear && echo "------------------" && echo "Le Ping n'a pas atteint sa destination" && echo "------------------"
    elif [ "$lost" -eq 0 ]; then
        clear && echo "------------------" && echo "Le Ping a atteint sa destination" && echo "------------------"
    else
        clear && echo "------------------" && echo "Le Ping a atteint partiellement sa destination ($lost% de perte de paquets)" && echo "------------------"
    fi
}

