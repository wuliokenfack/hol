stage ('build and publish image') {
      steps {
        script {
          checkout scm
          docker.withRegistry('', 'dockerUserID') {
          def customImage = docker.build("kserge2001/devops-pipeline:${env.BUILD_ID}")
          customImage.push()
          }
    }
pipeline {
    agent any
    tools {
        maven 'M2_HOME'
    }

    stages {
        
       stage('build') {
            steps {
                echo 'Hello build'
                sh 'mvn clean'
                sh  'mvn install'
                sh 'mvn package'
            }
        }
        stage('test') {
            steps {
                sh 'mvn test'
                
            }
        }
        stage ('build and publish image') {
      steps {
        script {
          checkout scm
          docker.withRegistry('', 'DockerRegistryID') {
          def customImage = docker.build("wuliokenfack/hol-pipeline:${env.BUILD_ID}")
          customImage.push()
          }
    }
        
    }
}
    }
}
