'http://demon.tw/programming/vbs-run-and-exec.html
Set ws = CreateObject("WScript.Shell")
host = WScript.FullName
 
If LCase(Right(host, 11)) = "wscript.exe" Then
    ws.run "cscript """ & WScript.ScriptFullName & chr(34), 0
    WScript.Quit
End If

Set oexec = ws.Exec( "ipconfig")
Msgbox oExec.StdOut.ReadAll, , "ipconfig"
'��ʱ��Ҫ��WScript.Echo����Ϊ��ǰ���ڿ���̨����
'WScript.Echo�Ľ�����ڿ���̨��������ᵯ���Ի���