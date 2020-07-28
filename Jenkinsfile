pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh '''
copy . /
echo myanmar2020 | sudo -S docker-compose up'''
      }
    }

  }
}