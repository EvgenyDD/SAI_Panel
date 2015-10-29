
;Defines the window for the gui and its characteristics
#NoEnv
#Persistent
#SingleInstance force
SendMode Input
SetWorkingDir %A_ScriptDir%  
Menu Tray, icon, Start_Icon.ico
Gui +LastFound +AlwaysOnTop -caption +ToolWindow +E0x08000000
Gui_1_ID := WinExist()
Gui, Margin, 0, 0
;WinSet, Transparent, 150


Run, C:\Program Files (x86)\PaintToolSAI\sai.exe,, UseErrorLevel
Run, C:\Program Files\PaintToolSAI\sai.exe,, UseErrorLevel



;Defines the various buttons to appear in the gui and their linked subroutines via "vState#"
Gui, Add, Picture, x0 y0 w30 h30 vState4 gBarToggle, png-v2/photoshoplogo.png 			;
Gui, Add, Picture, x0 y0 w30 h30 vState5 gBarToggle, png-v2/Sai.png						;main logo
Gui, Add, Picture, x60 y0 w30 h30 vState6 gClose, png-v2/close.png						;
	Gui, Add, Picture, x30 y0 w30 h30 vState30 gSAIToggle_Switch4, png-v2/rolldown.png	;
	Gui, Add, Picture, x30 y0 w30 h30 vState31 gSAIToggle_Switch4, png-v2/rollup.png	;
Gui, Add, Picture, x30 y0 w30 h30 vState8 gPSToggle_Switch4, png-v2/rolldown.png		;
Gui, Add, Picture, x60 y0 w30 h30 vState7 gPSToggle_Switch4, png-v2/rollup.png			;
Gui, Add, Picture, x90 y0 w24 h30 gGuiMove, png-v2/move.png	

						
Gui, Add, Picture, x0 y30 w57 h57 vstate15 gSAI6, png-v2/undo.png
Gui, Add, Picture, x57 y30 w57 h57 vstate71 gSAI71, png-v2/redo.png
	Gui, Add, Picture, x0 y87 w57 h57 vstate21 gSAI9, png-v2/zoomout.png
	Gui, Add, Picture, x57 y87 w57 h57 vstate19 gSAI8, png-v2/zoomin.png	
Gui, Add, Picture, x0 y144 w57 h57 vstate86 gSAI86, png-v2/fullscreen-complete.png
Gui, Add, Picture, x57 y144 w57 h57 vState70 gSAI70, png-v2/zoom-100.png
	Gui, Add, Picture, x0 y201 w57 h57 vstate25 gSAI11, png-v2/pan-v2.png
	Gui, Add, Picture, x0 y201 w57 h57 vstate131 gSAI11, png-v2/pan-v2n.png
	Gui, Add, Picture, x57 y201 w57 h57 vstate125 gSAI16, png-v2/eyedropper.png
	Gui, Add, Picture, x57 y201 w57 h57 vstate129 gSAI16, png-v2/eyedropper2.png
Gui, Add, Picture, x0 y258 w57 h57 vstate35 gSAI41, png-v2/brush.png	
Gui, Add, Picture, x57 y258 w57 h57 vstate11 gSAI3, png-v2/eraser.png
	Gui, Add, Picture, x0 y315 w57 h57 vstate74 gSAI74, png-v2/watercolor.png
	Gui, Add, Picture, x57 y315 w57 h57 vState3 gSAI2, png-v2/pencil-v2.png
Gui, Add, Picture, x0 y372 w57 h57 vState29 gSAI42, png-v2/brushplusminus.png
Gui, Add, Picture, x57 y372 w57 h57 vState127 gSAI116, png-v2/brushplusminus.png

;Control buttons
	Gui, Add, Picture, x0 y429 w57 h57 vState118 gSAIToggle_Ctrl, png-v2/key-ctrl.png
	Gui, Add, Picture, x0 y429 w57 h57 vState121 gSAIToggle_Ctrl, png-v2/key-ctrldown.png
	Gui, Add, Picture, x57 y429 w57 h57 vState119 gSAIToggle_Alt, png-v2/key-alt.png
	Gui, Add, Picture, x57 y429 w57 h57 vState124 gSAIToggle_Alt, png-v2/key-altdown.png
