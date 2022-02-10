if ! command -v sonar-scanner &> /dev/null
then
    echo "Installation of sonar-scanner : "
    ./install_sonar_scanner.sh
fi

echo "Run sonar-scanner : "
sonar-scanner