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
            stage('Build Docker image') 
            {
                script {
                        docker.image('django-devops').inside {
                            sh 'pytest --junitxml=report.xml'
                        }
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
