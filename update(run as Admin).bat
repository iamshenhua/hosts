@echo off
ipconfig /flushdns

git pull
cls

copy /y hosts 	%windir%\System32\drivers\etc\hosts
copy /b %windir%\System32\drivers\etc\hosts + google.txt  %windir%\System32\drivers\etc\hosts
copy /b %windir%\System32\drivers\etc\hosts + others.txt  %windir%\System32\drivers\etc\hosts
copy /b %windir%\System32\drivers\etc\hosts + ads.txt %windir%\System32\drivers\etc\hosts

echo "it successed if you see 4 file copyed, else you need check if you run this bash as administrator, or killed by local security"
@pause
