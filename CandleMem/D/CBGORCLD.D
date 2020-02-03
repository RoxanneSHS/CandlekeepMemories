BEGIN ~CBGORCLD~

IF ~  NumTimesTalkedTo(0)~ THEN BEGIN go0
  SAY ~Child?  Is everything all right?  I thought you would have been out and about long ago.~
  IF ~~ THEN REPLY ~Of course, Father.  Everything is fine.~ GOTO go12
  IF ~~ THEN REPLY ~I was just going outside to find Imoen.~ GOTO go11
END

IF ~~ THEN BEGIN go11
  SAY ~My <PRO_GIRLBOY>, you know better than to bother Imoen while she is at study and doing her chores.~
  IF ~~ THEN GOTO go12
END

IF ~~ THEN BEGIN go12
  SAY ~Child, you know that it's your responsibility to help out around the Keep.  I don't ask much of you, <CHARNAME>, but when I do expect you to do something, it would be best for you to give your best in performing whatever tasks need to be done.~
IF ~~ THEN REPLY ~No, Father, I haven't even started.~GOTO go16
IF ~~ THEN REPLY ~I haven't finished today's chores, Father.~ GOTO go16
  IF ~~ THEN REPLY ~Yes, Father, I am done my chores.  Can I go play with Imoen now?~ GOTO go20
  IF ~~ THEN REPLY ~Sorry to bother you, Father.  I've got things to do.~ GOTO go18
  IF ~~ THEN REPLY ~Father, please no speeches. I'm fairly certain my life is going to be difficult enough. Could we just skip the lectures and chores and go straight to the highlights?~ GOTO go94
END

IF ~~ THEN BEGIN go16
SAY ~You should be getting along with your chores, young <CHARNAME>.~
IF ~~ THEN REPLY ~Father, please no speeches. I'm fairly certain my life is going to be difficult enough. Could we just skip the lectures and chores and go straight to the highlights?~ GOTO go94
END

IF ~~ THEN BEGIN go18
SAY ~I am glad to hear that, my <PRO_SONDAUGHTER>.~
IF ~~ THEN REPLY ~Father, please no speeches. I'm fairly certain my life is going to be difficult enough. Could we just skip the lectures and chores and go straight to the highlights?~ GOTO go94
END

IF ~~ THEN BEGIN go20
SAY~<CHARNAME>, you may play with Imoen if you wish, but I thought you would rather learn something new.~
IF ~~ THEN REPLY ~Father, please no speeches. I'm fairly certain my life is going to be difficult enough. Could we just skip the lectures and chores and go straight to the highlights?~ GOTO go94
END

IF ~~ THEN BEGIN go94
SAY ~My <PRO_SONDAUGHTER> how dare you! Chores and lectures build character that will be valuable in your future... Ah, to hell with it~
IF ~~ THEN REPLY ~*Whew*~ GOTO go95
END

IF ~~ THEN BEGIN go95
SAY ~Do you want to know how to cast Dispel Magic, or Protection from Evil?~
IF ~~ THEN REPLY~Dispel Magic.~ DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPIN112")) ~ GOTO go96
IF ~~ THEN REPLY ~Protection from Evil.~ DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPIN121")) ~ GOTO go96
END

IF ~~ THEN BEGIN go96
SAY ~Do you want the skill Hardiness or Tracking?~
IF ~~ THEN REPLY ~Hardiness~ DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPCL907"))~ GOTO go97
IF ~~ THEN REPLY ~Tracking~ ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPCL922"))~ GOTO go97
END

IF ~~ THEN BEGIN go97
SAY ~Do you want the skill of Alchemy or ScribeScrolls?~
IF ~~ THEN REPLY ~Alchemy~ DO ~AddXPObject(Player1,1000)
ForceSpellRES("CBTETTCH",Player1) ~ GOTO go98
IF ~~ THEN REPLY~ScribeScrolls~ DO ~AddXPObject(Player1,1000)
ForceSpellRES("CBPHYTCH",Player1) ~ GOTO go98
END

IF ~~ THEN BEGIN go98
SAY ~Do you want the skill of Defensive Spin or Offensive Spin?~
IF ~~ THEN REPLY ~Defensive Spin~ ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPCL522"))~ GOTO go99
IF ~~ THEN REPLY~Offensive Spin~ DO ~AddXPObject(Player1,1000)
ActionOverride(Player1,AddSpecialAbility("SPCL521")) ~ GOTO go99
END

IF ~~ THEN BEGIN go99
SAY ~Do you want the Boon of Lathander?~
IF ~~ THEN REPLY ~Yes.~DO~SetGlobal("CbPlayerBlessedByLathander","GLOBAL",1)
AddXPObject(Player1,1000) ActionOverride(Player1,AddSpecialAbility("spcl741"))~ GOTO go100
IF ~~ THEN REPLY ~No.~ DO ~AddXPObject(Player1,2000)~ GOTO go100
END

