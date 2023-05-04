@echo off
echo Checking if schemas directory exists...
IF NOT EXIST schemas (
	echo error: schemas directory not found
	pause
	GOTO :EOF
) ELSE echo Found!

IF NOT EXIST result (
	mkdir result
) 
echo ======================================
echo Executing command...
echo ======================================
"C:\Program Files\Java\jdk1.8.0_131\bin\xjc" -d result -p com.test.model schemas/*.xsd
echo ======================================
echo Finished executing command.
echo ======================================
pause