pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '--entrypoint=\'\''
        }
    }
    stages {
        stage('Build') {
            steps {
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