Gui, Add , Picture, x0 y486 w57 h57 vState116 gSAIToggle_Shift, png-v2/key-shift.png
Gui, Add , Picture, x0 y486 w57 h57 vState120 gSAIToggle_Shift, png-v2/key-shiftdown.png
Gui, Add, Picture, x57 y486 w57 h57 vState113 gSAI113, png-v2/key-d.png
	Gui, Add, Picture, x0 y543 w57 h57 vState112 gSAI112, png-v2/key-esc.png
	Gui, Add, Picture, x57 y543 w57 h57 vState114 gSAI114, png-v2/key-x.png
/*
Gui, Add, Picture, x0 y33 w100 h100 vstate10 gPS3, png-v2/eraser.png
Gui, Add, Picture, x50 y33 w50 h50 vState2 gPS2, png-v2/pen.png
	
	

Gui, Add, Picture, x0 y733 w50 h50 vState0 gPSToggle_Transform, png-v2/transformdown.png
Gui, Add, Picture, x0 y733 w50 h50 vState1 gPSToggle_Transform, png-v2/transform.png
Gui, Add, Picture, x50 y283 w50 h50 vstate12 gPS4, png-v2/lasso.png
Gui, Add, Picture, x100 y233 w100 h100 vstate100 gPS100, png-v1/smudge.tif
Gui, Add, Picture, x100 y133 w100 h100 vstate101 gPS101, png-v2/brush.png
Gui, Add, Picture, x100 y33 w100 h100 vstate102 gPS102, png-v2/pencil.png
Gui, Add, Picture, x100 y333 w100 h100 vstate103 gPS103, png-v1/brushminus.tif
Gui, Add, Picture, x100 y433 w100 h100 vstate104 gPS104, png-v1/brushplus.tif
	
	Gui, Add, Picture, x50 y33 w50 h50 vstate13 gSAI7, png-v2/ink.png
	
	Gui, Add, Picture, x100 y233 w100 h100 vstate75 gSAI75, png-v2/airbrush.png
	Gui, Add, Picture, x0 y83 w50 h50 vstate80 gSAI80, png-v2/brush-002.png
	Gui, Add, Picture, x50 y83 w50 h50 vstate81 gSAI81, png-v2/brushsmudge.png
	Gui, Add, Picture, x0 y133 w50 h50 vstate84 gSAI84, png-v2/brush-003.png
	Gui, Add, Picture, x50 y133 w50 h50 vstate85 gSAI85, png-v2/watercolorfur.png
	Gui, Add, Picture, x50 y183 w50 h50 vstate82 gSAI82, png-v2/watercolorsmudge.png
	Gui, Add, Picture, x0 y183 w50 h50 vstate83 gSAI83, png-v2/watercolor-002.png


Gui, Add, Picture, x0 y533 w100 h100 vstate14 gPS6, png-v2/undo.png
Gui, Add, Picture, x100 y533 w100 h100 vstate105 gPS105, png-v2/redo.png
Gui, Add, Picture, x0 y133 w100 h100 vstate16 gPS7, png-v1/moveselection.tif
	Gui, Add , Picture, x0 y550 w50 h50 vState26 gSAIToggle_Transform, png-v2/transformdown.png
	Gui, Add , Picture, x0 y550 w50 h50 vState27 gSAIToggle_Transform, png-v2/transform.png
	Gui, Add, Picture, x50 y550 w50 h50 vstate123 gSAIToggle_Lasso, png-v2/lasso.png
	Gui, Add, Picture, x50 y550 w50 h50 vstate122 gSAIToggle_Lasso, png-v2/lassodown.png
	

Gui, Add, Picture, x100 y633 w100 h100 vstate18 gPS8, png-v2/zoomin.png
Gui, Add, Picture, x0 y633 w100 h100 vstate20 gPS9, png-v2/zoomout.png
Gui, Add, Picture, x100 y733 w50 h50 vstate106 gPS106, png-v2/normal.png
Gui, Add, Picture, x150 y733 w50 h50 vstate107 gPS107, png-v2/zoom-100.png
Gui, Add, Picture, x50 y383 w50 h50 vstate108 gPS108, png-v2/hue-saturation.png
Gui, Add, Picture, x50 y333 w50 h50 vstate109 gPS109, png-v2/brightness-contrast.png
Gui, Add, Picture, x0 y283 w50 h50 vstate110 gPS110, png-v1/flipcanvas.tif

	Gui, Add, Picture, x100 y433 w100 h100 vState29 gSAI42, png-v2/brushplusminus.png
	Gui, Add, Picture, x0 y333 w50 h200 vState72 gSAI72, png-v2/rota-right.png
	Gui, Add, Picture, x0 y433 w50 h100 vState73 gSAI73, png-v2/rota-left.png
	Gui, Add, Picture, x0 y333 w50 h100 vState111 gSAI111, png-v2/rotatouch-v2.png
	
	
	
	Gui, Add, Picture, x25 y458 w25 h25 vState115 gSAI115, png-v2/key-m.png

	Gui, Add, Picture, x25 y483 w25 h25 vState117 gSAI117, png-v2/key-copy.png
	
	
	
	Gui, Add, Picture, x50 y483 w50 h50 vState76 gSAI76, png-v2/layer-erase.png
	Gui, Add, Picture, x50 y433 w50 h50 vState77 gSAI77, png-v2/bucket.png
	Gui, Add, Picture, x50 y383 w50 h50 vState78 gSAI78, png-v2/hue-saturation.png
	Gui, Add, Picture, x50 y333 w50 h50 vState79 gSAI79, png-v2/brightness-contrast.png


Gui, Add, Picture, x0 y233 w50 h50 vstate22 gPS10, png-v2/fullscreen.png
Gui, Add, Picture, x50 y233 w50 h50 vstate24 gPS11, png-v2/pan.png
	Gui, Add, Picture, x0 y233 w50 h50 vstate23 gSAI10, png-v2/fullscreen.png
	
	Gui, Add, Picture, x100 y550 w50 h50 vState32 gSAI14, png-v2/normal.png
	Gui, Add, Picture, x0 y283 w50 h50 vState33 gSAI15, png-v2/reset-view-rotation.png

*/


