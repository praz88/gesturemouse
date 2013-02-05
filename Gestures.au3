#include <Misc.au3>

$dll = DllOpen("user32.dll")
$ini = "functions.ini"
$func1 = IniRead($ini,"Gestures","Function1","C:\Program Files\Mozilla Firefox\firefox.exe")
$func2 = IniRead($ini,"Gestures","Function2","C:\Program Files\Microsoft Office\Office12\WINWORD.EXE")
$func3 = IniRead($ini,"Gestures","Function3","explorer.exe C:\Documents and Settings\Kyle\My Documents\")
$func4 = IniRead($ini,"Gestures","Function4",@WindowsDir&"\system32\calc.exe")
$func5 = IniRead($ini,"Gestures","Function5",@WindowsDir&"\system32\calc.exe")
$func6 = IniRead($ini,"Gestures","Function6",@WindowsDir&"\system32\calc.exe")
$func7 = IniRead($ini,"Gestures","Function7",@WindowsDir&"\system32\calc.exe")
$func8 = IniRead($ini,"Gestures","Function8",@WindowsDir&"\system32\calc.exe")
$funcl1 = IniRead($ini,"Label","Function1",@WindowsDir&"\system32\calc.exe")
$funcl2 = IniRead($ini,"Label","Function2",@WindowsDir&"\system32\calc.exe")
$funcl3 = IniRead($ini,"Label","Function3",@WindowsDir&"\system32\calc.exe")
$funcl4 = IniRead($ini,"Label","Function4",@WindowsDir&"\system32\calc.exe")
$funcl5 = IniRead($ini,"Label","Function5",@WindowsDir&"\system32\calc.exe")
$funcl6 = IniRead($ini,"Label","Function6",@WindowsDir&"\system32\calc.exe")
$funcl7 = IniRead($ini,"Label","Function7",@WindowsDir&"\system32\calc.exe")
$funcl8 = IniRead($ini,"Label","Function8",@WindowsDir&"\system32\calc.exe")

While   1
    Sleep ( 500 )
    ToolTip("")
    If _IsPressed("04", $dll) Then ;you can change 04 to whatever button you want to use
        $ori = MouseGetPos()
            SplashImageOn("","gdot.bmp","30","30",$ori[0]-15,$ori[1]-15,1)
        Do
            Sleep(100)
        $cur = MouseGetPos()
        If $ori[0] - $cur[0] > 100 And  $ori[1] - $cur[1] > 100  Then
            ToolTip($funcl1)
        ElseIf $ori[0] - $cur[0] < -100 And  $ori[1] - $cur[1] > 100  Then
            ToolTip($funcl2)
        ElseIf $ori[0] - $cur[0] > 100 And  $ori[1] - $cur[1] < -100  Then
            ToolTip($funcl3)
        ElseIf $ori[0] - $cur[0] < -100 And  $ori[1] - $cur[1] < -100  Then
            ToolTip($funcl4)
        ElseIf $ori[0] - $cur[0] > 50 Then
            ToolTip($funcl5)
        ElseIf $ori[0] - $cur[0] < -50 Then
            ToolTip($funcl6)
        ElseIf $ori[1] - $cur[1] > 50 Then
            ToolTip($funcl7)
        ElseIf $ori[1] - $cur[1] < -50 Then
            ToolTip($funcl8)
        Else
            ToolTip("")
        EndIf
        Until Not(_IsPressed("04", $dll));you can change 04 to whatever button you want to use
        $cur = MouseGetPos()
        If $ori[0] - $cur[0] > 100 And  $ori[1] - $cur[1] > 100  Then
            Run($func1)
        ElseIf $ori[0] - $cur[0] < -100 And  $ori[1] - $cur[1] > 100  Then
            Run($func2)
        ElseIf $ori[0] - $cur[0] > 100 And  $ori[1] - $cur[1] < -100  Then
            Run($func3)
        ElseIf $ori[0] - $cur[0] < -100 And  $ori[1] - $cur[1] < -100  Then
            Run($func4)
        ElseIf $ori[0] - $cur[0] > 50 Then
            Run($func5)
        ElseIf $ori[0] - $cur[0] < -50 Then
            Run($func6)
        ElseIf $ori[1] - $cur[1] > 50 Then
            Run($func7)
        ElseIf $ori[1] - $cur[1] < -50 Then
            Run($func8)
        Else
            SplashTextOn("Gestures","No action","250","20","-1","-1",2,"","","")
            Sleep(500)
            SplashOff()
        EndIf
        SplashOff()
    EndIf
WEnd
DllClose($dll)