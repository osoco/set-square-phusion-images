defineEnvVar JENKINS_USER MANDATORY "The Jenkins user" "jenkins";
defineEnvVar JENKINS_HOME MANDATORY "The home of Jenkins" "/home/jenkins";
defineEnvVar GRADLE_CONFIG_FILE MANDATORY "The name of the configuration file for Gradle" "hudson.plugins.gradle.Gradle.xml";
defineEnvVar GROOVY_CONFIG_FILE MANDATORY "The name of the configuration file for Groovy" "hudson.plugins.groovy.Groovy.xml";
defineEnvVar GRAILS_CONFIG_FILE MANDATORY "The name of the configuration file for Grails" "com.g2one.hudson.grails.GrailsInstallation.xml";
defineEnvVar MAVEN_CONFIG_FILE MANDATORY "The name of the configuration file for Maven" "hudson.tasks.Maven.xml";
defineEnvVar ANT_CONFIG_FILE MANDATORY "The name of the configuration file for Ant" "hudson.tasks.Ant.xml";
defineEnvVar NODEJS_CONFIG_FILE MANDATORY "The name of the configuration file for NodeJS" "nodejs.xml";
defineEnvVar SLACK_CONFIG_FILE MANDATORY "The name of the configuration file for Slack" "jenkins.plugins.slack.SlackNotifier.xml";
#
