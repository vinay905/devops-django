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
                    docker.image("django-devops").run("--rm --name django-container django-devops")
                }
            }
        }

        stage('Copy Report') {
            steps {
                script {
                    def containerId = bat(script: 'docker ps -aqf name=django-container', returnStdout: true).trim()
                    bat "docker container cp ${containerId}:/app/report.xml ./report.xml"
                }
            }
        }
    }
}
