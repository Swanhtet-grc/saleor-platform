pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh '''
docker-compose build
docker-compose run --rm api python3 manage.py migrate
docker-compose run --rm api python3 manage.py collectstatic --noinput
docker-compose run --rm api python3 manage.py populatedb'''
      }
    }

  }
}