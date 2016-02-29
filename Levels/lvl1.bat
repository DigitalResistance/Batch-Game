@ECHO off
@SETLOCAL EnableExtensions EnableDelayedExpansion 
COLOR f0
TITLE Batch Game v0.1: Level 1

SET xL=           
SET xR=           
SET y1= 
SET y2= 
SET y3= 
SET y4= 
SET y5=@
SET y6= 
SET y7= 
SET y8= 
SET y9= 
SET y10= 
SET x=11
SET y=5
SET dL=          
SET dR=            
SET d=D
SET dA=False
GOTO screenRighty

:reset
SET xL=           
SET xR=           
SET y1= 
SET y2= 
SET y3= 
SET y4= 
SET y5=@
SET y6= 
SET y7= 
SET y8= 
SET y9= 
SET y10= 
SET x=11
SET y=5
SET dL=          
SET dR=            
SET d=D
SET dA=False
GOTO sc

:screenRighty
CLS
SET h=1
ECHO Use WASD to move.
ECHO R resets the level.
ECHO C opens command line.
ECHO.
ECHO.
ECHO #########################
ECHO #%xL%%y1%%xR%#
ECHO #%xL%%y2%%xR%#
ECHO #%xL%%y3%%xR%#
ECHO #%dL%%d%%dR%#
ECHO #%xL%%y5%%xR%#
ECHO #%xL%%y6%%xR%#
ECHO #%xL%%y7%%xR%#
ECHO #%xL%%y8%%xR%#
ECHO #%xL%%y9%%xR%#
ECHO #%xL%%y10%%xR%#
ECHO #########################
ECHO.
ECHO X= %x%  Y= %y%

CHOICE /c wsadrc /n
	IF %ErrorLevel% equ 1 GOTO up
	IF %ErrorLevel% equ 2 GOTO down
	IF %ErrorLevel% equ 3 GOTO left
	IF %ErrorLevel% equ 4 GOTO right
	IF %ErrorLevel% equ 5 GOTO reset
	IF %ErrorLevel% equ 6 GOTO cmd

:screenLefty
CLS
SET h=2
ECHO Use IJKL to move.
ECHO R resets the level.
ECHO C opens command line.
ECHO.
ECHO.
ECHO #########################
ECHO #%xL%%y1%%xR%#
ECHO #%xL%%y2%%xR%#
ECHO #%xL%%y3%%xR%#
ECHO #%xL%%y4%%xR%#
ECHO #%xL%%y5%%xR%#
ECHO #%xL%%y6%%xR%#
ECHO #%xL%%y7%%xR%#
ECHO #%xL%%y8%%xR%#
ECHO #%xL%%y9%%xR%#
ECHO #%xL%%y10%%xR%#
ECHO #########################
ECHO.
ECHO X= %x%  Y= %y%

CHOICE /c ikjlrc /n
	IF %ErrorLevel% equ 1 GOTO up
	IF %ErrorLevel% equ 2 GOTO down
	IF %ErrorLevel% equ 3 GOTO left
	IF %ErrorLevel% equ 4 GOTO right
	IF %ErrorLevel% equ 5 GOTO reset
	IF %ErrorLevel% equ 6 GOTO cmd

:up
SET /a y -=1
IF "%y%"=="0" SET y=1
GOTO yPOS

:down
SET /a y +=1
IF "%y%"=="11" SET y=10
GOTO yPOS

:left
SET /a x -=1
IF "%x%"=="-1" SET x=0
GOTO xPOS

:right
SET /a x +=1
IF "%x%"=="24" SET x=23
GOTO xPOS

:xPOS
IF %x% equ 1 (
SET xL=
SET xR=                      )

IF %x% equ 2 (
SET xL= 
SET xR=                     )

IF %x% equ 3 (
SET xL=  
SET xR=                    )

IF %x% equ 4 (
SET xL=   
SET xR=                   )

IF %x% equ 5 (
SET xL=    
SET xR=                  )

IF %x% equ 6 (
SET xL=     
SET xR=                 )

IF %x% equ 7 (
SET xL=      
SET xR=                )

IF %x% equ 8 (
SET xL=       
SET xR=               )

IF %x% equ 9 (
SET xL=        
SET xR=              )

IF %x% equ 10 (
SET xL=         
SET xR=             )

IF %x% equ 11 (
SET xL=          
SET xR=            )


IF %x% equ 12 (
SET xL=           
SET xR=           )

IF %x% equ 13 (
SET xL=            
SET xR=          )

IF %x% equ 14 (
SET xL=             
SET xR=         )

IF %x% equ 15 (
SET xL=              
SET xR=        )

IF %x% equ 16 (
SET xL=               
SET xR=       )


IF %x% equ 17 (
SET xL=                
SET xR=      )

IF %x% equ 18 (
SET xL=                 
SET xR=     )

IF %x% equ 19 (
SET xL=                  
SET xR=    )

IF %x% equ 20 (
SET xL=                   
SET xR=   )

IF %x% equ 21 (
SET xL=                    
SET xR=  )

IF %x% equ 22 (
SET xL=                     
SET xR= )

IF %x% equ 23 (
SET xL=                      
SET xR=)
GOTO sc

:yPOS
IF %y% equ 1 (
SET y1=@
SET y2= )

IF %y% equ 2 (
SET y1= 
SET y2=@
SET y3= )

IF %y% equ 3 (
SET y2= 
SET y3=@
SET d=D)

