pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh '''chown cloud:docker /var/run/docker.sock
docker-compose up'''
      }
    }

  }
}