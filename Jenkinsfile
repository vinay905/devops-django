pipeline {
    agent any
    tools 
    {
        dockerTool 'Docker'
    }
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
                    dockerImage.inside {
                        sh 'python myproject/manage.py test mytests'
                    }
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