IF ~~ THEN BEGIN go100
SAY ~Done then. Time then to end your childhood reminisces.~
IF ~~ THEN DO ~SetGlobal("CbGorionTeachesLesson","GLOBAL",6)
~ EXIT
END


IF ~  Global("CbGorionTeachesLesson","GLOBAL",6)~ THEN BEGIN go75
SAY ~My child, I am immensly proud of what a young <PRO_MANWOMAN> you are becoming.  It will not be long before I must cease calling you child.  You are growing faster than I would like.~
IF ~  Global("CbPlayerBlessedByLathander","GLOBAL",0) ~ THEN GOTO go76
IF ~  Global("CbPlayerBlessedByLathander","GLOBAL",1) ~ THEN GOTO go78
END

IF ~~ THEN BEGIN go76
SAY ~Sometimes, you do not do the things that I wish, but that is part of your youth.  You may find that you outgrow it and begin to accomidate the wishes and desires of others.~
=~No matter what you do, how you disappoint me, <CHARNAME>, I will always love you.  Know that as you grow into your prime, as you truly become a <PRO_MANWOMAN>.~
  IF ~  Gender(Player1,MALE) ~ THEN GOTO go80
  IF ~  Gender(Player1,FEMALE)~ THEN GOTO go81
END

IF ~~ THEN BEGIN go78
SAY ~Most pleasing to me is the fact that you always try to accomidate the wishes and desires of those who care for you, and who love you.~
= ~<CHARNAME>, I will always love you.  Know that as you grow into your prime, as you truly become a <PRO_MANWOMAN>.  ~
  IF ~  Gender(Player1,MALE)  ~ THEN GOTO go80
  IF ~  Gender(Player1,FEMALE)~ THEN GOTO go81
END

IF ~~ THEN BEGIN go80
SAY ~But we will continue your studies and lessons another day.  This day is done, and you should retire upstairs for the evening.~
IF ~  Race(Player1,HUMAN)~ THEN GOTO go82
IF ~  OR(2) Race(Player1,ELF)Race(Player1,HALF_ELF)~ THEN GOTO go84
IF ~  Race(Player1,DWARF) ~ THEN GOTO go86
IF ~  Race(Player1,HALFLING) ~ THEN GOTO go88
IF ~  Race(Player1,GNOME)~ THEN GOTO go90
IF ~  Race(Player1,HALFORC) ~ THEN GOTO go92
END

IF ~~ THEN BEGIN go81
SAY ~But we will continue your studies and lessons another day.  This day is done, and you should retire upstairs for the evening.~
IF ~  Race(Player1,HUMAN)~ THEN GOTO go83
IF ~  OR(2)Race(Player1,ELF)Race(Player1,HALF_ELF)~ THEN GOTO go85
IF ~  Race(Player1,DWARF) ~ THEN GOTO go87
IF ~  Race(Player1,HALFLING)~ THEN GOTO go89
IF ~  Race(Player1,GNOME)~ THEN GOTO go91
IF ~  Race(Player1,HALFORC) ~ THEN GOTO go93
END

IF ~~ THEN BEGIN go82
SAY ~I wish you a pleasant night, my <PRO_SONDAUGHTER>, and may the dreams you dream tonight come true.~
IF ~  OR(4) Class(Player1,CLERIC) Class(Player1,DRUID) Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6000")~ EXIT
IF ~  OR(10) Class(Player1,FIGHTER)Class(Player1,PALADIN) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC) Class(Player1,FIGHTER_THIEF)  Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID) Class(Player1,FIGHTER_MAGE_CLERIC) Class(Player1,CLERIC_RANGER) ~ THEN DO ~ClearAllActions() StartCutSceneMode()StartCutScene("CB__6100")~ EXIT
IF ~  OR(3) Class(Player1,MAGE) Class(Player1,MAGE_THIEF) Class(Player1,SORCERER) Gender(Player1,MALE)Race(Player1,HUMAN) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutSceneEx("CB__6200",FALSE) ~ EXIT
IF ~  OR(2) Class(Player1,THIEF) Class(Player1,BARD) Gender(Player1,MALE) Race(Player1,HUMAN)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6300")~ EXIT
IF ~  Class(Player1,MONK) Gender(Player1,MALE) ~ THEN DO ~ClearAllActions() StartCutSceneMode()StartCutScene("CB__6500")~ EXIT
END

