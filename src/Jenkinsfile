pipeline {
  agent any

  environment {
    IMAGE = "us-central1-docker.pkg.dev/neat-pagoda-477804-m8/apps/quickeats"
    TAG = "v${BUILD_NUMBER}"
  }

  stages {

    stage('Build Docker Image') {
      steps {
        sh "docker build -t $IMAGE:$TAG ."
      }
    }

    stage('Push Image') {
      steps {
        sh "docker push $IMAGE:$TAG"
      }
    }
  }
}
