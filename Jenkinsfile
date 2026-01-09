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
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds',
                                                  usernameVariable: 'DOCKER_USER',
                                                  passwordVariable: 'DOCKER_PASS')]) {
                sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                sh 'docker tag demoapp $DOCKER_USER/demoapp:latest'
                sh 'docker push $DOCKER_USER/demoapp:latest'
                }
            }
        }
    }
}
