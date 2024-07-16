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
                    docker.image("django-devops").run("--rm --name django-container ${dockerImage}")
                }
            }
        }

        // stage('Copy Report') {
        //     steps {
        //         script {
        //             bat 'docker cp $(docker ps -aqf "name=django-devops"):/app/report.xml ./report.xml'
        //             //  junit '*/target/report.xml'
        //         }
        //     }
        // }
    }
}
