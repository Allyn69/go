Set oShell = WScript.CreateObject("WScript.Shell")

oShell.Run "regsvr32  /s AutoItX3_x64.dll"
WScript.Sleep 100

Set oAutoIt = WScript.CreateObject("AutoItX3.Control")
oAutoIt.Run("notepad.exe")
oAutoIt.Run("cmd /c echo �������Ŀ���Ч���������Ҳ�ǿ��Ե�|clip")
oAutoIt.WinWaitActive "�ޱ���", ""

oAutoIt.Send("^v")