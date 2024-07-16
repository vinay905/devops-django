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
                    docker.image("django-devops").run("--rm --name django-container")
                }
            }
        }

        stage('Copy Report') {
            steps {
                script {
                    bat returnStdout: true, script: '''def containerid=docker ps -aqf name=django-container
docker cp ${containerid}:/app/report.xml ./report.xml
'''
                }
            }
        }
    }
}
