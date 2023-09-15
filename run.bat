::
:: Permet de lancer, stopper et enlever le conteneur créer par un docker compose
::
@echo off

if "%~1"=="start" (
    docker compose -f mongodb.yml up -d
    exit /b 0
) 
if "%~1"=="stop" (
    docker compose -f mongodb.yml stop
    exit /b 0
)
if "%~1"=="rm" (
    docker compose -f mongodb.yml down
    exit /b 0
)

echo Veuillez specifier 'start', 'stop' ou 'rm' en argument.
exit /b 1