pssaitoggle=0
barToggle=0
SAIctrlToggle=0
Gosub,DefineSAI

gosub, SAIToggle_Ctrl
gosub, SAIToggle_Shift
gosub, SAIToggle_Alt





;Shows and hides the various buttons for the inital appearance of the Bar



;This routine switches between the Photoshop and Sai bar.

BarToggle:
if pssaitoggle=1
{
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
If barToggle=1 
 {
Gui, Show, h33, w100
GuiControl, Hide, State5
GuiControl, Show, State4
GuiControl, Hide, State7
GuiControl, Show, State8
GuiControl, Hide, State30
GuiControl, Hide, State31
Gosub,DefinePS
pssaitoggle=0
return
 }
Gui, Show, h600, w114
Gosub,DefinePS
GuiControl, Show, State7
GuiControl, Hide, State8
GuiControl, Hide, State30
GuiControl, Hide, State31
pssaitoggle=0
}
else
{
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
If barToggle=1
 {
Gui, Show, h33, w100
GuiControl, Hide, State4
GuiControl, Show, State5
GuiControl, Hide, State7
GuiControl, Hide, State8
GuiControl, Show, State30
GuiControl, Hide, State31
Gosub,DefineSai
pssaitoggle=1
WinMove, 0, 0
SetZero(Gui_1_ID)
return
 }
Gui, Show, h600, w114
GuiControl, Hide, State7
GuiControl, Hide, State8
GuiControl, Hide, State30
GuiControl, Show, State31
Gosub,DefineSai
pssaitoggle=1
WinMove, 140, 0
SetZero(Gui_1_ID)
}
return

Close:
ExitApp
return




;The hide/show button routine

PSToggle_Switch4:
If barToggle=0
{
GuiControl, Hide, State7
GuiControl, Show, State8
GuiControl, Hide, State30
GuiControl, Hide, State31
Gui, Show, h33, w100
barToggle=1
}
Else
{
GuiControl, Hide, State8
GuiControl, Show, State7
GuiControl, Hide, State30
GuiControl, Hide, State31
Gui, Show, h600, w114
barToggle=0
}
Return

SAIToggle_Switch4:
SetZero(Gui_1_ID)
If barToggle=0
{
GuiControl, Hide, State31
GuiControl, Show, State30
GuiControl, Hide, State8
GuiControl, Hide, State7
Gui, Show, h33, w100
barToggle=1
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
WinMove, 0, 0
SetZero(Gui_1_ID)
}
Else
{
GuiControl, Hide, State30
GuiControl, Show, State31
GuiControl, Hide, State8
GuiControl, Hide, State7
Gui, Show, h600, w114
barToggle=0
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
WinMove, 140, 0
SetZero(Gui_1_ID)
}
Return





