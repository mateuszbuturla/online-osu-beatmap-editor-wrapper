@echo off
echo Running git submodule init
git submodule init

echo Running git submodule update
git submodule update

echo Entering client directory
cd client

echo Running git fetch in client directory
git fetch

echo Checking out develop branch in client directory
git checkout develop

echo Pulling changes from origin/develop in client directory
git pull origin develop

echo Entering parent directory
cd ..

echo Entering server directory
cd server

echo Running git fetch in server directory
git fetch

echo Checking out develop branch in server directory
git checkout develop

echo Pulling changes from origin/develop in server directory
git pull origin develop

echo Finished executing commands
pause