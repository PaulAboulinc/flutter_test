if ! command -v sonar-scanner &> /dev/null
then
    echo "Installation of sonar-scanner : "
    
    echo "Download and unzip sonar-scanner archive : "
    curl -o sonarscanner.zip https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.zip
    unzip sonarscanner.zip -d sonarscanner

    echo "Update sonar-scanner configuration to use custom sonarQube server"
    cd sonarscanner/sonar*
    rm conf/sonar-scanner.properties
    cp ../../sonar-scanner.properties conf

    echo "Add sonar-scanner binaries to PATH : "
    pwd=`pwd`
    export PATH=$(pwd)/bin:$PATH

    echo "Cleaning up for local environment : "
    cd ../../
    rm sonarscanner.zip
fi

echo "Run sonar-scanner : "
sonar-scanner