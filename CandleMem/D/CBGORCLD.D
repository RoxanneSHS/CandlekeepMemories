BEGIN ~CBGORCLD~

IF ~  NumTimesTalkedTo(0)~ THEN BEGIN go0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO go12
  IF ~~ THEN REPLY @2 GOTO go11
END

IF ~~ THEN BEGIN go11
  SAY @3
  IF ~~ THEN GOTO go12
END

IF ~~ THEN BEGIN go12
  SAY @4
IF ~~ THEN REPLY @5GOTO go16
IF ~~ THEN REPLY @6 GOTO go16
  IF ~~ THEN REPLY @7 GOTO go20
  IF ~~ THEN REPLY @8 GOTO go18
  IF ~~ THEN REPLY @9 GOTO go94
END

IF ~~ THEN BEGIN go16
SAY @10
IF ~~ THEN REPLY @9 GOTO go94
END

IF ~~ THEN BEGIN go18
SAY @11
IF ~~ THEN REPLY @9 GOTO go94
END

IF ~~ THEN BEGIN go20
SAY@12
IF ~~ THEN REPLY @9 GOTO go94
END

IF ~~ THEN BEGIN go94
SAY @13
IF ~~ THEN REPLY @14 GOTO go95
END

IF ~~ THEN BEGIN go95
SAY @15
IF ~~ THEN REPLY@16 DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPIN112")) ~ GOTO go96
IF ~~ THEN REPLY @17 DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPIN121")) ~ GOTO go96
END

IF ~~ THEN BEGIN go96
SAY @18
IF ~~ THEN REPLY @19 DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPCL907"))~ GOTO go97
IF ~~ THEN REPLY @20 DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPCL922"))~ GOTO go97
END

IF ~~ THEN BEGIN go97
SAY @21
IF ~~ THEN REPLY @22 DO ~AddXPObject(Player1,1000)
ForceSpellRES("CBTETTCH",Player1) ~ GOTO go98
IF ~~ THEN REPLY@23 DO ~AddXPObject(Player1,1000)
ForceSpellRES("CBPHYTCH",Player1) ~ GOTO go98
END

IF ~~ THEN BEGIN go98
SAY @24
IF ~~ THEN REPLY @25 DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPCL522"))~ GOTO go99
IF ~~ THEN REPLY @26 DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPCL521")) ~ GOTO go99
END

IF ~~ THEN BEGIN go99
SAY @27
IF ~~ THEN REPLY @28DO~SetGlobal("CbPlayerBlessedByLathander","GLOBAL",1)
AddXPObject(Player1,1000) ActionOverride(Player1,AddSpecialAbility("spcl741"))~ GOTO go100
IF ~~ THEN REPLY @29 DO ~AddXPObject(Player1,2000)~ GOTO go100
END

IF ~~ THEN BEGIN go100
SAY @30
IF ~~ THEN DO ~SetGlobal("CbGorionTeachesLesson","GLOBAL",6)
~ EXIT
END


IF ~  Global("CbGorionTeachesLesson","GLOBAL",6)~ THEN BEGIN go75
SAY @31
IF ~  Global("CbPlayerBlessedByLathander","GLOBAL",0) ~ THEN GOTO go76
IF ~  Global("CbPlayerBlessedByLathander","GLOBAL",1) ~ THEN GOTO go78
END

IF ~~ THEN BEGIN go76
SAY @32
=@33
  IF ~  Gender(Player1,MALE) ~ THEN GOTO go80
  IF ~  Gender(Player1,FEMALE)~ THEN GOTO go81
END

IF ~~ THEN BEGIN go78
SAY @34
= @35
  IF ~  Gender(Player1,MALE)  ~ THEN GOTO go80
  IF ~  Gender(Player1,FEMALE)~ THEN GOTO go81
END

