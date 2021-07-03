pipeline {	
	
  agent any	
	
    stages {  
      stage('Cloning our Git') {
	steps {
          git 'https://github.com/thaygiaoth/jenkins-docker-pipeline.git'
	}
      }   
      stage('Building our image') {
	steps {
          script {
            dockerImage = docker.build 'java-container:1.0'
	  }
	}
      }    
    }
}
