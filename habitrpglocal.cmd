@echo off
call "cmd /c start mongodb.cmd"
#echo "Wait for mongodb to start, and then press enter"
#pause
call "cmd /c start server.cmd"

#pause
exit

