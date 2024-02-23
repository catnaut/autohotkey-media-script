#Requires AutoHotkey v2.0

#SingleInstance force

devices := ["耳机", "扬声器"]
; 设置提醒图标。0x0（无图标），0x1（信息图标），0x2（警告图标），0x3（错误图标）
index := 0x0
logo := 0x1
; 设置切换提示声。0x0（有提示声），0x10（无提示声）
voice := 0x0
option := logo+voice


Alt & Volume_Mute::
{
    global index, devices, logo, voice
    ; MsgBox isSet(index)
    index := Mod(index + 1, devices.Length)
    ChangeDevice(devices[index+1], option)
    return
}


ChangeDevice(device, option) {
    TrayTip device, "当前播放设备", option
    Run "nircmd.exe setdefaultsounddevice " . device
    SetTimer HideTrayTip, 3000
}

HideTrayTip() {
    TrayTip  ; 尝试以正常的方式隐藏它.
}