pipeline {
    agent
    {
        docker {image 'node:django-devops'} 
    }
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
                    bat 'docker run django-devops'
                }
            }
        }
    }
    
    post {
        always {
            junit '**/test-reports/*.xml'
            archiveArtifacts artifacts: '**/test-reports/*.xml', allowEmptyArchive: true
        }
    }
}
