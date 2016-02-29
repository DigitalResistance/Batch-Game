@ECHO off
COLOR f0
TITLE Batch Game v0.1: Help Menu

ECHO You can use the following commands at anytime:
ECHO.
ECHO 		Quit: Quits the game (or this menu)
ECHO 		Lefty: Sets controls to IJKL.
ECHO 		Righty: Sets controls to WASD.
ECHO 		x: Closes command line.
ECHO 		FAQ: Open the FAQ menu.
ECHO 		Credits: Open credits.
ECHO 		MM: Return to the main menu
ECHO 		Help: Loads this menu
ECHO.
ECHO NOTE: Any invalid string will restart whatever level/menu you're on!
ECHO.
GOTO cmd

:cmd
SET /p in="Enter command: "
IF "%in%"=="Help" ECHO You're already on this menu!
IF "%in%"=="Quit" EXIT
IF "%in%"=="Lefty" ECHO Not valid here.
IF "%in%"=="Righty" ECHO Not valid here.
IF "%in%"=="FAQ" GOTO FAQ
IF "%in%"=="Credits" GOTO cm
IF "%in%"=="MM" ECHO Not valid here.
IF "%in%"=="x" ECHO Not valid here.
IF NOT "%in%"=="Righty" IF NOT "%in%"=="Lefty" IF NOT "%in%"=="Help" IF NOT "%in%"=="MM" IF NOT "%in%"=="x" ECHO Invalid command.
GOTO cmd

:FAQ
START FAQ.bat
EXIT

:cm
START cm.bat
EXIT

