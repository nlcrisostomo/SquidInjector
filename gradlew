#!/usr/bin/env sh

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS=""

APP_NAME="Gradle"
APP_BASE_NAME=$(basename "$0")

# Locate java installation
if [ -n "$JAVA_HOME" ] ; then
    JAVA="$JAVA_HOME/bin/java"
else
    JAVA=$(which java)
fi

# Verify Java installation
if [ ! -x "$JAVA" ] ; then
    echo "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME" >&2
    echo "Please set the JAVA_HOME variable in your environment to match the location of your Java installation." >&2
    exit 1
fi

CLASSPATH="gradle/wrapper/gradle-wrapper.jar"

exec "$JAVA" $DEFAULT_JVM_OPTS -cp "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
