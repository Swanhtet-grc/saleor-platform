pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh '''ls
docker-compose up --force-recreate'''
      }
    }

  }
}