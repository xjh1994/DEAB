echo=1/*>nul&@cls  
@echo off  

setx JAVA_HOME "C:\Program Files\Java\jdk1.6.0_45"
setx PATH "%JAVA_HOME%/bin;%JAVA_HOME%/jre/bin"
setx CLASSPATH ".;%JAVA_HOME%\lib\dt.jar;%JAVA_HOME%\lib\tools.jar;"