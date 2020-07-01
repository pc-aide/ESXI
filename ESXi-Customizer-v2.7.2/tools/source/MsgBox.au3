#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.8.0
 Script name:    MsgBox.au3
 Script version: 1.0
 Author:         Andreas Peetz (ESXi-Customizer@v-front.de)

 Script Function:
	Show a message box

Parameters:
	flag, "Text" [, timeout]

 License: This source code and its compiled executable are licensed
          under the GNU GPL v3. A copy of the license terms is included
		  in the file GPL-v3.txt

#ce ----------------------------------------------------------------------------

#AutoIt3Wrapper_Res_FileVersion=1.0
#AutoIt3Wrapper_Res_ProductVersion=2.7.2
#AutoIt3Wrapper_Res_LegalCopyright=(C) Andreas Peetz, licensed under the GPL v3
#AutoIt3Wrapper_Res_Description=Message Box GUI
#AutoIt3Wrapper_Res_Field=ProductName|ESXi-Customizer
#AutoIt3Wrapper_Res_Field=ProductVersion|2.7.2
#AutoIt3Wrapper_Res_Language=1033

#NoTrayIcon

If $CmdLine[0] > 1 Then
	Dim $MultiLineMsg[63]
	$MultiLineMsg = StringSplit($CmdLine[2], '&n', 1)
	$Msg = $MultiLineMsg[1]
	for $i = 2 To UBound($MultiLineMsg)-1
		$Msg = $Msg & @CRLF & $MultiLineMsg[$i]
	Next
EndIf

Switch $CmdLine[0]
	Case 0 to 1
		$Box = MsgBox(48, "MsgBox Usage Error", "Usage: MsgBox.exe flag Text [timeout]")
	Case 2
		$Box = MsgBox($CmdLine[1], EnvGet("SCRIPTNAME") & " v" & EnvGet("SCRIPTVERSION") & " - Message", $Msg)
	Case 3
		$Box = MsgBox($CmdLine[1], EnvGet("SCRIPTNAME") & " v" & EnvGet("SCRIPTVERSION") & " - Message", $Msg, $CmdLine[3])
EndSwitch
; With a Yes/No-Box return exitcode 1 if Yes is pressed
If $Box = 6 Then Exit (1)