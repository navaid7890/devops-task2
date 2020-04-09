pipeline {
    agent {
        node {
            label 'master'
        }
    }
    stages {
        stage('Test') {
            steps {
                sh 'docker build -t my-apache2 .'
                sh 'docker run -dit --name my-running-app -p 50001:80 my-apache2'

            }
        }
    }
}