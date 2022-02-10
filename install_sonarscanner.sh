curl -o sonarscanner.zip https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.zip
unzip sonarscanner.zip -d sonarscanner
cd sonarscanner/sonar*
rm conf/sonar-scanner.properties
mv ../../sonar-scanner.properties conf
export PATH=bin:$PATH