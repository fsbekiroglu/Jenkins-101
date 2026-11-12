pipeline {
    agent { 
        node {
            label 'agent-new'
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
        stage('Image Build') {
            steps {
                echo "Testing.."
                sh '''
                docker build -t myapp:v1 .
                docker images | grep myapp
                ''' 
            } 
        }
        stage('Deploy') {
            steps {
                sh '''
                docker context show
                docker version
                echo $DOCKER_HOST
                '''
            }
        }
        stage ('Last Stage') {
            steps {
                echo "Last Stage.."
                sh '''
                '''
            }
        }
    }
}