IF ~~ THEN BEGIN go83
SAY ~I wish you a pleasant night, my <PRO_SONDAUGHTER>, and may the dreams you dream tonight come true.~
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
SAY ~But we will continue your studies and lessons another day.  This day is done, and you should retire upstairs for the evening.~
IF ~  OR(4)Class(Player1,CLERIC)Class(Player1,DRUID)Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF) ~ THEN DO ~ClearAllActions() StartCutSceneMode()StartCutScene("CB__6001")~ EXIT
IF ~OR(10)Class(Player1,FIGHTER)Class(Player1,PALADIN)Class(Player1,FIGHTER_MAGE)Class(Player1,FIGHTER_CLERIC)Class(Player1,FIGHTER_THIEF)Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)Class(Player1,CLERIC_RANGER) ~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("CB__6101") ~ EXIT
IF ~ OR(3)Class(Player1,MAGE)Class(Player1,MAGE_THIEF)Class(Player1,SORCERER)~ THEN DO ~ClearAllActions() StartCutSceneMode()StartCutScene("CB__6201") ~ EXIT
IF ~ OR(2)Class(Player1,THIEF)Class(Player1,BARD)~ THEN DO ~ClearAllActions() StartCutSceneMode()StartCutScene("CB__6301") ~ EXIT
END

IF ~~ THEN BEGIN go85
SAY ~But we will continue your studies and lessons another day.  This day is done, and you should retire upstairs for the evening.~
IF ~ OR(4)Class(Player1,CLERIC) Class(Player1,DRUID) Class(Player1,CLERIC_MAGE)Class(Player1,CLERIC_THIEF) ~ THEN DO ~ClearAllActions()StartCutSceneMode() StartCutScene("CB__6011")~ EXIT
IF ~ OR(10)Class(Player1,FIGHTER)Class(Player1,PALADIN)Class(Player1,FIGHTER_MAGE)Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,RANGER)Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)Class(Player1,CLERIC_RANGER)~ THEN DO ~ClearAllActions() StartCutSceneMode()
StartCutScene("CB__6111")~ EXIT
IF ~ OR(3)Class(Player1,MAGE)Class(Player1,MAGE_THIEF)Class(Player1,SORCERER)~ THEN DO ~ClearAllActions() StartCutSceneMode()StartCutScene("CB__6211") ~ EXIT
IF ~ OR(2)Class(Player1,THIEF)Class(Player1,BARD) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6311") ~ EXIT
END

IF ~~ THEN BEGIN go86
SAY ~But we will continue your studies and lessons another day.  This day is done, and you should retire upstairs for the evening.~
IF ~  OR(4) Class(Player1,CLERIC) Class(Player1,DRUID) Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6002") ~ EXIT
IF ~ OR(10) Class(Player1,FIGHTER) Class(Player1,PALADIN)Class(Player1,FIGHTER_MAGE)Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)Class(Player1,CLERIC_RANGER) ~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("CB__6102") ~ EXIT
IF ~ OR(3) Class(Player1,MAGE)Class(Player1,MAGE_THIEF)Class(Player1,SORCERER)~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("CB__6202")~ EXIT
IF ~ OR(2) Class(Player1,THIEF)Class(Player1,BARD)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6302")~ EXIT
END

IF ~~ THEN BEGIN go87
SAY ~But we will continue your studies and lessons another day.  This day is done, and you should retire upstairs for the evening.~
IF ~ OR(4)Class(Player1,CLERIC) Class(Player1,DRUID) Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6012")~ EXIT
IF ~ OR(10) Class(Player1,FIGHTER) Class(Player1,PALADIN) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC) Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID) Class(Player1,FIGHTER_MAGE_CLERIC) Class(Player1,CLERIC_RANGER) ~ THEN DO ~ClearAllActions()StartCutSceneMode() StartCutScene("CB__6112") ~ EXIT
IF ~ OR(3) Class(Player1,MAGE) Class(Player1,MAGE_THIEF) Class(Player1,SORCERER)~ THEN DO ~ClearAllActions()  StartCutSceneMode()StartCutScene("CB__6212")~ EXIT
IF ~ OR(2) Class(Player1,THIEF) Class(Player1,BARD) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6312")~ EXIT
END

IF ~~ THEN BEGIN go88
SAY ~But we will continue your studies and lessons another day.  This day is done, and you should retire upstairs for the evening.~
IF ~ OR(4)Class(Player1,CLERIC)Class(Player1,DRUID) Class(Player1,CLERIC_MAGE)Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions()StartCutSceneMode() StartCutScene("CB__6003") ~ EXIT
IF ~ OR(10)Class(Player1,FIGHTER) Class(Player1,PALADIN) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF)Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC) Class(Player1,CLERIC_RANGER) ~ THEN DO ~ClearAllActions() StartCutSceneMode()
StartCutScene("CB__6103")~ EXIT
IF ~ OR(2)Class(Player1,THIEF)  Class(Player1,BARD) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6303") ~ EXIT
END

