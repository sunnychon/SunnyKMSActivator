@echo off
:::::::::autokms:::::::::
title SUNNYKMSACTIVATOR v1.0
set KMS_KEY=%1
set retry=0
set kms_server=kms.digiboy.ir
echo Will Activate %2 .
:retry
::try to connect kms server
echo.
echo Activating KMS Key...Please Wait!
echo Using Server:%kms_server%
echo Setting KMS key:%KMS_KEY%
cscript //nologo c:\windows\system32\slmgr.vbs /ipk %KMS_KEY% >nul
echo Setting Server:%kms_server%
cscript //nologo c:\windows\system32\slmgr.vbs /skms %kms_server% >nul
echo Connecting Server:%kms_server%
cscript //nologo c:\windows\system32\slmgr.vbs /ato >nul||goto kms_failed

::install Completed and exit
echo Activation Completed. Press Any Key To Exit. . .
pause>nul
exit

:kms_failed

::kms server failed

cls
set /a retry=%retry%+1
echo Server "%kms_server%" Failed,Retrying(%retry%).
::retry kms server list
if %retry%==1 set kms_server=54.223.212.31
if %retry%==2 set kms_server=hq1.chinancce.com
if %retry%==3 set kms_server=kms.cnlic.com
if %retry%==4 set kms_server=kms.chinancce.com
if %retry%==5 set kms_server=kms.ddns.net
if %retry%==6 set kms_server=franklv.ddns.net
if %retry%==7 set kms_server=k.zpale.com
if %retry%==8 set kms_server=m.zpale.com
if %retry%==9 set kms_server=mvg.zpale.com
if %retry%==10 set kms_server=kms.shuax.com
if %retry%==11 set kms_server=kensol263.imwork.net:1688
if %retry%==12 set kms_server=xykz.f3322.org
if %retry%==13 set kms_server=kms789.com
if %retry%==14 set kms_server=dimanyakms.sytes.net:1688
if %retry%==15 set kms_server=kms.03k.org:1688
if %retry%==16 set kms_server=win.kms.pub:1688
if %retry%==17 set kms_server=kms.xingez.me:1688
if %retry%==18 set kms_server=kms.000606.xyz:1688
if %retry%==19 set kms_server=kms.cyxc.club:1688
::retry kms server list end

:: if "retry" is bigger than 20 then exit.
if %retry%==20 cls&echo KMS Key INSTALL FAILED! Please Cheak Your Network.&pause>nul&exit

::set the server and retry
goto retry
:::::::::sunaiautokms:::::::::