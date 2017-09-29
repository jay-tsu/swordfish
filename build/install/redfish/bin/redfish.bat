@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  redfish startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and REDFISH_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\redfish-1.0.jar;%APP_HOME%\lib\odata-client-api-4.4.0-dell-beta-1.jar;%APP_HOME%\lib\odata-client-core-4.4.0-dell-beta-1.jar;%APP_HOME%\lib\odata-commons-api-4.4.0-dell-beta-1.jar;%APP_HOME%\lib\odata-commons-core-4.4.0-dell-beta-1.jar;%APP_HOME%\lib\odata-server-api-4.4.0-dell-beta-1.jar;%APP_HOME%\lib\odata-server-core-4.4.0-dell-beta-1.jar;%APP_HOME%\lib\vertx-core-3.4.2.jar;%APP_HOME%\lib\vertx-rx-java-3.4.2.jar;%APP_HOME%\lib\vertx-service-proxy-3.4.2.jar;%APP_HOME%\lib\vertx-service-discovery-3.4.2.jar;%APP_HOME%\lib\vertx-jdbc-client-3.4.2.jar;%APP_HOME%\lib\vertx-web-3.4.2.jar;%APP_HOME%\lib\commons-lang3-3.5.jar;%APP_HOME%\lib\commons-collections4-4.1.jar;%APP_HOME%\lib\httpclient-4.5.3.jar;%APP_HOME%\lib\httpcore-4.4.6.jar;%APP_HOME%\lib\joor-0.9.6.jar;%APP_HOME%\lib\jool-0.9.12.jar;%APP_HOME%\lib\jooq-3.9.5.jar;%APP_HOME%\lib\reflections-0.9.11.jar;%APP_HOME%\lib\log4j-core-2.8.2.jar;%APP_HOME%\lib\log4j-api-2.8.2.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\slf4j-log4j12-1.7.25.jar;%APP_HOME%\lib\commons-codec-1.10.jar;%APP_HOME%\lib\commons-io-2.5.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\aalto-xml-1.0.0.jar;%APP_HOME%\lib\jackson-core-2.8.8.jar;%APP_HOME%\lib\jackson-annotations-2.8.8.jar;%APP_HOME%\lib\jackson-databind-2.8.8.jar;%APP_HOME%\lib\jackson-dataformat-xml-2.8.8.jar;%APP_HOME%\lib\stax2-api-4.0.0.jar;%APP_HOME%\lib\javax.servlet-api-3.1.0.jar;%APP_HOME%\lib\gson-2.8.1.jar;%APP_HOME%\lib\guice-4.0.jar;%APP_HOME%\lib\jsr305-3.0.0.jar;%APP_HOME%\lib\guava-23.0.jar;%APP_HOME%\lib\vertx-guice-2.2.0.jar;%APP_HOME%\lib\cassandra-driver-core-3.3.0.jar;%APP_HOME%\lib\cassandra-driver-mapping-3.3.0.jar;%APP_HOME%\lib\flyway-core-4.2.0.jar;%APP_HOME%\lib\persistence-api-1.0.2.jar;%APP_HOME%\lib\netty-common-4.1.8.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.8.Final.jar;%APP_HOME%\lib\netty-transport-4.1.8.Final.jar;%APP_HOME%\lib\netty-handler-4.1.8.Final.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.8.Final.jar;%APP_HOME%\lib\netty-codec-http-4.1.8.Final.jar;%APP_HOME%\lib\netty-codec-http2-4.1.8.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.8.Final.jar;%APP_HOME%\lib\netty-resolver-dns-4.1.8.Final.jar;%APP_HOME%\lib\vertx-lang-js-3.4.2.jar;%APP_HOME%\lib\vertx-sql-common-3.4.2.jar;%APP_HOME%\lib\c3p0-0.9.5.2.jar;%APP_HOME%\lib\vertx-auth-common-3.4.2.jar;%APP_HOME%\lib\javassist-3.21.0-GA.jar;%APP_HOME%\lib\log4j-1.2.17.jar;%APP_HOME%\lib\jackson-module-jaxb-annotations-2.8.8.jar;%APP_HOME%\lib\woodstox-core-5.0.3.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\metrics-core-3.2.2.jar;%APP_HOME%\lib\jnr-ffi-2.0.7.jar;%APP_HOME%\lib\jnr-posix-3.0.27.jar;%APP_HOME%\lib\mchange-commons-java-0.2.11.jar;%APP_HOME%\lib\jffi-1.2.10.jar;%APP_HOME%\lib\jffi-1.2.10-native.jar;%APP_HOME%\lib\asm-5.0.3.jar;%APP_HOME%\lib\asm-commons-5.0.3.jar;%APP_HOME%\lib\asm-analysis-5.0.3.jar;%APP_HOME%\lib\asm-tree-5.0.3.jar;%APP_HOME%\lib\asm-util-5.0.3.jar;%APP_HOME%\lib\jnr-x86asm-1.0.2.jar;%APP_HOME%\lib\jnr-constants-0.9.0.jar;%APP_HOME%\lib\rxjava-1.3.0.jar;%APP_HOME%\lib\error_prone_annotations-2.0.18.jar;%APP_HOME%\lib\j2objc-annotations-1.1.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.14.jar;%APP_HOME%\lib\netty-codec-socks-4.1.8.Final.jar;%APP_HOME%\lib\netty-codec-4.1.8.Final.jar;%APP_HOME%\lib\netty-codec-dns-4.1.8.Final.jar

@rem Execute redfish
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %REDFISH_OPTS%  -classpath "%CLASSPATH%" com.emc.bedrock.bootstrap.Main %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable REDFISH_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%REDFISH_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
