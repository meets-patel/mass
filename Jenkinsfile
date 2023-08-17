pipeline {
    agent any
   
    stages {
        stage ('SCM checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/meets-patel/mass.git'
            }
           
        }
       
        stage ('docker image build') {
            steps {
                sh '/usr/bin/docker image build -t meetpatel2223/mass .'
            }
        }
       
        stage ('Docker Login') {
            steps {
                sh 'echo dckr_pat_KLQ1uoS0etNAnJQsWdMWcEXvWEY | /usr/bin/docker login -u meetpatel2223 --password-stdin'
            }
        }
       
        stage ('docker image Push') {
            steps {
                sh '/usr/bin/docker image push meetpatel2223/mass'
            }
        }
       
        stage ('Get the Confirmation from user') {
            steps {
                input 'Do you want to deploy this'
            }
        }
       
        stage ('remove existing service') {
            steps {
                sh '/usr/bin/docker service rm massservice'
            }
        }
       
        stage ('create docker service') {
            steps {
                sh '/usr/bin/docker service create --name massservice --replicas 2 -p 8000:8000 meetpatel2223/mass'
            }
        }
       
    }
}
