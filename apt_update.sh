apt_update() {
    clear
    if apt update &> /dev/null; then
        echo "--------------------"
        echo "apt update a réussi"
        echo "--------------------"
    else
        echo "--------------------"
        echo "apt update a échoué"
        echo "--------------------"
    fi
    sleep 3 && clear && main
}
