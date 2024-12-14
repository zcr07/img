#Requires AutoHotkey v2.0

#singleinstance force
CoordMode("Pixel")
CoordMode("Mouse")

FX := 0  ; 初始化变量
FY := 0  ; 初始化变量

try {
    ImageSearch(&FX, &FY, 0, 0, A_ScreenWidth, A_ScreenHeight, "C:\Users\z\Desktop\2.bmp")
    
    ; 如果找到图像，进行点击
    if (FX != 0 && FY != 0) {
        Click(FX + 30, FY + 10)
    }
} catch {
    ; 如果找不到图像，显示错误信息
    MsgBox("Image not found!")
}

return
