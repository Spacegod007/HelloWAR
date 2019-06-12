pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
                echo 'building'
                mvn install
            }
        }
        stage('Deploy') {
             steps {
                 echo 'Deploying'
             }
        }
    }
}

