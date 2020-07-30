pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        build(wait: true, quietPeriod: 9, job: 'aboutme/master', propagate: true)
      }
    }

  }
}