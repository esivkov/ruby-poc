#!groovy​

node('linux') {
    stage 'Checkout'
    scm {
        git {
            remote {
                github('esivkov/ruby-poc')
                refspec('+refs/pull/*:refs/remotes/origin/pr/*')
            }
            branch('${sha1}')
        }
    }
    triggers {
        githubPullRequest {
            admin('esivkov')
            useGitHubHooks()
            permitAll()
        }
    }

    stage 'test'
    sh 'rake test'
}
