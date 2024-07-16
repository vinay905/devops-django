pipeline {
    agent any
    stages {
        stage('Build Docker image') {
            steps {
                script {
                    dockerImage = docker.build("django-devops:latest")
                }
            }
        }

        stage('Run tests') {
            steps {
                script {
                    // Run tests inside the Docker container and capture results
                    sh """
                    docker run --rm --name django-container -v \${WORKSPACE}:/app \\
                    django-devops:latest pytest --junitxml=/app/test-results.xml
                    """
                }
            }
        }
    }
}
