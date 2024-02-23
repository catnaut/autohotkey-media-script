#Requires AutoHotkey v2.0

Control & Volume_Mute:: Send "{Media_Play_Pause}"

$+Space:: ; Shift+Space to pause/play video
{
    SetTitleMatchMode "RegEx"
    DetectHiddenWindows false
    list := WinGetList("(bilibili|YouTube).*Microsoft​ Edge$")
    Loop list.Length
    {
        ControlFocus list[A_Index]
        ControlSend "{k}", list[A_Index]
    }
}