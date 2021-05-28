pipeline {
    agent any

    stages {

        stage ('prepare artifacts') {
            steps {
                sh '''
        
                  zip -r ../todo.zip *
                '''

            }
        }
        stage ('upload artifacts') {
            steps {
                sh '''
                  curl -v -u admin:admin123 --upload-file todo.zip http://172.31.13.117:8081/repository/todo/todo.zip
                '''
            }
        }
    }
}