pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = '1227'
        DOCKER_IMAGE_NAME = 'surajsp9/html-dev'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                // Perform build steps if needed
                echo 'Building the project...'
            }
        }

        stage('Test') {
            steps {
                // Run tests if needed
                echo 'Running tests...'
            }
        }

        stage('Build and Push Docker Image') {
            steps {
                script {
                    // Build Docker image
                    def dockerImage = docker.build("${DOCKER_IMAGE_NAME}:${BUILD_NUMBER}")

                    // Push Docker image to Docker Hub
                    docker.withRegistry('https://registry.hub.docker.com', DOCKERHUB_CREDENTIALS) {
                        dockerImage.push()
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                // Define deployment steps
                echo 'Deploying the project...'
            }
        }
    }

    post {
        success {
            echo 'CI/CD pipeline completed successfully!'
        }
        failure {
            echo 'CI/CD pipeline failed.'
        }
    }
}