;The Move Tab

GuiMove:
If GetKeyState("LButton","p")
	DragNotActivate(Gui_1_ID)
Return





;Brush tools.

PS2:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
send {b}
Return

SAI2:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send {n}
return

SAI41:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send {v}
return

SAI74:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send {c}
return

SAI75:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send {a}
return

SAI7:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send {i}
return

;Keys Sai

SAI112:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send {Esc}
return

SAI113:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {d}
send {space up}
return

SAI114:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send {x}
return

SAI115:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send {m}
return

SAI116:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
Mousegetpos,, FirstY
while GetKeyState("Lbutton", "P")
{
	Mousegetpos,SecondX, SecondY
	if(SecondX < 200){
		if(-(SecondY-FirstY)<25){
			send {1}
		}else if(-(SecondY-FirstY)<25*2){
			send {2}
		}else if(-(SecondY-FirstY)<25*3){
			send {3}
		}else if(-(SecondY-FirstY)<25*4){
			send {4}
		}else if(-(SecondY-FirstY)<25*5){
			send {5}
		}else if(-(SecondY-FirstY)<25*6){
			send {6}
		}else if(-(SecondY-FirstY)<25*7){
			send {7}
		}else if(-(SecondY-FirstY)<25*8){
			send {8}
		}else if(-(SecondY-FirstY)<25*9){
			send {9}
		}else if(-(SecondY-FirstY)<25*10){
			send {0}
		}
	}

	sleep 10
}
return 



SAIToggle_Shift:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
If SAIshiftToggle=0
{
GuiControl, Hide, State116
GuiControl, Show, State120

send {Shift down}
SAIshiftToggle=1
}
Else
{
GuiControl, Hide, State120
GuiControl, Show, State116

send {Shift up}
SAIshiftToggle=0
}
Return

SAI118:
SAIToggle_Ctrl:
If SAIctrlToggle=1
{
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
GuiControl, Hide, State118
GuiControl, Show, State121
send {Ctrl down}
SAIctrlToggle=0
}
Else
{
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
GuiControl, Hide, State121
GuiControl, Show, State118
send {Ctrl up}
SAIctrlToggle=1
}
Return

SAI117:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send ^c^v
return

SAI119:
SAIToggle_Alt:
If SAIaltToggle=1
{
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
GuiControl, Hide, State119
GuiControl, Show, State124
send {Alt down}
SAIaltToggle=0
}
Else
{
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
GuiControl, Hide, State124
GuiControl, Show, State119
send {Alt up}
SAIaltToggle=1
}
Return


;Eraser

PS3:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
send {e}
Return

SAI3:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send {e}
return





;Lasso selection tool

PS4:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
send {l}
Return

SAI123:
SAIToggle_Lasso:
If SAIlassoToggle=0
{
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
GuiControl, Hide, State123
GuiControl, Show, State122
send {l}
SAIlassoToggle=1
}
Else
{
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
GuiControl, Hide, State122
GuiControl, Show, State123
send ^d
SAIlassoToggle=0
}
Return

;Lasso deselect

SAI70:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send ^0
return



;Undo

PS6:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
send ^z
return

;Redo

PS105:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
send ^z
return

PS106:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
send ^0
return

PS107:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
send !^0
return

PS108:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
send ^{u}
return

PS109:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
send ^m
return

PS110:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
send !e
return

SAI6:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
loop
{
send ^z
Sleep 100
getKeyState, State, LButton
if State = U
break
}
return

SAI71:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
loop
{
send ^y
Sleep 100
getKeyState, State, LButton
if State = U
break
}
return

SAI72:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
loop
{
send {End}
Sleep 100
getKeyState, State, LButton
if State = U
break
}
return


SAI73:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
loop
{
send {Home}
Sleep 100
getKeyState, State, LButton
if State = U
break
}
return

SAI111:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
Step := 25
Mousegetpos,, FirstY
while GetKeyState("Lbutton", "P")
{
Mousegetpos,, SecondY
	If (SecondY = ThirdY)
		{
		FirstY := SecondY
		}
	If ((SecondY = FirstY) or Abs(FirstY - SecondY < %Step%))
		{
		}
	If (FirstY - SecondY >= Step)
		{
		Multiply := Round(FirstY - SecondY)/%Step%
		Send {End %Multiply%}
		Mousegetpos,, ThirdY
		}
	If (SecondY - FirstY >= Step)
		{
		Multiply := Round(SecondY - FirstY)/%Step%
		Send {Home %Multiply%}
		Mousegetpos,, ThirdY
		}
}
Return

