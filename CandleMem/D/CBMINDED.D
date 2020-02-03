BEGIN ~CBMINDED~
BEGIN ~CBDYNDED~

CHAIN
IF ~Global("CbCutscene3512","AR3512",0)GlobalLT("SanEndBG1Plot","GLOBAL",2)~ THEN CBMINDED Retro
@1
DO ~SetGlobal("CbCutscene3512","AR3512",1)~ 
==CBDYNDED @3
==CBMINDED @2
==CBDYNDED @4
DO ~SetGlobal("CbCutscene3512","AR3512",4)ClearAllActions() FadeToColor([20.0],0)Wait(1)StartMovie("BGEnter")
SetCutSceneLite(TRUE)StartCutScene("CBCT3513")~ EXIT

CHAIN
IF ~Global("CbCutscene3512","AR3512",0)GlobalGT("SanEndBG1Plot","GLOBAL",1)~ THEN CBMINDED RetroS
@1
DO ~SetGlobal("CbCutscene3512","AR3512",1)~ 
==CBDYNDED @3
==CBMINDED @2
==CBDYNDED @4
DO ~SetGlobal("CbCutscene3512","AR3512",4)ClearAllActions() FadeToColor([20.0],0)Wait(1)StartMovie("BGEnter")
SetCutSceneLite(TRUE)StartCutScene("CVCT3513")~ EXIT

