pipeline {
  agent {
    docker {
      image 'maven:3.3.9-jdk-8'
    }

  }
  stages {
    stage('build') {
      steps {
        sh '''echo PATH = ${PATH}
echo M2_HOME = ${M2_HOME}
mvn clean'''
      }
    }

    stage('done') {
      steps {
        sh 'mvn -Dmaven.test.failure.ignore=true install'
      }
    }

  }
}