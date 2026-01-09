pipeline {

    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/clarencekmsham/hello_hapi.git'
            }
        }
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
