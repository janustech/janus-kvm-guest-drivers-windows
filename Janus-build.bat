:: Janus-build.bat
:: see also tools -> Driver.JAN.props, JAN.ver
::
@echo off
setlocal
SET _BUILD_DISABLE_SDV=Yes
SET Feature_AlwaysDefaultVendor=false
SET _VENDOR_=JAN
::version for Win10 1.0.N.100
SET JAN_RELEASE_N=1
call tools\build.bat vioserial\vioser.sln Win10 x64
if errorlevel 1 goto :eof
echo drivers (inf,cat,sys) are ready under vioserial\install\Win10\amd64
echo Next step is to sign them
pause
