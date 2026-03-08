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

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 3000:3000 myapp-image'
            }
        }

    }
}