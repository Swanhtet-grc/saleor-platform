pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh '''
echo myanmar2020 | sudo -S docker-compose up'''
      }
    }

  }
}