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
            dockerImage = docker.build 'simple-java-app:1.0'
	    dockerImage = docker.build 'simple-java-app:latest'
	  }
	}
      } 
	    
      stage('run') {
        agent {
          docker {
            image 'simple-java-app:1.0'
            // Run the container on the node specified at the top-level of the Pipeline, in the same workspace, 
            //rather than on a new node entirely:
            reuseNode true
          }
        }
        steps {
          sh 'java -jar /usr/src/rectangle.jar 7 9'
          }
      }
	    
    }
	
}
