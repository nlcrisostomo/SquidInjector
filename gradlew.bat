@echo off
set DIR=%~dp0
set JAVA_HOME=/opt/android-sdk-linux/jdk
"%DIR%\gradle\wrapper\gradle-wrapper.jar" %*
