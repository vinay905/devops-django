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
                    bat "docker run testcase"
                }
            }
        }

        stage('Report Results') {
            steps
            {
                withEnv {
                TEST_RESULTS_DIR = 'C:/Users/Vinay/Desktop/PythonDevops'
                }
                junit "${TEST_RESULTS_DIR}/report.xml"
            }
        }
    }
    post {
        always {
            junit 'reports/test-results.xml'
            cleanWs()
        }
    }
}
