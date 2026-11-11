pipeline {
    agent { 
        node {
            label 'docker-agent'
            }
      }

triggers {
  pollSCM '* * * * *'
}

    stages {
        stage('Starter') {
            steps {
                echo "Agent will start with the following step .."
                sh '''
                echo "doing starter stuff.."
                '''
            }
        }
        stage('Build') {
            steps {
                echo "Building.."
                
                sh '''
                cd myapp
                python3 -m venv .venv
                .venv/bin/pip install -r requirements.txt
                .venv/bin/pip list
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