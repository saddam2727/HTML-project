pipeline {
    agent any
    stages {
        stage ('clone the code') {
            steps {
                git branch:'main',url:'https://github.com/Radhakrishnaaaaa/HTML-project.git'
            }
        }
        stage ('deployement') {
            steps {
                sh ''' cp -r /var/lib/jenkins/workspace/pipeline/* /var/www/html '''
            }
        }
    }
}
