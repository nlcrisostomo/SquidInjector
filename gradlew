#!/bin/sh
export JAVA_HOME=/opt/android-sdk-linux/jdk
DIR="$( cd "$( dirname "$0" )" && pwd )"
"$DIR/gradle/wrapper/gradle-wrapper.jar" "$@"
