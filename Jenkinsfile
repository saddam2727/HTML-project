pipeline {
    agent any
    stages {
        stage ('clone the code') {
            steps {
                # clone the code
                git branch:'main',url:'https://github.com/Radhakrishnaaaaa/HTML-project.git'
            }
        }
        stage ('deployement') {
            steps {
                # copy code from jenkins to webserver
                sh ' cp -r /var/lib/jenkins/workspace/pipeline/* /var/www/html '
            }
        }
    }
}===================================================================================================

pipeline {
    agent any
        stages {
            stage ('checkout code from github'){
                steps {
                    git branch: 'main', url: 'https://github.com/Radhakrishnaaaaa/HTML-project.git'
                }
            }
            stage ('remove older files') {
                steps {
                    sh ''' rm -rf /var/www/html/* '''
                }
            }
            stage ('deployment') {
                steps {
                    sh '''
                        #!/bin/bash
                        cd /var/lib/jenkins/workspace/pipeline/
                        cp -r * /var/www/html/
                        '''
                }
            }
        }
}
