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


::-bt::Blodtrykk: Puls:

::centor::Centor-kriteriene, tre av fire til stede (feber over 38,5 gr C, hovne lymfeknuter, puss på tonsillene og fravær av hoste).

::-cor::Ausc cor: Regelmessig aksjon, rene hjertetoner uten bilyd

::-pulm::Ausc pulm: Vesikulære respirasjonslyder bilateralt uten fremmedlyder

::-abd::Us abdomen: Upåfallende inspeksjon, ingen oppfylninger eller ømhet ved palpasjon, spesielt ingen guarding eller slippømhet.

::-ekg::EKG: SR xx uten tegn til ST-endringer eller annen patologi

::-sen::67505690