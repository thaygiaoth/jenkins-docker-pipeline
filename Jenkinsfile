pipeline {
    agent { dockerfile true }
    
    def myImg
    
    stage ("Build image") {
    
	    // lấy code về = git clone
        git 'https://github.com/thaygiaoth/jenkins-docker-pipeline.git'

        // build cục image
        myImg = docker.build 'java-container:1.0'
    }
    
    stages {
        stage('run') {
            steps {
                sh 'java -jar /usr/src/rectangle.jar 7 9'
            }
        }
    }
}
