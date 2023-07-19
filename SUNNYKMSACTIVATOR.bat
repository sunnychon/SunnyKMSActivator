@echo off
cls
echo ===========================================================
echo                   Support Version List
echo ===========================================================
echo ~~~~~~~~~~~~~~~~~~~~~Normal Versions~~~~~~~~~~~~~~~~~~~~~~~
echo 1      Windows 10/11 Pro	
echo 2      Windows 10/11 Pro N	
echo 3      Windows 10/11 Pro for Workstations	
echo 4      Windows 10/11 Pro for Workstations N
echo 5      Windows 10/11 Pro Education
echo 6      Windows 10/11 Pro Education N
echo 7      Windows 10/11 Education
echo 8      Windows 10/11 Education N
echo 9      Windows 10/11 Enterprise
echo 10     Windows 10/11 Enterprise N
echo 11     Windows 10/11 Enterprise G
echo 12     Windows 10/11 Enterprise G N
echo 13     Windows 7     Pro
echo 14     Windows 7     Enterprise
echo ~~~~~~~~~~~~~~~~~~~~~Server Versions~~~~~~~~~~~~~~~~~~~~~~~
::2022
echo 15 Windows Server 2022 Datacenter
echo 16 Windows Server 2022 Datacenter Azure Edition
echo 17 Windows Server 2022 Standard
::2019
echo 18 Windows Server 2019 Datacenter
echo 19 Windows Server 2019 Standard
echo 20 Windows Server 2019 Essentials
::2016
echo ===========================================================
echo.
set /p kms=

::kms key list
if %kms%==1 set kmskey=W269N-WFGWX-YVC9B-4J6C9-T83GX&set install_version=Windows10/11-Pro
if %kms%==2 set kmskey=MH37W-N47XK-V7XM9-C7227-GCQG9&set install_version=Windows10/11-Pro-N
if %kms%==3 set kmskey=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J&set install_version=Windows10/11-Pro-for-Workstations
if %kms%==4 set kmskey=9FNHH-K3HBT-3W4TD-6383H-6XYWF&set install_version=Windows10/11-Pro-for-Workstations-N
if %kms%==5 set kmskey=6TP4R-GNPTD-KYYHQ-7B7DP-J447Y&set install_version=Windows10/11-Pro-Education
if %kms%==6 set kmskey=YVWGF-BXNMC-HTQYQ-CPQ99-66QFC&set install_version=Windows10/11-Pro-Education-N
if %kms%==7 set kmskey=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2&set install_version=Windows10/11-Education
if %kms%==8 set kmskey=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ&set install_version=Windows10/11-Education-N
if %kms%==9 set kmskey=NPPR9-FWDCX-D2C8J-H872K-2YT43&set install_version=Windows10/11-Enterprise
if %kms%==10 set kmskey=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4&set install_version=Windows10/11-Enterprise-N
if %kms%==11 set kmskey=YYVX9-NTFWV-6MDM3-9PT4T-4M68B&set install_version=Windows10/11-Enterprise-G
if %kms%==12 set kmskey=44RPN-FTY23-9VTTB-MP9BX-T84FV&set install_version=Windows10/11-Enterprise-G-N
if %kms%==13 set kmskey=FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4&set install_version=Windows7-Pro
if %kms%==14 set kmskey=33PXH-7Y6KF-2VJC9-XBBR8-HVTHH&set install_version=Windows7-Enterprise
if %kms%==15 set kmskey=WX4NM-KYWYW-QJJR4-XV3QB-6VM33&set install_version=WindowsServer2022-Datacenter
if %kms%==16 set kmskey=NTBV8-9K7Q8-V27C6-M2BTV-KHMXV&set install_version=WindowsServer2022-Datacenter-Azure-Edition
if %kms%==17 set kmskey=VDYBN-27WPP-V4HQT-9VMD4-VMK7H&set install_version=WindowsServer2022-Standard
if %kms%==18 set kmskey=WMDGN-G9PQG-XVVXX-R3X43-63DFG&set install_version=WindowsServer2019-Datacenter
if %kms%==19 set kmskey=N69G4-B89J2-4G8F4-WWYCC-J464C&set install_version=WindowsServer2019-Standard
if %kms%==20 set kmskey=WVDHN-86M7X-466P6-VHXV7-YY726&set install_version=WindowsServer2019-Essentials

::launch the kms script
powershell Start-Process SUNAIAUTOKMS-SCRIPT.bat -ArgumentList '%kmskey% "%install_version%"' -Verb RunAS