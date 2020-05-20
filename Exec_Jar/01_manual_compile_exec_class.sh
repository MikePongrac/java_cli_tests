#  Originally from:
#  https://www.jitendrazaa.com/blog/java/compile-and-run-java-program-in-package-from-command-line/
#
#
#  javac -d "classes" "src/com/g2/ExecJar/Person.java"
#  javac -d "classes" -classpath "classes" "src/com/g2/ExecJar/Start.java"
#  javac -classpath "classes" com.g2.ExecJar.Start
#
#  Command Explanation :
#
#  Line 1 :
#
#  “javac” is the java compiler available in bin folder of the jdk.
#  “-d” stands for the “directory“. it explains compiler that where the class files should be created.
#  Last argument is the Complete path, where the java file exists.
#  Line 2 :
#
#  in line 2, you have noted one extra parameter “-classpath“. As class “Start” depends on class “Person” and its class file is not in the same directory.  Therefore we need to explicitly tell compiler that where it can find required class files.
#  To include more than one classpath use semicolon “;”.  Example:  -classpath path1;path2;path3
#  Line 3 :
#
#  It will run the program. her we have to again specify that where all the class files exist with the help of parameter “-classpath“
#  The complete set of argument supported by the java compiler can be found on the Oracle site.
#
#
#  If you should get the following error when doing this manually, then remove the c from javac on the last line:
#  error: Class names, 'com.g2.ExecJar.Start', are only accepted if annotation processing is explicitly requested
#  This:      javac -classpath "classes" com.g2.ExecJar.Start
#  should be: java -classpath "classes" com.g2.ExecJar.Start

# The following line is only required to cleanup previously compiled classes.
#rm -rf classes
# The following line ensures that the folder to hold the compiled class files exists.
mkdir classes 
javac -d "classes" "src/com/g2/ExecJar/Person.java"
javac -d "classes" -classpath "classes" "src/com/g2/ExecJar/Start.java"
java -classpath "classes" com.g2.ExecJar.Start
