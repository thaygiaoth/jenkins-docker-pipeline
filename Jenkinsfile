pipeline {
    agent { dockerfile true }
    stages {
        stage('run') {
            steps {
                sh 'java -jar /usr/src/rectangle.jar 7 9'
            }
        }
    }
}
