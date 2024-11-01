F1 & v::                                                
	clipboard :=GetPath()         ;----------------------------------获取路径
	return

GetFolder(txt)
{
	SplitPath, txt,, o
	return o
}
GetFilename(txt)
{
	SplitPath, txt, o
	return o
}
;在当前资源管理器窗口中，获取选中文件路径
GetPath(hwnd="")
{
	ComObjError(false)
WinGet, process, processName, % "ahk_id" hwnd := hwnd? hwnd:WinExist("A")
        	WinGetClass class, ahk_id %hwnd%
        	if (process != "explorer.exe")
	return
        	if (class ~= "Progman|WorkerW") {
ControlGet, files, List, Selected Col1, SysListView321, ahk_class %class%
	Loop, Parse, files, `n, `r
	ToReturn .= A_Desktop "\" A_LoopField "`n"
}
        	else if (class ~= "(Cabinet|Explore)WClass")
{
	for window in ComObjCreate("Shell.Application").Windows
{
	if (window.hwnd==hwnd)
	sel := window.Document.SelectedItems
}
	for item in sel
	ToReturn .= item.path "`n"
}
        	return Trim(ToReturn,"`n")
}

clipboard = %clipboard%
sleep, 2000
	Run, cmd/k picgo u %clipboard%	
sleep, 9000

clipboard = <p align = "center"><img src="%clipboard%" style="width:400px;"><br><br>
return

; ΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞ   F1 & ,  上传截图到github/img  ΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞ  000001
^+0::
send ^c
sleep, 2000
RunWait, cmd /c "picgo u"
return
;=============================================上传剪贴板文件 ctrl+shift+0