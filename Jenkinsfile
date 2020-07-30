pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh '''ls
docker-compose up --force-recreate'''
        build(wait: true, quietPeriod: 2, job: 'build another')
      }
    }

  }
}