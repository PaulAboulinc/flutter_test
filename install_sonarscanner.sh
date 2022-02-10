curl -o sonarscanner.zip https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.zip
unzip sonarscanner.zip -d sonarscanner
cd sonarscanner/sonar* || exit
rm conf/sonar-scanner.properties
cp ../../sonar-scanner.properties conf
pwd=`pwd`
export PATH=$(pwd)/bin:$PATH
cd ../../
rm sonarscanner.zip