SAI76:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send {d}
return

SAI77:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send !{Delete}
return

SAI78:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send ^u
return

SAI79:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send ^l
return

SAI80:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class

send u
return

SAI81:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send u
return

SAI82:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send q
return

SAI83:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send r
return

SAI84:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send b
return

SAI85:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send g
return

SAI86:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send {Tab}
return

;Move Selection Tool
PS7:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
send {v}
return

;Smudge
PS100:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
send {r}
return

;Brush
PS101:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
send {b}
return

;Brush
PS102:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
send {n}
return

;Brushminus
PS103:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
send {``}
return

;Brushplus
PS104:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
send {+}
return


;Zoom in

PS8:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
return

SAI8:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
loop
{
send ^{NumpadAdd}
Sleep 100
getKeyState, State, LButton
if State = U
break
}
return

;Zoom out

PS9:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
send ^{-}
return

SAI9:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
loop
{
send ^{NumpadSub}
Sleep 100
getKeyState, State, LButton
if State = U
break
}
return




;Full Screen

PS10:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space up}
send {f}
return

SAI10:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send {tab}
return





;Hand Tool, toggle on.
;The "{space up}" call sent from every other command is how the Hand Tool is toggled off. 

PS11:
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
send {space down}
return

SAI11:
IfWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
sleep 100
if(isMoveCmd==0)
{
	send {space up}
	isMoveCmd = 1
	GuiControl, Show, state25
	GuiControl, Hide, state131
}
else
{
	send {space down}
	isMoveCmd = 0
	GuiControl, Hide, state25
	GuiControl, Show, state131
}
;KeyWait, Lbutton, U
;send {space up}
Return





;Brush increas/decrease slider function
SAI42:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {ctrl down}{alt down}
;sleep 1000
KeyWait, Lbutton, D
send {ctrl up}{alt up}
sleep 50
WinSet, AlwaysOnTop, ON, ahk_class AutoHotkeyGUI
return



;Brush increase size

SAI12:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send [
return





;Brush decrease size

SAI13:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send ]
return





;Reset Canvas Rotation to Zero Degrees

SAI14:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send {Insert} 
return





;Canvas Rotation Tool

SAI15:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {space up}
send {j}
return





;Transform Selection and Button Toggle Routine for Photoshop

PSToggle_Transform:
If PStransToggle=0
{
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
GuiControl, Hide, State0
GuiControl, Show, State1
send {space up}
send {Enter}
PStransToggle=1
}
Else
{
ifWinExist, ahk_class Photoshop
WinActivate, ahk_class Photoshop
GuiControl, Hide, State1
GuiControl, Show, State0
send {space up}
send ^t
PStransToggle=0
}
Return


;Transform Selection and Button Toggle Routine for Sai

SAIToggle_Transform:
If SAItransToggle=0
{
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
GuiControl, Hide, State26
GuiControl, Show, State27
send {space up}
send {Enter}
send ^d
SAItransToggle=1
}
Else
{
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
GuiControl, Hide, State27
GuiControl, Show, State26
send {space up}
send ^t
SAItransToggle=0
}
Return


;Eyedropper tool
SAI16:
ifWinExist, ahk_class sfl_window_class
WinActivate, ahk_class sfl_window_class
send {alt down}
GuiControl, Hide, state125
GuiControl, Show, state129
;sleep 800
KeyWait, LButton, D
send {alt up}
GuiControl, Hide, state129
GuiControl, Show, state125
return




;Subroutine called on to define the main button states for Photoshop

DefinePS:

GuiControl, Hide, State0
GuiControl, Hide, State3
GuiControl, Hide, State5
GuiControl, Hide, State11
GuiControl, Hide, State13
GuiControl, Hide, State15
GuiControl, Hide, State17
GuiControl, Hide, State19
GuiControl, Hide, State21
GuiControl, Hide, State23
GuiControl, Hide, State25
GuiControl, Hide, State26
GuiControl, Hide, State27
GuiControl, Hide, State28
GuiControl, Hide, State29
GuiControl, Hide, State32
GuiControl, Hide, State33
GuiControl, Hide, State34
GuiControl, Hide, State35
GuiControl, Hide, State74
GuiControl, Hide, State75
GuiControl, Hide, State70
GuiControl, Hide, State71
GuiControl, Hide, State78
GuiControl, Hide, State79
GuiControl, Hide, State2
GuiControl, Hide, State80
GuiControl, Hide, State81
GuiControl, Hide, State82
GuiControl, Hide, State83
GuiControl, Hide, State84
GuiControl, Hide, state112
GuiControl, Hide, state113
GuiControl, Hide, state114
GuiControl, Hide, state115
GuiControl, Hide, state116
GuiControl, Hide, state117
GuiControl, Hide, state118
GuiControl, Hide, state119

