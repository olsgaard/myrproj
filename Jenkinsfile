node{
    stage('Checkout'){
      checkout([$class: 'GitSCM', branches: [[name: '*/master']], 
      	doGenerateSubmoduleConfigurations: false, extensions: [], 
      	submoduleCfg: [], userRemoteConfigs: [[credentialsId: '8a5c5968-0508-4d5b-b6e5-819fd464435f', 
      	url: 'https://github.com/olsgaard/myrproj']]])
    }
    stage('build docker image'){
    	sh 'docker build -t myrapp:latest .'
    }
    stage("run docker app"){
    	sh 'docker container run myrapp'
    }
}