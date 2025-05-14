pipeline {
    agent any

    environment {
        IMAGE_NAME = "sanhasanali/landing-page"
        IMAGE_TAG = "latest"
    }

    stages {
        stage('Checkout Source') {
            steps {
                git url: 'https://github.com/sanhasanali/landing-page'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("${IMAGE_NAME}:${IMAGE_TAG}")
                }
            }
        }

        stage('Push Docker Image to DockerHub') {
            steps {
                script {
                    docker.withRegistry('', 'docker-hub-creds') {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