IF %y% equ 4 (
IF NOT "%x%"=="11" GOTO dPOS
SET y3= 
SET d=D
SET y5= 
IF "%x%"=="11" GOTO dc)

IF %y% equ 5 (
SET y4=D
SET y5=@
SET y6= )

IF %y% equ 6 (
SET y5= 
SET y6=@
SET y7= )

IF %y% equ 7 (
SET y6= 
SET y7=@
SET y8= )

IF %y% equ 8 (
SET y7= 
SET y8=@
SET y9= )

IF %y% equ 9 (
SET y8= 
SET y9=@
SET y10= )

IF %y% equ 10 (
SET y9= 
SET y10=@)
GOTO sc

:dPOS
IF %x% equ 1 (
SET xL=@          
SET xR=           )

IF %x% equ 2 (
SET xL= @         
SET xR=           )

IF %x% equ 3 (
SET xL=  @        
SET xR=           )

IF %x% equ 4 (
SET xL=   @       
SET xR=           )

IF %x% equ 5 (
SET xL=    @      
SET xR=           )

IF %x% equ 6 (
SET xL=     @     
SET xR=           )

IF %x% equ 7 (
SET xL=      @    
SET xR=           )

IF %x% equ 8 (
SET xL=       @   
SET xR=           )

IF %x% equ 9 (
SET xL=        @  
SET xR=           )

IF %x% equ 10 (
SET xL=         @ 
SET xR=           )

IF %x% equ 12 (
SET xL=           
SET xR=@          )

IF %x% equ 13 (
SET xL=          
SET xR= @          )

IF %x% equ 14 (
SET xL=           
SET xR=  @        )

IF %x% equ 15 (
SET xL=           
SET xR=   @       )

IF %x% equ 16 (
SET xL=           
SET xR=    @      )

IF %x% equ 17 (
SET dL=           
SET dR=     @     )

IF %x% equ 18 (
SET dL=           
SET dR=      @    )

IF %x% equ 19 (
SET dL=           
SET dR=       @   )

IF %x% equ 20 (
SET dL=           
SET dR=        @  )

IF %x% equ 21 (
SET dL=           
SET dR=         @ )

IF %x% equ 22 (
SET dL=           
SET dR=          @)

IF %x% equ 23 (
SET dL=           
SET dR=           )
GOTO sc

:sc
IF "%h%"=="1" GOTO screenRighty
IF "%h%"=="2" GOTO screenLefty

:dc
SET dA=True
ECHO.
ECHO Enter door to next room? (y/n)
GOTO cmd

:cmd
SET /p in="Enter command: "
IF "%in%"=="Help" GOTO hm
IF "%in%"=="Quit" GOTO quit
IF "%in%"=="Lefty" GOTO hsl
IF "%in%"=="Righty" GOTO hsr
IF "%in%"=="FAQ" GOTO FAQ
IF "%in%"=="Credits" GOTO cm
IF "%in%"=="MM" GOTO mm
IF "%in%"=="x" GOTO sc
IF "%in%"=="y" IF "%dA%"=="True" GOTO lvl2 
IF "%in%"=="y" IF NOT "%dA%"=="True" ECHO You're not at a door.
IF "%in%"=="n" IF %dA% equ True (
SET y=5
GOTO yPos)
IF NOT "%in%"=="MM" IF NOT "%in%"=="y" ECHO Invalid command.
GOTO cmd

:hm
SET dir="C:\Users\andrew.adam\Documents\Batch for lolz\Menus"
PUSHD %dir%
START hm.bat
SET dir="C:\Users\andrew.adam\Documents\Batch for lolz\Levels"
PUSHD %dir%
GOTO cmd

:cm
SET dir="C:\Users\andrew.adam\Documents\Batch for lolz\Menus"
PUSHD %dir%
START cm.bat
SET dir="C:\Users\andrew.adam\Documents\Batch for lolz\Levels"
PUSHD %dir%
GOTO cmd

:FAQ
SET dir="C:\Users\andrew.adam\Documents\Batch for lolz\Menus"
PUSHD %dir%
START FAQ.bat
SET dir="C:\Users\andrew.adam\Documents\Batch for lolz\Levels"
PUSHD %dir%
GOTO cmd

:mm
ECHO Are you sure you want to exit to main menu? All progress will be lost.
ECHO (y/n)

CHOICE /c yn /n

SET dir="C:\Users\andrew.adam\Documents\Batch for lolz\Menus"
IF %ErrorLevel% equ 1 (
PUSHD %dir%
START mm.bat
EXIT )
IF %ErrorLevel% equ 2 GOTO cmd

:quit
ECHO Are you sure you want to quit? All progress will be lost.
ECHO (y/n)

CHOICE /c yn /n
IF %ErrorLevel% equ 1 (
SET dir="C:\Users\Connor\Programming\Casual\Projects\Batch\Code\Menus"
PUSHD %dir%
START hm.bat
EXIT )
IF %ErrorLevel% equ 2 GOTO cmd

:hsr
IF %h% equ 1 (
ECHO Righty Mode is already active.
GOTO cmd) 
IF %h% equ 2 (
SET h=1
ECHO Righty mode activated.
GOTO cmd)

:hsl
IF %h% equ 2 (
ECHO Lefty Mode is already active.
GOTO cmd) 
IF %h% equ 1 (
SET h=2
ECHO Lefty mode activated.
GOTO cmd)

:lvl2
START lvl2.bat
EXIT