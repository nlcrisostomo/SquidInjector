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

# Use the maximum available, or set MAX_FD != -1 to use that value.
MAX_FD="maximum"

warn () {
    echo "$*"
}

die () {
    echo
    echo "$*"
    echo
    exit 1
}

# OS specific support (must be 'true' or 'false').
cygwin=false
msys=false
darwin=false
case "$(uname)" in
  CYGWIN* )
    cygwin=true
    ;;
  MINGW* )
    msys=true
    ;;
  Darwin )
    darwin=true
    ;;
esac

# Attempt to set JAVA_HOME if not already set
if [ -z "$JAVA_HOME" ] ; then
  if [ -n "$JDK_HOME" ] ; then
    JAVA_HOME="$JDK_HOME"
  fi
fi

if [ -z "$JAVA_HOME" ] ; then
  die "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH."
fi

JAVA_EXEC="$JAVA_HOME/bin/java"

# Increase maximum file descriptors if we can
if [ "$cygwin" = "false" ] && [ "$msys" = "false" ]; then
  MAX_FD_LIMIT=$(ulimit -H -n)
  if [ $? -eq 0 ] ; then
    if [ "$MAX_FD_LIMIT" != "unlimited" ] && [ "$MAX_FD_LIMIT" -gt 1024 ] ; then
      ulimit -n "$MAX_FD_LIMIT"
    fi
  fi
fi

CLASSPATH=$(find "$(dirname "$0")/gradle/wrapper" -name "*.jar" -type f -exec echo {} \; | tr '\n' ':')

exec "$JAVA_EXEC" ${DEFAULT_JVM_OPTS} -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
