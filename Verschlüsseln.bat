echo off
set content=%~1\*
set outfile=%~1_Datum_Uhrzeit

set /p password=Bitte Passwort eingeben: [32m
echo on

"%~dp0/7zip/7z.exe" a -saa -tzip -stl -p%password% -mem=AES256 "%outfile%"  "%content%"
rem Pfad zum Tool testen
rem Abfrage Password
rem Prüfen ob Ordner oder Datei
pause