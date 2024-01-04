pipeline {
  agent any 
  stages {
    stage('clone') {
      steps {
        git branch:'main',url:'https://github.com/Radhakrishnaaaaa/HTML-project.git'
      }
    }
    stage ('build the docker image') {
      steps {
        sh ''' docker build -t dockerimage . '''
      }
    }
    stage('give the tag to image with dockerhub username') {
      steps {
        sh ''' docker tag dockerimage radhakrishnabadugu94/hell:version7 '''
      }
    }
    stage('push to docker hub') {
        steps {
            script {
                withDockerRegistry(credentialsId: 'docker') {
                    sh ''' docker push radhakrishnabadugu94/hell:version7 '''
                }
            }
        }
    }
    stage('pull and run the conatainer') {
        steps {
            sh ''' docker pull radhakrishnabadugu94/hell:version7 '''
        }
    }
    stage('run the container') {
        steps {
            sh ''' docker run --name con2 -d -p 83:80 radhakrishnabadugu94/hell:version7 '''
        }
    }
  }
}
