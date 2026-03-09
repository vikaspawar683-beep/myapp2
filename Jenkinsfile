pipeline {
    agent any

    tools {
        maven 'maven-3.9'
        jdk 'jdk21'
    }

    stages {

        stage('Maven Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myapp2 .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8080:8080 myapp2'
            }
        }

    }
}
