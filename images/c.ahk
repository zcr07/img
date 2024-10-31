;~Ins::
	Send, {ctrl down}c{ctrl up}
sleep,1000    
	Run, nircmd execmd "picgo u"
sleep, 2000
	Run "D:\ahk1.0\Lib\0 tool\9upit\upgit.exe" :clipboard-files"
	, ,hide
return
; 🛩🛩🛩🛩🛩🛩🛩🛩🛩🛩🛩🛩🛩🛩🛩🛩🛩🛩🛩🛩🛩🛩🛩🛩🛩   onegit上传剪贴板中的 文件 Ins
x::

	;run, cmd /c D:\ahk1.0\Lib\0 tool\9upit\upgit.exe :clipboard -o clipboard -f markdown
             Run "C:\3\picgo-croe\upgit.exe" :clipboard -o clipboard -f markdown
	, ,hide


return