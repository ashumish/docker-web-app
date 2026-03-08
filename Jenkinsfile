pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                git 'https://github.com/ashumish/docker-web-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myapp-image .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh 'docker stop myapp-container || true'
                sh 'docker rm myapp-container || true'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 3000:3000 --name myapp-container myapp-image'
            }
        }

    }
}