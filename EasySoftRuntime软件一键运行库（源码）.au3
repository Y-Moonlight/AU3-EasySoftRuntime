#NoTrayIcon   
#RequireAdmin 

#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>


#Region ### START Koda GUI section ### Form=D:\Users\Documents\AU3脚本开发\EasySoftRuntime一键运行库\GUI界面\[AU3]GUI软件快速安装程序.kxf

DirCreate("C:\Windows\Temp\ESRTemp")
FileInstall("D:\Users\Documents\AU3脚本开发\EasySoftRuntime一键运行库\ico1.ico","C:\Windows\Temp\ESRTemp\")

$Form1 = GUICreate("EasySoftRuntime软件一键运行库(ESR)", 561, 371, -1, -1,$WS_CAPTION+$WS_EX_TOOLWINDOW)
GUISetBkColor(0xA6CAF0)
$Edit1 = GUICtrlCreateEdit("", 100, 24, 433, 245,$ES_READONLY +$WS_VSCROLL)
GUICtrlSetData(-1, StringFormat("————————————软件特点—————————————\r\nEasySoftRuntime软件一键运行库（简称ESR）是由@飘白编写的的一\r\n款快捷安装系统常用运行库的工具。集成了Flash特别版、NET3.5、\r\nDX9、VC等多种运行库（玩游戏、上网、办公必备），一键安装，也\r\n可使用“/s”或“/S”（不包括引号）参数自动安装，方便您在不同环\r\n境下使用。\r\n软件集成最新运行库、操作简单、安装快捷，是普通电脑用户装机的首\r\n选软件，运行库安装，一键到位。\r\n系统支持：Windows 10（x86/x64）、Windows 11（x64）\r\n————————————特别提醒—————————————\r\n由于软件内置运行库较多，安装时间较长，请耐心等待（机械硬盘将会\r\n花费更多时间）。安装时请保存并退出所有软件以保证软件正常运行，\r\n若安装期间弹出软件运行窗口请选择运行。\r\n注意：Flash特别版安装完成后仍需要支持Flash的浏览器（IE等）来运\r\n行，新版Edge，Chrome均不支持！\r\n安装完运行库后请重启电脑以保证所有运行库生效。\r\n——————————版权纠纷和免责声明——————————\r\n该软件版权归@飘白所有，内置原软件（运行库）版权和解释权归原软\r\n件公司所有。（感谢IT天空、423down提供软件支持）\r\n@飘白仅将原软件（运行库）进行整合使用。软件仅限于个人研究学习\r\n使用，禁止用于任何商业目的或者非法用途。使用者造成的任何非法盈\r\n利或者侵权纠纷由使用者自行承担一切法律后果，与@飘白无关。安装\r\n此软件即表示已明确接受此声明。\r\n————————————————————————————\r\n制作不易，转载请注明出处↓\r\n作者：@飘白  \r\nQQ：3570150233 \r\nEmail：3570150233@qq.com"))
GUICtrlSetFont(-1, 10, 400, 0, "微软雅黑")
GUICtrlSetBkColor(-1, 0xF0F0F0)
$Input1 = GUICtrlCreateInput("系统工作目录   （暂不支持更改）", 20, 295, 428, 27)
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlSetFont(-1, 10, 800, 0, "微软雅黑")
$Button1 = GUICtrlCreateButton("更改目录", 465, 295, 70, 28)
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlSetFont(-1, 9, 800, 0, "微软雅黑")
$Button2 = GUICtrlCreateButton("开始安装", 379, 330, 70, 28)
GUICtrlSetFont(-1, 9, 800, 0, "微软雅黑")
$Button3 = GUICtrlCreateButton("退出安装", 465, 330, 70, 28)
GUICtrlSetFont(-1, 9, 800, 0, "微软雅黑")
$Label1 = GUICtrlCreateLabel("作者：@飘白    QQ：3570150233", 24, 335, 213, 23)
GUICtrlSetFont(-1, 10, 800, 0, "微软雅黑")
$Label2 = GUICtrlCreateLabel("安装目录↓", 25, 265, 63, 23)
GUICtrlSetFont(-1, 10, 800, 0, "微软雅黑")
$Icon1 = GUICtrlCreateIcon("C:\Windows\Temp\ESRTemp\ico1.ico", -1, 24, 24, 56, 56)
$Label3 = GUICtrlCreateLabel("安装说明→", 20, 90, 69, 23)
GUICtrlSetFont(-1, 10, 800, 0, "微软雅黑")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button3
			DirRemove("C:\Windows\Temp\ESRTemp",1)
			Exit
		Case $Label1
			MsgBox(0+64+262144,"关于作者","制作不易，转载请注明出处↓" & @CRLF & "作者：@飘白" & @CRLF & "QQ：3570150233 " & @CRLF & "Email：3570150233@qq.com")
		Case $Button2
			MsgBox(0+64+262144,"EasySoftRuntime软件一键运行库(ESR)","安装程序将在按下“确定”后运行，请确保已保存并关闭其他软件！")
			GUISetState(@SW_HIDE)
			FileInstall("D:\Users\Documents\AU3脚本开发\EasySoftRuntime一键运行库\RunWait.exe","C:\Windows\Temp\ESRTemp\")
			Run("D:\Users\Documents\AU3脚本开发\EasySoftRuntime一键运行库\RunWait.exe")
			Sleep(500)
			$PID=WinGetProcess ("EasySoftRuntime软件一键运行库(ESR)_By飘白") 
			Sleep(500)
			FileInstall("D:\Users\Documents\AU3脚本开发\EasySoftRuntime一键运行库\Soft\ActiveX.exe","C:\Windows\Temp\ESRTemp\")
			RunWait('C:\Windows\Temp\ESRTemp\ActiveX.exe /ai /gm2')
			FileInstall("D:\Users\Documents\AU3脚本开发\EasySoftRuntime一键运行库\Soft\NPAPI.exe","C:\Windows\Temp\ESRTemp\")
			RunWait('C:\Windows\Temp\ESRTemp\NPAPI.exe /ai /gm2')
			FileInstall("D:\Users\Documents\AU3脚本开发\EasySoftRuntime一键运行库\Soft\PPAPI.exe","C:\Windows\Temp\ESRTemp\")
			RunWait('C:\Windows\Temp\ESRTemp\PPAPI.exe /ai /gm2')
			FileInstall("D:\Users\Documents\AU3脚本开发\EasySoftRuntime一键运行库\Soft\vbvc.exe","C:\Windows\Temp\ESRTemp\")
			RunWait('C:\Windows\Temp\ESRTemp\vbvc.exe /aiR')
			FileInstall("D:\Users\Documents\AU3脚本开发\EasySoftRuntime一键运行库\Soft\vbvc.exe","C:\Windows\Temp\ESRTemp\")
			RunWait('C:\Windows\Temp\ESRTemp\vbvc.exe /y')
			FileInstall("D:\Users\Documents\AU3脚本开发\EasySoftRuntime一键运行库\Soft\dx9c.exe","C:\Windows\Temp\ESRTemp\")
			RunWait('C:\Windows\Temp\ESRTemp\dx9c.exe /S')
			FileInstall("D:\Users\Documents\AU3脚本开发\EasySoftRuntime一键运行库\Soft\net3.5.exe","C:\Windows\Temp\ESRTemp\")
			RunWait('C:\Windows\Temp\ESRTemp\net3.5.exe /S')
			Sleep(500)
			
			FileDelete("C:\Windows\Temp\ESRTemp\ActiveX.exe")
			FileDelete("C:\Windows\Temp\ESRTemp\NPAPI.exe")
			FileDelete("C:\Windows\Temp\ESRTemp\PPAPI.exe")
			FileDelete("C:\Windows\Temp\ESRTemp\vbvc.exe")
			FileDelete("C:\Windows\Temp\ESRTemp\dx9c.exe")
			FileDelete("C:\Windows\Temp\ESRTemp\net3.5.exe")
			
			
			
			ProcessClose ($PID)
			Sleep(500)
			MsgBox(0+64+262144,"EasySoftRuntime软件一键运行库(ESR)","软件一键运行库安装完毕，请重启电脑以保证所有运行库生效！")
			DirRemove("C:\Windows\Temp\ESRTemp",1)
			Exit

	EndSwitch
WEnd
