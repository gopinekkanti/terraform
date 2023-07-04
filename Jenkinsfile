#1) CLICK ON PIPELINE WHILE CREATING PARAMETERIZED PIPELINE
#2) CLICK ON "THIS PROJECT IS PARAMETEIZED"

properties([parameters([choice(choices: ['main', 'dev', 'test'], description: 'Select Required Branch to Build', name: 'Branch')])])
node{
    stage('checkout'){
git url: 'https://nekkantigopi@bitbucket.org/nekkantigopi/webapps.git', branch: "${params.Branch}"
  }
  stage('build'){
        if (env.Branch == 'main') {
sshPublisher(publishers: [sshPublisherDesc(configName: 'server1', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'ls', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: 'target', sourceFiles: '**/*.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
    } else if (env.Branch == 'dev') {
deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://52.44.119.93:8080')], contextPath: null, war: '**/*.war'
    } else if (env.Branch == 'test') {
sshPublisher(publishers: [sshPublisherDesc(configName: 'tets server', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'ls', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: 'target', sourceFiles: '**/*.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
        }
    }
    stage('result'){
        echo "Build hasbeen deployed to ${params.Branch} server"
    }
}
