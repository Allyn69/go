Set WshShell=CreateObject("WScript.Shell")
strDesKtop=WshShell.SpecialFolders("DesKtop")

Set oShellLink=WshShell.CreateShortcut(strDesKtop&"\��ͼ.lnk")

oShellLink.TargetPath="mspaint.exe"

oShellLink.WindowStyle=1

oShellLink.Hotkey="CTRL+SHIFT+P"
 
oShellLink.IconLocation="mspaint.exe,0"
oShellLink.Description="�ñ�׼VBS�����Ļ��ʿ�ݷ�ʽ"

oShellLink.WorkingDirectory=strDesKtop
 
oShellLink.Save
