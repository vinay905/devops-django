pipeline {
    agent any

    stages {
        stage('Build Docker image') {
            steps {
                script {
                    dockerImage = docker.build("testcase")
                }
            }
        }

        stage('Run tests') {
            steps {
                script {
                    // Run docker container and execute pytest with output to report.xml
                    docker.image("testcase").run("testcase")
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
