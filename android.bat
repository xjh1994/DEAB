echo=1/*>nul&@cls  
@echo off  

call :http "http://7d9r49.com1.z0.glb.clouddn.com/jdk-8u121-windows-i586_8.0.1210.13.exe" C:\jdk.exe
call :http "http://dl.google.com/dl/android/studio/install/2.3.0.8/android-studio-bundle-162.3764568-windows.exe" C:\androidstudio.exe
call :http "http://7d9r49.com1.z0.glb.clouddn.com/genymotion-2.8.1-vbox.exe" C:\genymotion.exe
call :http "http://7d9r49.com1.z0.glb.clouddn.com/gradle-3.4.1-all.zip" C:\gradle.zip
  
pause  
goto :eof  
  
::-----------------函数定义区域----------------- 
  
:http  
echo Source:      "%~1"  
echo Destination: "%~f2"  
echo Start downloading. . .  
cscript -nologo -e:jscript "%~f0" "%~1" "%~2"  
echo OK!  
goto :eof  
  
*/  
var iLocal,iRemote,xPost,sGet;  
iLocal =WScript.Arguments(1);   
iRemote = WScript.Arguments(0);   
iLocal=iLocal.toLowerCase();  
iRemote=iRemote.toLowerCase();  
xPost = new ActiveXObject("Microsoft"+String.fromCharCode(0x2e)+"XMLHTTP");  
xPost.Open("GET",iRemote,0);  
xPost.Send();  
sGet = new ActiveXObject("ADODB"+String.fromCharCode(0x2e)+"Stream");  
sGet.Mode = 3;  
sGet.Type = 1;   
sGet.Open();   
sGet.Write(xPost.responseBody);  
sGet.SaveToFile(iLocal,2);  