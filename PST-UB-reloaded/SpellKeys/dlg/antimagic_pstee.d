// Fhjull's dialog additions
APPEND ~DFHJULL~
  IF ~~ DFHJULL.1
    SAY @51
    ++ @52 DO ~SetGlobal("A7_AntiMagicHelpFhjull","GLOBAL",1)~ + DFHJULL.2
  END

  IF ~~ DFHJULL.2
    SAY @53
    ++ @54 + DFHJULL.3
  END

  IF ~~ DFHJULL.3
    SAY @55
    ++ @56 + DFHJULL.4
  END

  IF ~~ DFHJULL.4
    SAY @57
    + ~HasItem("BAATORSK",Myself)~ + @58 + DFHJULL.5
    + ~!HasItem("BAATORSK",Myself)~ + @58 + DFHJULL.6
  END

  IF ~~ DFHJULL.5
    SAY @59
    ++ #55783 DO ~GiveItem("BAATORSK",Protagonist) AddexperienceParty(10000)~ JOURNAL @1500 + 46
    ++ #56026 DO ~GiveItem("BAATORSK",Protagonist) AddexperienceParty(10000)~ JOURNAL @1500 EXIT
  END

  IF ~~ DFHJULL.6
    SAY @60
    = @61
    ++ #55783 JOURNAL @1500 + 46
    ++ #56026 JOURNAL @1500 EXIT
  END
END

EXTEND_BOTTOM ~DFHJULL~ 54 #2
  + ~Global("A7_AntiMagicHelpFhjull","GLOBAL",0) OR(2) Class(Protagonist,MAGE) Class(Protagonist,CLERIC)~
    + @50 + DFHJULL.1
  + ~Global("A7_AntiMagicHelpFhjull","GLOBAL",0) !Class(Protagonist,MAGE) !Class(Protagonist,CLERIC) CheckStatGT(Protagonist,15,INT)~
    + @50 + DFHJULL.1
END

EXTEND_BOTTOM ~DFHJULL~ 70 #2
  + ~Global("Portal_Open","GLOBAL",1) Global("A7_AntiMagicHelpFhjull","GLOBAL",0) OR(2) Class(Protagonist,MAGE) Class(Protagonist,CLERIC)~
    + @50 + DFHJULL.1
  + ~Global("Portal_Open","GLOBAL",1) Global("A7_AntiMagicHelpFhjull","GLOBAL",0) !Class(Protagonist,MAGE) !Class(Protagonist,CLERIC) CheckStatGT(Protagonist,15,INT)~
    + @50 + DFHJULL.1
END


// Dialog additions for Kyse, the Dump Caretaker in Curst
ADD_TRANS_ACTION ~DCARETKR~ BEGIN 4 END BEGIN 0 END ~SetGlobal("A7_AntiMagicHelpKyse","GLOBAL",1) GiveItem("CARCERSK",Protagonist)~
ALTER_TRANS ~DCARETKR~ BEGIN 4 END BEGIN 0 END BEGIN "JOURNAL" ~@1510~ END


// Deionarra dialog additions
APPEND ~DDEIONS~
  IF ~~ DDEIONS.1
    SAY @0
    IF ~~ DO ~SetGlobal("A7_AntiMagicHelpFortress","GLOBAL",1)~ JOURNAL @1520 + 70
  END
END

EXTEND_BOTTOM ~DDEIONS~ 75
  // IF ~Global("A7_AntiMagicHelpFortress","GLOBAL",0) OR(2) Class(Protagonist,MAGE) Class(Protagonist,CLERIC)~ + DDEIONS.1
  IF ~Global("A7_AntiMagicHelpFortress","GLOBAL",0)~ + DDEIONS.1
END


// Hidden Stash dialog (AR1201)
BEGIN ~1201SK1~

IF ~True()~ 1201sk1.1
  SAY @501
  ++ @502 + 1201sk1.2
  ++ @503 EXIT
END

IF ~~ 1201sk1.2
  SAY @504
  IF ~~ DO ~TriggerActivation("A7_Stash_Trigger",FALSE) ContainerEnable("A7_Stash",TRUE)~ EXIT
END


// Modron Engineer dialog additions
APPEND ~DMENGINE~
  IF ~~ DMENGINE.0
    SAY @102
    ++ @103 + DMENGINE.5
  END

  IF ~~ DMENGINE.1
    SAY @104
    ++ @105 + DMENGINE.2
  END

  IF ~~ DMENGINE.2
    SAY @106
    ++ @107 + DMENGINE.3
  END

  IF ~~ DMENGINE.3
    SAY @108
    ++ @109 + DMENGINE.4
  END

  IF ~~ DMENGINE.4
    SAY @110
    ++ @103 + DMENGINE.5
  END

  IF ~~ DMENGINE.5
    SAY @111
    ++ @112 + DMENGINE.6
  END

  IF ~~ DMENGINE.6
    SAY @113
    ++ #66396 DO ~SetGlobal("A7_AntiMagicHelpModrons","GLOBAL",1)~ + 2
    ++ #66397 DO ~SetGlobal("A7_AntiMagicHelpModrons","GLOBAL",1)~ EXIT
  END
END

EXTEND_BOTTOM ~DMENGINE~ 2 #1
  // Spell Keys are known to TNO already
  + ~Global("Rubikon_Direct","GLOBAL",3)
     OR(2) !Global("A7_AntiMagicHelpFhjull","GLOBAL",0) !Global("A7_AntiMagicHelpKyse","GLOBAL",0)
     Global("A7_AntiMagicHelpModrons","GLOBAL",0) OR(2) Class(Protagonist,MAGE) Class(Protagonist,CLERIC)~
    + @100 + DMENGINE.0
  + ~Global("Rubikon_Direct","GLOBAL",3)
     OR(2) !Global("A7_AntiMagicHelpFhjull","GLOBAL",0) !Global("A7_AntiMagicHelpKyse","GLOBAL",0)
     Global("A7_AntiMagicHelpModrons","GLOBAL",0) !Class(Protagonist,MAGE) !Class(Protagonist,CLERIC) CheckStatGT(Protagonist,15,INT)~
    + @100 + DMENGINE.0
  // Spell Keys are unknown to TNO
  + ~Global("Rubikon_Direct","GLOBAL",3)
     Global("A7_AntiMagicHelpFhjull","GLOBAL",0) Global("A7_AntiMagicHelpKyse","GLOBAL",0)
     Global("A7_AntiMagicHelpModrons","GLOBAL",0) OR(2) Class(Protagonist,MAGE) Class(Protagonist,CLERIC)~
    + @101 + DMENGINE.1
END


// Welcoming Modron dialog additions
APPEND ~DMAJORD~
  IF ~~ DMAJORD.1
    SAY @151
    ++ @152 DO ~SetGlobal("A7_AntiMagicHelpModrons","GLOBAL",2) GiveItem("LIMBOSK",Protagonist)~ EXIT
  END
END

EXTEND_BOTTOM ~DMAJORD~ 1 #1
  + ~Global("A7_AntiMagicHelpModrons","GLOBAL",1)~ + @150 + DMAJORD.1
END
