pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh '''sudo docker-compose up
#! /bin/bash
read -s -p "myanmar2020: " sudoPW
echo $sudoPW | sudo -S yum update'''
      }
    }

  }
}