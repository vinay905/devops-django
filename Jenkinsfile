pipeline {
    agent any
    stages 
    { 
        stage('Build Docker image') 
        {
            steps {
                script {
                    dockerImage = docker.build("django-devops:latest")
                }
            }
        }

        stage('Run tests') 
        {
            steps {
                script {
                    docker.image("django-devops:latest").run("--rm --name django-container")
                    bat "docker exec django-container pytest > test-results.txt"
                }
            }
        }
    }
}
