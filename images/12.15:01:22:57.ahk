
#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1

#Include %A_ScriptDir%\ControlColor.ahk

Gui +hWndhMainWnd
Gui Font, s9, Segoe UI
Gui Color, 0x767E13
;Gui Add, Text, hWndhTxt x102 y49 w132 h71 +0x200, 选择要启动的软件
;ControlColor(hTxt, hMainWnd, 0xFF8080, 0x800040)

Gui Add, Button, gdd x29 y177 w80 h23, geek
Gui Add, Button, gee x130 y177 w80 h23, 计算器
Gui Add, Button, gff x234 y177 w80 h23, FDown

Gui Add, Button, gaa x29 y137 w80 h23, 输入法
Gui Add, Button, gbb x130 y137 w80 h23, 文件夹同步
Gui Add, Button, gcc x234 y137 w80 h23, IDM

Gui Add, Button, ggg x29 y97 w80 h23, Photoshop
Gui Add, Button, ghh x130 y97 w80 h23, 手机投屏
Gui Add, Button, gii x234 y97 w80 h23, 4kvideo

Gui Add, Button, gr x29 y57 w80 h23, 手机音响
Gui Add, Button, gs x130 y57 w80 h23, AudioS
Gui Add, Button, gt x234 y57 w80 h23, OBS

Gui Add, Button, gu x29 y17 w80 h23, xnview
Gui Add, Button, gv x130 y17 w80 h23, Mobi
Gui Add, Button, gw x234 y17 w80 h23, AudioRelay

Gui Add, Button, gx x29 y217 w80 h23, 卸载2
Gui Add, Button, gy x130 y217 w80 h23, Typora
Gui Add, Button, gz x234 y217 w80 h23, 123Down

; 计算窗口位置并显示
Gui, Show, x234 y% (A_ScreenHeight - 260) , 选择要启动的软件
Return


gg:
run D:\3\AdobePhotoshop_CC_2019_20.0.10.28848_Green\Photoshop.exe
ExitApp 7  ; 设置返回码为 7
Return

hh:
run D:\3\4\00                      QtScrcpy-win-x64-v1.8.1\00　　　　　　FreeControl.exe
ExitApp 8  ; 设置返回码为 8
Return

ii:
run C:\Program Files (x86)\4KDownload\4kvideodownloaderplus\4kvideodownloaderplus.exe
ExitApp 9  ; 设置返回码为 9
Return

dd:
run D:\3\4\9  geek.exe
ExitApp 1  ; 设置返回码为 1
Return

ee:
run D:\3\4\9 CalcVoice2.14.exe
ExitApp 2  ; 设置返回码为 2
Return

ff:
run C:\Program Files\Softdeluxe\Free Download Manager\fdm.exe
ExitApp 3  ; 设置返回码为 3
Return

aa:
run D:\3\4\tsftool\TSFToolv64.exe
ExitApp 4  ; 设置返回码为 4
Return

bb:
run D:\3\4\文件夹同步\文件夹同步.exe
ExitApp 5  ; 设置返回码为 5
Return

cc:
run C:\Program Files (x86)\Internet Download Manager\IDMan.exe
ExitApp 6  ; 设置返回码为 6
Return

r:
run C:\Program Files (x86)\SoundWire Server\SoundWireServer.exe
ExitApp 10  ; 设置返回码为 10
Return

s:
run D:\ahk1.0\Lib\0 tool\SoundWire\AudioShareServer.exe
ExitApp 11  ; 设置返回码为 11
Return

t:
run C:\Program Files\obs-studio\bin\64bit\obs64.exe
ExitApp 12  ; 设置返回码为 12
Return

u:
run C:\3\XnView 2.52.0\xnview.exe
ExitApp 13  ; 设置返回码为 13
Return

v:
run D:\3\4\9 MobipocketReader_6.2.exe
ExitApp 14  ; 设置返回码为 14
Return

w:
run C:\Program Files (x86)\AudioRelay\AudioRelay.exe
ExitApp 15  ; 设置返回码为 15
Return

x:
run D:\3\4\9 卸载 IObitv10.0.2.21.exe
ExitApp 16  ; 设置返回码为 16
Return

y:
run C:\Program Files\Typora\Typora.exe
ExitApp 17  ; 设置返回码为 17
Return

z:
run C:\3\android.exe
ExitApp 18  ; 设置返回码为 18
Return

GuiEscape:
GuiClose:
    ExitApp
