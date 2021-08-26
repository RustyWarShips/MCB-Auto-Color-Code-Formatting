@echo off

setlocal EnableDelayedExpansion
:s
cls
set /p Input=Enter the sentence you want to modify: 
 




set str=%Input%
set tempstr=%str%
set count=0
:loop
if defined tempstr (
    set tempstr=%tempstr:~1%
    set /a count+=1
    set /a pos=%count%+1
    set t!count!=!str:~%pos%,1!
	
    goto loop
)

:: check the generated variables
set t

:choice 
cls
echo enter 1 for k;;;; [your text here] k;;;;
echo enter 2 to turn your text into a rainbow
echo.
echo.
set /p ch=Enter the thing you want to do (1/2): 

if %ch%==1 goto 1
if %ch%==2 goto 2

cls
echo you did not enter a correct option, try again
pause
goto:choice
:2
cls

echo you have selected Rainbow, coppy and paste your text below
echo. 
echo. 
echo. 
echo "&e%t1%&1%t2%&3%t3%&4%t4%&5%t5%&6%t6%&f%t7%&b%t8%&9%t9%&e%t10%&2%t11%&3%t12%&4%t13%&5%t14%&6%t15%&f%t16%&b%t17%&9%t18%&e%t19%&1%t20%&2%t21%&3%t22%&4%t23%&5%t24%&6%t25%&f%t26%&b%t26%&9%t27%&e%t28%&2%t29%&3%t30%&4%t31%&5%t32%&6%t33%&f%t34%&b%t35%&9%t36%&e%t37%&1%t38%&2%t39%&3%t40%"
echo. 
echo. 
pause
goto s

::echo "&0%t1%&1%t2%&3%t3%&4%t4%"


:1
cls
echo you have selected option 1, answer the questions below
echo.
set /p p=Enter the color code you want the prefix and suffix to be eg, 0,1,2,3,4,5: 
echo. 
set /p c=Enter the color code you want the middle bit to be eg, 0,1,2,3,4,5: 
cls

echo coppy and paste your text below
echo. 
echo. 
echo. 


echo "&%p%&k;;; &%c%&l%t1%%t2%%t3%%t4%%t5%%t6%%t7%%t8%%t9%%t10%%t11%%t12%%t13%%t14%%t15%%t16%%t17%%t18%%t19%%t20%%t21%%t22%%t23%%t24%%t25%%t26%%t26%%t27%%t28%%t29%%t30%%t31%%t32%%t33%%t34%%t35%%t36%%t37%%t38%%t39%%t40%&%p%&k;;;"

pause
goto s 