GuiControl, Show, State1
GuiControl, Show, State4
GuiControl, Show, State10
GuiControl, Show, State12
GuiControl, Show, State14
GuiControl, Show, State16
GuiControl, Show, State18
GuiControl, Show, State20
GuiControl, Show, State22
GuiControl, Show, State24
GuiControl, Show, State100
GuiControl, Show, State101
GuiControl, Show, State102
GuiControl, Show, State103
GuiControl, Show, State104
GuiControl, Show, State105
GuiControl, Show, State106
GuiControl, Show, State107
GuiControl, Show, State108
GuiControl, Show, State109
GuiControl, Show, State110

Return





;Subroutine called on to define the main button states for Sai

DefineSai:

GuiControl, Hide, State0
GuiControl, Hide, State1
GuiControl, Hide, State2
GuiControl, Hide, State4
GuiControl, Hide, State10
GuiControl, Hide, State12
GuiControl, Hide, State14
GuiControl, Hide, State16
GuiControl, Hide, State18
GuiControl, Hide, State20
GuiControl, Hide, State22
GuiControl, Hide, State24
GuiControl, Hide, State26
GuiControl, Hide, State100
GuiControl, Hide, State101
GuiControl, Hide, State102
GuiControl, Hide, State103
GuiControl, Hide, State104
GuiControl, Hide, State105
GuiControl, Hide, State106
GuiControl, Hide, State107
GuiControl, Hide, State108
GuiControl, Hide, State109
GuiControl, Hide, State110
GuiControl, Hide, State73
GuiControl, Hide, state72
GuiControl, Hide, state120
GuiControl, Hide, state121
GuiControl, Hide, state122
GuiControl, Hide, state124

GuiControl, Show, State3
GuiControl, Show, State5
GuiControl, Show, State11
GuiControl, Show, State13
GuiControl, Show, State15
GuiControl, Show, State17
GuiControl, Show, State19
GuiControl, Show, State21
GuiControl, Show, State23
GuiControl, Show, State25
GuiControl, Show, State27
GuiControl, Show, State28
GuiControl, Show, State29
GuiControl, Show, State32
GuiControl, Show, State33
GuiControl, Show, State34
GuiControl, Show, State35
GuiControl, Show, state70
GuiControl, Show, state71

GuiControl, Show, state74
GuiControl, Show, state75
GuiControl, Show, state76
GuiControl, Show, state77
GuiControl, Show, state78
GuiControl, Show, state79
GuiControl, Show, state80
GuiControl, Show, state81
GuiControl, Show, state82
GuiControl, Show, state83
GuiControl, Show, state84
GuiControl, Show, state85
GuiControl, Show, state86
GuiControl, Show, state111
GuiControl, Show, state112
GuiControl, Show, state113
GuiControl, Show, state114
GuiControl, Show, state115
GuiControl, Show, state116
GuiControl, Show, state117
GuiControl, Show, state118
GuiControl, Show, state119
GuiControl, Show, state123
GuiControl, Show, state125
GuiControl, Show, state127
GuiControl, Hide, state129
GuiControl, Hide, state131


return

DragNotActivate(hwnd,WhileKeyDown="LButton") {
	CoordMode, Mouse, Screen
	MouseGetPos, mx,my
	WinGetPos, wx,wy,,, ahk_id %hwnd%
	offsetX := mx-wx, offsetY := my-wy
	owd := A_WinDelay
	SetWinDelay, -1
	While (GetKeyState(WhileKeyDown,"p")) {
		Sleep, 20
		MouseGetPos, x,y
		WinMove, ahk_id %hwnd%,, x-offsetX,y-offsetY
	}
	;CoordMode, Menu, Relative
	SetWinDelay, %owd%
}

SetZero(hwnd){
	WinMove, ahk_id %hwnd%,, 0,0
}