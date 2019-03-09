pipeline {
    agent{
        dockerfile true
    }
    stages {
        stage('Build') { 
            steps {
                sh "wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar"
                sh "java -jar BuildTools.jar --rev 1.8.8"
            }
        }
        stage('archive') { 
           steps {
               sh "ls"
               archiveArtifacts artifacts: 'spigot*.jar', 'craftbukkit*.jar'
            } 
       }
    } 
}