IF ~~ THEN BEGIN go80
SAY @36
IF ~  Race(Player1,HUMAN)~ THEN GOTO go82
IF ~  OR(2) Race(Player1,ELF)Race(Player1,HALF_ELF)~ THEN GOTO go84
IF ~  Race(Player1,DWARF) ~ THEN GOTO go86
IF ~  Race(Player1,HALFLING) ~ THEN GOTO go88
IF ~  Race(Player1,GNOME)~ THEN GOTO go90
IF ~  Race(Player1,HALFORC) ~ THEN GOTO go92
END

IF ~~ THEN BEGIN go81
SAY @36
IF ~  Race(Player1,HUMAN)~ THEN GOTO go83
IF ~  OR(2)Race(Player1,ELF)Race(Player1,HALF_ELF)~ THEN GOTO go85
IF ~  Race(Player1,DWARF) ~ THEN GOTO go87
IF ~  Race(Player1,HALFLING)~ THEN GOTO go89
IF ~  Race(Player1,GNOME)~ THEN GOTO go91
IF ~  Race(Player1,HALFORC) ~ THEN GOTO go93
END

IF ~~ THEN BEGIN go82
SAY @37
IF ~  OR(4) Class(Player1,CLERIC) Class(Player1,DRUID) Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6000")~ EXIT
IF ~  OR(10) Class(Player1,FIGHTER)Class(Player1,PALADIN) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC) Class(Player1,FIGHTER_THIEF)  Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID) Class(Player1,FIGHTER_MAGE_CLERIC) Class(Player1,CLERIC_RANGER) ~ THEN DO ~ClearAllActions() StartCutSceneMode()StartCutScene("CB__6100")~ EXIT
IF ~  OR(3) Class(Player1,MAGE) Class(Player1,MAGE_THIEF) Class(Player1,SORCERER) Gender(Player1,MALE)Race(Player1,HUMAN) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutSceneEx("CB__6200",FALSE) ~ EXIT
IF ~  OR(2) Class(Player1,THIEF) Class(Player1,BARD) Gender(Player1,MALE) Race(Player1,HUMAN)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6300")~ EXIT
IF ~  Class(Player1,MONK) Gender(Player1,MALE) ~ THEN DO ~ClearAllActions() StartCutSceneMode()StartCutScene("CB__6500")~ EXIT
END

IF ~~ THEN BEGIN go83
SAY @37
IF ~  OR(4) Class(Player1,CLERIC) Class(Player1,DRUID) Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF)
~ THEN DO ~ClearAllActions()StartCutSceneMode() StartCutScene("CB__6010") ~ EXIT
IF ~  OR(10) Class(Player1,FIGHTER) Class(Player1,PALADIN)Class(Player1,FIGHTER_MAGE)Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC) Class(Player1,CLERIC_RANGER) ~ THEN DO ~ClearAllActions() StartCutSceneMode()
StartCutScene("CB__6110") ~ EXIT
IF ~  OR(3)Class(Player1,MAGE) Class(Player1,MAGE_THIEF) Class(Player1,SORCERER)~ THEN DO ~ClearAllActions()
StartCutSceneMode() StartCutScene("CB__6210") ~ EXIT
IF ~  OR(2) Class(Player1,THIEF) Class(Player1,BARD)  ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6310")  ~ EXIT
IF ~  Class(Player1,MONK) ~ THEN DO ~ClearAllActions() StartCutSceneMode()StartCutScene("CB__6510") ~ EXIT
END

IF ~~ THEN BEGIN go84
SAY @36
IF ~  OR(4)Class(Player1,CLERIC)Class(Player1,DRUID)Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF) ~ THEN DO ~ClearAllActions() StartCutSceneMode()StartCutScene("CB__6001")~ EXIT
IF ~OR(10)Class(Player1,FIGHTER)Class(Player1,PALADIN)Class(Player1,FIGHTER_MAGE)Class(Player1,FIGHTER_CLERIC)Class(Player1,FIGHTER_THIEF)Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)Class(Player1,CLERIC_RANGER) ~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("CB__6101") ~ EXIT
IF ~ OR(3)Class(Player1,MAGE)Class(Player1,MAGE_THIEF)Class(Player1,SORCERER)~ THEN DO ~ClearAllActions() StartCutSceneMode()StartCutScene("CB__6201") ~ EXIT
IF ~ OR(2)Class(Player1,THIEF)Class(Player1,BARD)~ THEN DO ~ClearAllActions() StartCutSceneMode()StartCutScene("CB__6301") ~ EXIT
END

