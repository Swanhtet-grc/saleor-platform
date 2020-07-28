pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh '''chown Cloud Focus:docker /var/run/docker.sock
docker-compose up'''
      }
    }

  }
}