node('master') {
    
    // Get Artifactory Server Instance Details
    def server = Artifactory.server "01"
    def buildInfo = Artifactory.newBuildInfo()

    stage('Checkout From Git'){
        git branch: 'Jenkins', url: 'https://github.com/Jegapriya/EmpDeptSpring.git'
    }
    
    stage('clean') {
        sh 'mvn clean'
    }
    
    stage('compile'){
        sh 'mvn compile'
    }
    
    stage('test'){
        sh 'mvn test'
    }
    
    stage('package'){
        sh 'mvn package'
    }
 
    stage('Publish Build Info'){
	server.publishBuildInfo buildInfo
    }


    stage('Artifact'){
        archiveArtifacts artifacts: 'target/*.war', followSymlinks: false
    }
    
    stage('Checkout From Git'){
        git branch: 'main', url: 'https://github.com/Jegapriya/devops301-Capstone.git'
    }
     
   stage('Ansible Deployment'){
     sh "ls;cd 05-Ansible/07-Roles; ansible-playbook jbosswebapp.yml"
   }
     
}
