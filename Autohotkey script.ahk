#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

insert::
{
Send, ^c
Sleep 50
Run, https://legehandboka.no/sok?q=%clipboard%
Return
}

home::
{
Send, ^c
Sleep 50
Run, https://www.felleskatalogen.no/medisin/internsok?sokord=%clipboard%
Return
}

::-bt::
Gui, Add, Text, x30 y05 , Blodtrykk og puls
Gui, Add, Text, x12 y30 w60 h30, BT
Gui, Add, Text, x12 y60 w60 h30, Puls 
...

Gui, Add, Edit, x75 y30 w60 h20 vBT, 
Gui, Add, Edit, x75 y60 w60 h20 vPuls,

...
Gui, Add, Button, x25 y100 w40 h30 , OK
Gui, Show, w170, Blodtrykk og puls
Return
ButtonOK:
Gui, Submit
Gui, Destroy

Send BT: %BT%{Enter}Puls: %puls%{Enter}

::centor::Centor-kriteriene, tre av fire til stede (feber over 38,5 gr C, hovne lymfeknuter, puss på tonsillene og fravær av hoste).

::-cor::Ausc cor: Regelmessig aksjon, rene hjertetoner uten bilyd

::-pulm::Ausc pulm: Vesikulære respirasjonslyder bilateralt uten fremmedlyder

::-abd::Us abdomen: Upåfallende inspeksjon, ingen oppfylninger eller ømhet ved palpasjon, spesielt ingen guarding eller slippømhet.

::-ekg::EKG: SR xx uten tegn til ST-endringer eller annen patologi

::-sen::67505690
