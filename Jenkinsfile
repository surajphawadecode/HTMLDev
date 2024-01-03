pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                // Here you can perform build steps if needed.
                echo 'Building the project...'
            }
        }

        stage('Test') {
            steps {
                // Here you can run tests if needed.
                echo 'Running tests...'
            }
        }

        stage('Deploy') {
            steps {
                // Here you can define deployment steps.
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