IF ~~ THEN BEGIN go85
SAY @36
IF ~ OR(4)Class(Player1,CLERIC) Class(Player1,DRUID) Class(Player1,CLERIC_MAGE)Class(Player1,CLERIC_THIEF) ~ THEN DO ~ClearAllActions()StartCutSceneMode() StartCutScene("CB__6011")~ EXIT
IF ~ OR(10)Class(Player1,FIGHTER)Class(Player1,PALADIN)Class(Player1,FIGHTER_MAGE)Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,RANGER)Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)Class(Player1,CLERIC_RANGER)~ THEN DO ~ClearAllActions() StartCutSceneMode()
StartCutScene("CB__6111")~ EXIT
IF ~ OR(3)Class(Player1,MAGE)Class(Player1,MAGE_THIEF)Class(Player1,SORCERER)~ THEN DO ~ClearAllActions() StartCutSceneMode()StartCutScene("CB__6211") ~ EXIT
IF ~ OR(2)Class(Player1,THIEF)Class(Player1,BARD) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6311") ~ EXIT
END

IF ~~ THEN BEGIN go86
SAY @36
IF ~  OR(4) Class(Player1,CLERIC) Class(Player1,DRUID) Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6002") ~ EXIT
IF ~ OR(10) Class(Player1,FIGHTER) Class(Player1,PALADIN)Class(Player1,FIGHTER_MAGE)Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)Class(Player1,CLERIC_RANGER) ~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("CB__6102") ~ EXIT
IF ~ OR(3) Class(Player1,MAGE)Class(Player1,MAGE_THIEF)Class(Player1,SORCERER)~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("CB__6202")~ EXIT
IF ~ OR(2) Class(Player1,THIEF)Class(Player1,BARD)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6302")~ EXIT
END

IF ~~ THEN BEGIN go87
SAY @36
IF ~ OR(4)Class(Player1,CLERIC) Class(Player1,DRUID) Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6012")~ EXIT
IF ~ OR(10) Class(Player1,FIGHTER) Class(Player1,PALADIN) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC) Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID) Class(Player1,FIGHTER_MAGE_CLERIC) Class(Player1,CLERIC_RANGER) ~ THEN DO ~ClearAllActions()StartCutSceneMode() StartCutScene("CB__6112") ~ EXIT
IF ~ OR(3) Class(Player1,MAGE) Class(Player1,MAGE_THIEF) Class(Player1,SORCERER)~ THEN DO ~ClearAllActions()  StartCutSceneMode()StartCutScene("CB__6212")~ EXIT
IF ~ OR(2) Class(Player1,THIEF) Class(Player1,BARD) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6312")~ EXIT
END

IF ~~ THEN BEGIN go88
SAY @36
IF ~ OR(4)Class(Player1,CLERIC)Class(Player1,DRUID) Class(Player1,CLERIC_MAGE)Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions()StartCutSceneMode() StartCutScene("CB__6003") ~ EXIT
IF ~ OR(10)Class(Player1,FIGHTER) Class(Player1,PALADIN) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF)Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC) Class(Player1,CLERIC_RANGER) ~ THEN DO ~ClearAllActions() StartCutSceneMode()
StartCutScene("CB__6103")~ EXIT
IF ~ OR(2)Class(Player1,THIEF)  Class(Player1,BARD) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6303") ~ EXIT
END

IF ~~ THEN BEGIN go89
SAY @36
IF ~ OR(4)Class(Player1,CLERIC) Class(Player1,DRUID)Class(Player1,CLERIC_MAGE)Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions()StartCutSceneMode() StartCutScene("CB__6013")~ EXIT
IF ~ OR(10)Class(Player1,FIGHTER)Class(Player1,PALADIN) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC) Class(Player1,CLERIC_RANGER) ~ THEN DO ~ClearAllActions()StartCutSceneMode()
StartCutScene("CB__6113") ~ EXIT
IF ~ OR(2)Class(Player1,THIEF) Class(Player1,BARD)~ THEN DO ~ClearAllActions() StartCutSceneMode()StartCutScene("CB__6313")~ EXIT
END

