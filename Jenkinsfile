pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
                echo 'building'
                sh 'mvn clean install'
            }
        }
        stage('Deploy') {
             steps {
                 echo 'Deploying'
             }
        }
    }
}

