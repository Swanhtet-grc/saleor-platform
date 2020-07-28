pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh '''
mv . /
echo myanmar2020 | sudo -S docker-compose up'''
      }
    }

  }
}