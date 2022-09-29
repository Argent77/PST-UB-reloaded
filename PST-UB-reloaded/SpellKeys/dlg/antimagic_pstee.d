// Fhjull's dialog additions
APPEND ~DFHJULL~
  IF ~~ DFHJULL.1
    SAY @51
    ++ @52 DO ~~ + DFHJULL.2
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
    + ~HasItem("BAATORSK",Myself)~ + @58 DO ~SetGlobal("A7_AntiMagicHelpFhjull","GLOBAL",1)~ + DFHJULL.5
    + ~!HasItem("BAATORSK",Myself)~ + @58 DO ~SetGlobal("A7_AntiMagicHelpFhjull","GLOBAL",1)~ + DFHJULL.6
    ++ #55803 + 46
    ++ #55804 EXIT
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
    ++ @114 + 2
    ++ @115 EXIT
  END

  IF ~~ DMENGINE.4
    SAY @110
    ++ @103 + DMENGINE.5
    ++ @114 + 2
    ++ @115 EXIT
  END

  IF ~~ DMENGINE.5
    SAY @111
    ++ @112 + DMENGINE.6
    ++ @114 + 2
    ++ @115 EXIT
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


// Pillar of Skulls dialog additions
APPEND ~DPILLAR~
  IF ~~ DPILLAR.1
    SAY @201
    + ~CheckStatGT(Protagonist,15,INT)~ + @202 + DPILLAR.2
    + ~!CheckStatGT(Protagonist,15,INT) CheckStatGT(Protagonist,17,WIS)~ + @202 + DPILLAR.2
    ++ #53555 DO ~AddexperienceParty(50000)~ JOURNAL @1540 + 12
    + ~NearbyDialog("Dmorte")~ + #53556 DO ~AddexperienceParty(50000)~ JOURNAL @1540 + 50
    + ~!NearbyDialog("Dmorte")~ + #53557 DO ~AddexperienceParty(50000)~ JOURNAL @1540 EXIT
  END

  IF ~~ DPILLAR.2
    SAY @203
    ++ @204 + DPILLAR.3
  END

  IF ~~ DPILLAR.3
    SAY @205
    ++ #53555 DO ~AddexperienceParty(75000)~ JOURNAL @1541 + 12
    + ~NearbyDialog("Dmorte")~ + #53556 DO ~AddexperienceParty(75000)~ JOURNAL @1541 + 50
    + ~!NearbyDialog("Dmorte")~ + #53557 DO ~AddexperienceParty(75000)~ JOURNAL @1541 EXIT
  END
END

EXTEND_BOTTOM ~DPILLAR~ 12 #2
  + ~Global("A7_AntiMagicHelpPillar","AR1001",0)
     OR(6)
       PartyHasItem("OUTLANSK")
       PartyHasItem("BAATORSK")
       PartyHasItem("LIMBOSK")
       !Global("A7_AntiMagicHelpKitla","GLOBAL",0)
       !Global("A7_AntiMagicHelpFhjull","GLOBAL",0)
       !Global("A7_AntiMagicHelpModrons","GLOBAL",0)~
    + @200 DO ~SetGlobal("A7_AntiMagicHelpPillar","AR1001",1)~ + 15
END

EXTEND_BOTTOM ~DPILLAR~ 29
  + ~Global("A7_AntiMagicHelpPillar","AR1001",1)~ + #53454 DO ~SetGlobal("A7_AntiMagicHelpPillar","AR1001",2)~ + DPILLAR.1
END


// Kitla (Cust Citizen) dialog additions
APPEND ~DKITLA~
  IF ~~ DKITLA.1
    SAY @251
    = @252
    ++ @253 + DKITLA.2
  END

  IF ~~ DKITLA.2
    SAY @254
    ++ #67752 DO ~AddexperienceParty(10000)~ JOURNAL @1550 EXIT
  END
END

// If TNO has the chance to as about becoming a Mage
EXTEND_BOTTOM ~DKITLA~ 14 15 16 #1
  + ~Global("A7_AntiMagicHelpKitla","GLOBAL",0) OR(2) Class(Protagonist,MAGE) Class(Protagonist,CLERIC)~
    + @250 DO ~SetGlobal("A7_AntiMagicHelpKitla","GLOBAL",1)~ + DKITLA.1
END

// After switching to Mage
EXTEND_TOP ~DKITLA~ 26
  + ~Global("A7_AntiMagicHelpKitla","GLOBAL",0)~
    + @250
    DO ~SetGlobal("A7_AntiMagicHelpKitla","GLOBAL",1)~ + DKITLA.1
END

// After learning the Art from Kitla
EXTEND_TOP ~DKITLA~ 37
  + ~Global("A7_AntiMagicHelpKitla","GLOBAL",0)~
    + @250
    DO ~SetGlobal("A7_AntiMagicHelpKitla","GLOBAL",1)
        SetNamelessClass(MAGE)
        GiveExperience(Protagonist,5000)
        GiveItemCreate("SPWI105",Protagonist,0,0,0)
        GiveItemCreate("SPWI502",Protagonist,0,0,0)
        GiveItemCreate("SPWI207",Protagonist,0,0,0)~ + DKITLA.1
END