IF ~~ THEN BEGIN go89
SAY ~But we will continue your studies and lessons another day.  This day is done, and you should retire upstairs for the evening.~
IF ~ OR(4)Class(Player1,CLERIC) Class(Player1,DRUID)Class(Player1,CLERIC_MAGE)Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions()StartCutSceneMode() StartCutScene("CB__6013")~ EXIT
IF ~ OR(10)Class(Player1,FIGHTER)Class(Player1,PALADIN) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC) Class(Player1,CLERIC_RANGER) ~ THEN DO ~ClearAllActions()StartCutSceneMode()
StartCutScene("CB__6113") ~ EXIT
IF ~ OR(2)Class(Player1,THIEF) Class(Player1,BARD)~ THEN DO ~ClearAllActions() StartCutSceneMode()StartCutScene("CB__6313")~ EXIT
END

IF ~~ THEN BEGIN go90
SAY ~But we will continue your studies and lessons another day.  This day is done, and you should retire upstairs for the evening.~
IF ~ OR(4) Class(Player1,CLERIC)Class(Player1,DRUID) Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6004") ~ EXIT
IF ~ OR(10) Class(Player1,FIGHTER) Class(Player1,PALADIN) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC) Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF)Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID) Class(Player1,FIGHTER_MAGE_CLERIC)Class(Player1,CLERIC_RANGER)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6104") ~ EXIT
IF ~ OR(3) Class(Player1,MAGE) Class(Player1,MAGE_THIEF)Class(Player1,SORCERER) ~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("CB__6204")~ EXIT
IF ~ OR(2)Class(Player1,THIEF)Class(Player1,BARD) ~ THEN DO ~ClearAllActions()StartCutSceneMode() StartCutScene("CB__6304")~ EXIT
END

IF ~~ THEN BEGIN go91
SAY ~But we will continue your studies and lessons another day.  This day is done, and you should retire upstairs for the evening.~
IF ~ OR(4) Class(Player1,CLERIC)Class(Player1,DRUID) Class(Player1,CLERIC_MAGE)Class(Player1,CLERIC_THIEF) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6014")~ EXIT
IF ~ OR(10) Class(Player1,FIGHTER) Class(Player1,PALADIN) Class(Player1,FIGHTER_MAGE)Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF)  Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)Class(Player1,CLERIC_RANGER) ~ THEN DO ~ClearAllActions() StartCutSceneMode()
StartCutScene("CB__6114") ~ EXIT
IF ~ OR(3)Class(Player1,MAGE) Class(Player1,MAGE_THIEF)Class(Player1,SORCERER) ~ THEN DO ~ClearAllActions()StartCutSceneMode() StartCutScene("CB__6214") ~ EXIT
IF ~ OR(2) Class(Player1,THIEF) Class(Player1,BARD) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6314") ~ EXIT
END

IF ~~ THEN BEGIN go92
SAY ~But we will continue your studies and lessons another day.  This day is done, and you should retire upstairs for the evening.~
IF ~ OR(4)Class(Player1,CLERIC) Class(Player1,DRUID)Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF)~ THEN DO ~ClearAllActions()StartCutSceneMode() StartCutScene("CB__6005") ~ EXIT
IF ~ OR(10)Class(Player1,FIGHTER) Class(Player1,PALADIN)Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF)Class(Player1,FIGHTER_MAGE_THIEF)Class(Player1,RANGER) Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)Class(Player1,CLERIC_RANGER)~ THEN DO ~ClearAllActions()StartCutSceneMode()
StartCutScene("CB__6105") ~ EXIT
IF ~ OR(3)Class(Player1,MAGE)Class(Player1,MAGE_THIEF)Class(Player1,SORCERER)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6205") ~ EXIT
IF ~ OR(2) Class(Player1,THIEF) Class(Player1,BARD)~ THEN DO ~ClearAllActions() StartCutSceneMode()StartCutScene("CB__6305")~ EXIT
END

IF ~~ THEN BEGIN go93
SAY ~But we will continue your studies and lessons another day.  This day is done, and you should retire upstairs for the evening.~
IF ~ OR(4)Class(Player1,CLERIC) Class(Player1,DRUID)Class(Player1,CLERIC_MAGE)Class(Player1,CLERIC_THIEF) ~ THEN DO ~ClearAllActions()StartCutSceneMode() StartCutScene("CB__6015")~ EXIT
IF ~ OR(10) Class(Player1,FIGHTER) Class(Player1,PALADIN) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC)Class(Player1,FIGHTER_THIEF) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,RANGER)  Class(Player1,FIGHTER_DRUID) Class(Player1,FIGHTER_MAGE_CLERIC) Class(Player1,CLERIC_RANGER) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6115") ~ EXIT
IF ~ OR(3)Class(Player1,MAGE) Class(Player1,MAGE_THIEF)Class(Player1,SORCERER) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6215")~ EXIT
IF ~ OR(2)Class(Player1,THIEF)Class(Player1,BARD) ~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("CB__6315")~ EXIT
END
