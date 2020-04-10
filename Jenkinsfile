pipeline {
    agent {
        node {
            label 'master'
        }
    }
    stages {
        stage('Running Container') {
            steps {
                sh 'docker build -t my-apache2 .'
               
                sh label: '', script: '''if [ ! "$(docker ps -q -f name=my-running-app)" ]; then
                    if [ "$(docker ps -aq -f status=exited -f name=my-running-app)" ]; then
                        # cleanup
                        docker rm my-apache2
                    fi
                     # run your container
                     docker run -dit --name my-running-app -p 50001:80 my-apache2
                fi'''

                sh 'sh html_lint.py index.html'
            }
        }
    }
}