pipeline {
    agent{
        dockerfile true
    }
    stages {
        stage('Build') { 
            steps {
                sh "wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar"
                sh "java -jar BuildTools.jar"
            }
        }
        stage('version') { 
           steps {
               sh "java -version"
            } 
       }
    } 
}
