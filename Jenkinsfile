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
        sh ''' docker tag dockerimage radhakrishnabadugu94/static:version7 '''
      }
    }
  }
}
