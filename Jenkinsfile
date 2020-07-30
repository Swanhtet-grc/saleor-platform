pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        build(wait: true, quietPeriod: 9, job: 'aboutme', propagate: true)
      }
    }

  }
}