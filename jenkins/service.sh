#!/bin/sh
#
# Startup script for the Jenkins Continuous Integration server
# (via Jakarta Tomcat Java Servlets and JSP server)
#
# From https://wiki.jenkins-ci.org/display/JENKINS/JenkinsLinuxStartupScript
#
# chkconfig: - 85 15
# description: Jenkins service script
# processname: jenkins
# pidfile: /var/run/jenkins.pid

# Set Tomcat environment.
JENKINS_USER=jenkins
LOCKFILE=/var/lock/jenkins
export PATH=/usr/local/bin:$PATH
export HOME=/opt/tomcat
export JAVA_HOME=/usr/lib/jvm/java
export JENKINS_BASEDIR=/home/jenkins
export TOMCAT_HOME=/opt/tomcat
export CATALINA_PID=$JENKINS_BASEDIR/jenkins-tomcat.pid
export CATALINA_OPTS="-DJENKINS_HOME=$JENKINS_BASEDIR -Xmx512m -Djava.awt.headless=true"

[ -f $TOMCAT_HOME/bin/catalina.sh ] || exit 0

[ -f /home/jenkins/jenkins.model.JenkinsLocationConfiguration.xml ] || /usr/local/sbin/process-file.sh -o /home/jenkins/jenkins.model.JenkinsLocationConfiguration.xml /var/local/jenkins.model.JenkinsLocationConfiguration.xml.tmpl

export PATH=$PATH:/usr/bin:/usr/local/sbin:/usr/local/bin

# See how we were called.
case "$1" in
  start)
        # Start daemon.
        echo -n "Starting Tomcat: "
        su -p -s /bin/sh ${JENKINS_USER} -c "$TOMCAT_HOME/bin/catalina.sh start"
        RETVAL=$?
        echo
        [ $RETVAL = 0 ] && touch $LOCKFILE
        ;;
  stop)
        # Stop daemons.
        echo -n "Shutting down Tomcat: "
        su -p -s /bin/sh $JENKINS_USER -c "$TOMCAT_HOME/bin/catalina.sh stop"
        RETVAL=$?
        echo
        [ $RETVAL = 0 ] && rm -f $LOCKFILE
        ;;
  restart)
        $0 stop
        $0 start
        ;;
  condrestart)
       [ -e $LOCKFILE ] && $0 restart
       ;;
  status)
        status tomcat
        ;;
  *)
        echo "Usage: $0 {start|stop|restart|status}"
        exit 1
esac

exit 0
#
