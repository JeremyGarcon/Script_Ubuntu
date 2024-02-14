check_package_installed_serveur(){
    clear
    local package_name="$1"
    if dpkg -s "$package_name" &> /dev/null; then
        return true 
    else
        return false 
    fi
}

