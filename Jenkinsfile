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
                cd myapp
                .venv/bin/python hello.py
                .venv/bin/python hello.py --name Jenkins
                '''
            }
        }
        stage('Deliver') {
            steps {
                echo 'Deliver....
                sh '''
                docker image build -t myapp:v1.0 .
                docker image ls  
                
                '''
            }
        }
    }
}