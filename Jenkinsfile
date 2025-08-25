pipeline {
    agent { label 'docker-latest-python1' }

    triggers{
        pollSCM '*/2 * * * *'
    }

    stages {
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
                    echo "doing build stuff.."
                '''
            }
        }
        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                    echo "doing test stuff.."
                '''
            }
        }
        stage('Deliver') {
            steps {
                echo 'Deliver....'
                sh '''
                    echo "doing delivery stuff.."
                '''
            }
        }
    }
}
