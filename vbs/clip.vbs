'http://wenwen.soso.com/z/q337438506.htm
Set wshobj=WScript.CreateObject("WScript.Shell")
code="����ò�ƿ��ԣ���������Ҫлл������İ���"
wshobj.Run "cmd.exe /c echo " & code &"| clip.exe", vbHide
app=wshobj.Run ("C:\windows\notepad.exe")
WScript.Sleep 1000
wshobj.AppActivate app
wshobj.SendKeys "^v"
Wscript.Quit