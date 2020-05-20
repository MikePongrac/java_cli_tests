#  Originally from
#  https://www.jitendrazaa.com/blog/java/create-executable-jar-file-of-classes-in-package/
#
#
#  As per previous article, i am considering that you have already compiled the program.
#
#  go to the folder “classes” and create a manifest file named as “manifest.txt” and add the name of starting java class as shown below.
#
#  Main-Class: com.g2.ExecJar.Start
#
#  or, run below command in command prompt to automate the creation of a manifest file
#
#  echo Main-Class: com.g2.ExecJar.Start >manifest.txt
#
#  now, run the command to create a jar file:
#
#  jar cvfm First.jar manifest.txt comg2ExecJar*
#
#
#  Where,
#
#  “jar” is the tool provided by the jdk to create the jar file.
#  “cvfm” is the argument. check this documentation to know about all the arguments provided by the java.
#  “manifest.txt” name of the manifest file. (Remember file must have carriage return value or one blank line at End of document).
#  “comg2ExecJar*” tells the tool that include all the files (*.class) in jar.
#  To run the jar, in command prompt, enter command:
#
#  java -jar First.jar
#
#  Question :Why the jar file is not executing ? it opens in winrar instead of execution.
#  Answer : This problem occurs mainly after installation of the winrar. To change the program for opening jar file, run below code in batch file:
#
#
#

cd classes
# This will also overwrite any existing manifest file.
echo Main-Class: com.g2.ExecJar.Start >manifest.txt
# The following line is only needed once you want to replace the previous jar file.
#rm First.jar
jar cvfm First.jar manifest.txt com/g2/ExecJar/*
java -jar First.jar
cd ..
