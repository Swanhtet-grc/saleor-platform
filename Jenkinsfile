pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        build(wait: true, quietPeriod: 2, job: 'aboutme')
      }
    }

  }
}