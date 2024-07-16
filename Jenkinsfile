pipeline {
    agent any

    stages {
        stage('Build Docker image') {
            steps {
                script {
                    dockerImage = docker.build("django-devops")
                }
            }
        }

        stage('Run tests') {
            steps {
                script {
                    // Run docker container and execute pytest with output to report.xml
                    docker.image("django-devops").run("--rm --name django-container pytest mytests/test_views.py --junitxml=/app/report.xml")
                }
            }
        }

        stage('Copy Report') {
            steps {
                script {
                    // Find the running container ID based on the container name
                    def containerId = sh(script: "docker ps -aqf name=django-container", returnStdout: true).trim()
                    
                    // Copy report.xml from the Docker container to Jenkins workspace
                    sh "docker cp ${containerId}:/app/report.xml ./report.xml"
                }
            }
        }
    }
}
