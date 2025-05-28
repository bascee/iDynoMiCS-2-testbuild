REM you can generate the maven wrapper with: mvn -N io.takari:maven:wrapper -Dmaven=3.8.6 

REM Install DasOptimization
call mvnw install:install-file -Dfile=src\lib\DasOptimization.jar ^
  -DgroupId=org.optimization -DartifactId=DasOptimization -Dversion=1.0 -Dpackaging=jar

REM Install EXIficient
call mvnw install:install-file -Dfile=src\lib\exificient-core.jar ^
  -DgroupId=com.siemens.ct.exi -DartifactId=exificient-core ^
  -Dversion=0.9.3 -Dpackaging=jar

REM Install EXIficient 1.0.4
call mvnw install:install-file -Dfile=src\lib\exificient-1.0.4.jar ^
  -DgroupId=com.siemens.ct.exi -DartifactId=exificient -Dversion=1.0.4 -Dpackaging=jar

REM Install JUnit
call mvnw install:install-file -Dfile=src\lib\JUnit\junit-4.13.2.jar ^
  -DgroupId=junit -DartifactId=junit -Dversion=4.13.2 -Dpackaging=jar

REM Install Hamcrest
call mvnw install:install-file -Dfile=src\lib\JUnit\hamcrest-core-1.3.jar ^
  -DgroupId=org.hamcrest -DartifactId=hamcrest-core ^
  -Dversion=1.3 -Dpackaging=jar

REM Install JOGL
call mvnw install:install-file -Dfile=src\lib\jogl\jogl-all.jar ^
  -DgroupId=org.jogamp.jogl -DartifactId=jogl-all ^
  -Dversion=2.3.2 -Dpackaging=jar

call mvnw install:install-file -Dfile=src\lib\jogl\gluegen-rt.jar ^
  -DgroupId=org.jogamp.gluegen -DartifactId=gluegen-rt ^
  -Dversion=2.3.2 -Dpackaging=jar

REM Install Windows Natives
call mvnw install:install-file -Dfile=src\lib\jogl\jogl-all-natives-windows-amd64.jar ^
  -DgroupId=org.jogamp.jogl -DartifactId=jogl-all ^
  -Dversion=2.3.2 -Dclassifier=natives-windows-amd64 -Dpackaging=jar

call mvnw install:install-file -Dfile=src\lib\jogl\gluegen-rt-natives-windows-amd64.jar ^
  -DgroupId=org.jogamp.gluegen -DartifactId=gluegen-rt ^
  -Dversion=2.3.2 -Dclassifier=natives-windows-amd64 -Dpackaging=jar

REM Install Linux Natives
call mvnw install:install-file -Dfile=src/lib/jogl/jogl-all-natives-linux-amd64.jar ^
  -DgroupId=org.jogamp.jogl -DartifactId=jogl-all ^
  -Dversion=2.3.2 -Dclassifier=natives-linux-amd64 -Dpackaging=jar

call mvnw install:install-file -Dfile=src/lib/jogl/gluegen-rt-natives-linux-amd64.jar ^
  -DgroupId=org.jogamp.gluegen -DartifactId=gluegen-rt ^
  -Dversion=2.3.2 -Dclassifier=natives-linux-amd64 -Dpackaging=jar

call mvnw install:install-file -Dfile=src/lib/jogl/jogl-all-natives-linux-aarch64.jar ^
  -DgroupId=org.jogamp.jogl -DartifactId=jogl-all ^
  -Dversion=2.3.2 -Dclassifier=natives-linux-aarch64 -Dpackaging=jar

call mvnw install:install-file -Dfile=src/lib/jogl/gluegen-rt-natives-linux-aarch64.jar ^
  -DgroupId=org.jogamp.gluegen -DartifactId=gluegen-rt ^
  -Dversion=2.3.2 -Dclassifier=natives-linux-aarch64 -Dpackaging=jar

call mvnw install:install-file -Dfile=src/lib/jogl/jogl-all-natives-linux-armv6hf.jar ^
  -DgroupId=org.jogamp.jogl -DartifactId=jogl-all ^
  -Dversion=2.3.2 -Dclassifier=natives-linux-armv6hf -Dpackaging=jar

REM Install macOS Natives
call mvnw install:install-file -Dfile=src/lib/jogl/jogl-all-natives-macosx-universal.jar ^
  -DgroupId=org.jogamp.jogl -DartifactId=jogl-all ^
  -Dversion=2.3.2 -Dclassifier=natives-macosx-universal -Dpackaging=jar

call mvnw install:install-file -Dfile=src/lib/jogl/gluegen-rt-natives-macosx-universal.jar ^
  -DgroupId=org.jogamp.gluegen -DartifactId=gluegen-rt ^
  -Dversion=2.3.2 -Dclassifier=natives-macosx-universal -Dpackaging=jar