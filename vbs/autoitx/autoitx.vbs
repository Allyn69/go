Set oShell = WScript.CreateObject("WScript.Shell")

oShell.Run "regsvr32  /s AutoItX3_x64.dll"
WScript.Sleep 100

Set oAutoIt = WScript.CreateObject("AutoItX3.Control")
oAutoIt.Run("notepad.exe")
'oAutoIt.Run("cmd /c echo �������Ŀ���Ч���������Ҳ�ǿ��Ե�|clip")
oAutoIt.clipPut("�������Ŀ���Ч���������Ҳ�ǿ��Ե�!")
oAutoIt.WinWaitActive "�ޱ���", ""

oAutoIt.Send("^v")

'oAutoIt.ToolTip "This is a tooltip", oAutoIt.MouseGetPosX(), oAutoIt.MouseGetPosY()
oAutoIt.ToolTip "This is a tooltip",oAutoIt.WinGetClientSizeWidth("")/2,oAutoIt.WinGetClientSizeHeight("")/2
oAutoIt.Sleep 5000     ' Sleep to give tooltip time to display

'If oAutoIt.IsAdmin Then WScript.Echo "Admin rights detected"