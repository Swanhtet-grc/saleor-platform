pipeline {
  agent {
    dockerfile {
      filename 'docker-compose.yml'
    }

  }
  stages {
    stage('build') {
      steps {
        sh 'docker-compose up'
      }
    }

  }
}