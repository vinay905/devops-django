pipeline {
    agent any
    stages 
    { 
        stage('Build Docker image') 
        {
            steps {
                script {
                    dockerImage = docker.build("django-devops")
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
