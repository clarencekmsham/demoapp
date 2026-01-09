pipeline {

    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t demoapp .'
            }
        }
        stage('Push Image') {
            steps {
                sh 'docker tag demoapp clarencekmsham/demoapp:latest'
                sh 'docker push clarencekmsham/demoapp:latest'
            }
        }
    }
}
