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
                    docker.image("django-devops").run("--rm --name django-container")
                }
            }
        }
    }
    
    post {
        always {
            junit 'report.xml'
        }
    }
}
