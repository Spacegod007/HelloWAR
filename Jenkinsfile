pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
                echo 'building'
                mvn compile war:war
            }
        }
        stage('Deploy') {
             steps {
                 echo 'Deploying'
             }
        }
    }
}