IF ~~ THEN BEGIN go90
SAY @36
IF ~ OR(4) Class(Player1,CLERIC)Class(Player1,DRUID) Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6004") ~ EXIT
IF ~ OR(10) Class(Player1,FIGHTER) Class(Player1,PALADIN) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC) Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF)Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID) Class(Player1,FIGHTER_MAGE_CLERIC)Class(Player1,CLERIC_RANGER)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6104") ~ EXIT
IF ~ OR(3) Class(Player1,MAGE) Class(Player1,MAGE_THIEF)Class(Player1,SORCERER) ~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("CB__6204")~ EXIT
IF ~ OR(2)Class(Player1,THIEF)Class(Player1,BARD) ~ THEN DO ~ClearAllActions()StartCutSceneMode() StartCutScene("CB__6304")~ EXIT
END

IF ~~ THEN BEGIN go91
SAY @36
IF ~ OR(4) Class(Player1,CLERIC)Class(Player1,DRUID) Class(Player1,CLERIC_MAGE)Class(Player1,CLERIC_THIEF) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6014")~ EXIT
IF ~ OR(10) Class(Player1,FIGHTER) Class(Player1,PALADIN) Class(Player1,FIGHTER_MAGE)Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF)  Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)Class(Player1,CLERIC_RANGER) ~ THEN DO ~ClearAllActions() StartCutSceneMode()
StartCutScene("CB__6114") ~ EXIT
IF ~ OR(3)Class(Player1,MAGE) Class(Player1,MAGE_THIEF)Class(Player1,SORCERER) ~ THEN DO ~ClearAllActions()StartCutSceneMode() StartCutScene("CB__6214") ~ EXIT
IF ~ OR(2) Class(Player1,THIEF) Class(Player1,BARD) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6314") ~ EXIT
END

IF ~~ THEN BEGIN go92
SAY @36
IF ~ OR(4)Class(Player1,CLERIC) Class(Player1,DRUID)Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions()StartCutSceneMode() StartCutScene("CB__6005") ~ EXIT
IF ~ OR(10)Class(Player1,FIGHTER) Class(Player1,PALADIN)Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF)Class(Player1,FIGHTER_MAGE_THIEF)Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)Class(Player1,CLERIC_RANGER)~ THEN DO ~ClearAllActions()StartCutSceneMode()
StartCutScene("CB__6105") ~ EXIT
IF ~ OR(3)Class(Player1,MAGE)Class(Player1,MAGE_THIEF)Class(Player1,SORCERER)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6205") ~ EXIT
IF ~ OR(2) Class(Player1,THIEF) Class(Player1,BARD)~ THEN DO ~ClearAllActions() StartCutSceneMode()StartCutScene("CB__6305")~ EXIT
END

IF ~~ THEN BEGIN go93
SAY @36
IF ~ OR(4)Class(Player1,CLERIC) Class(Player1,DRUID)Class(Player1,CLERIC_MAGE)Class(Player1,CLERIC_THIEF) ~ THEN DO ~ClearAllActions()StartCutSceneMode() StartCutScene("CB__6015")~ EXIT
IF ~ OR(10) Class(Player1,FIGHTER) Class(Player1,PALADIN) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC)Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,RANGER)  Class(Player1,FIGHTER_DRUID) Class(Player1,FIGHTER_MAGE_CLERIC) Class(Player1,CLERIC_RANGER) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6115") ~ EXIT
IF ~ OR(3)Class(Player1,MAGE) Class(Player1,MAGE_THIEF)Class(Player1,SORCERER) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6215")~ EXIT
IF ~ OR(2)Class(Player1,THIEF)Class(Player1,BARD) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6315")~ EXIT
END
