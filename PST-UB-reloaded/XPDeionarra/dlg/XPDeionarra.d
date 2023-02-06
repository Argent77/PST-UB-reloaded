ALTER_TRANS DMEBBETH BEGIN 137 END BEGIN 0 END BEGIN "REPLY" ~@1~ END
ALTER_TRANS DMEBBETH BEGIN 137 END BEGIN 0 END BEGIN "JOURNAL" ~@150~ END
ADD_TRANS_ACTION DMEBBETH BEGIN 131 END BEGIN 0 1 END ~SetGlobal("Ravel_Kesai_Regret","GLOBAL",1)~

EXTEND_TOP DKESAI 66 67 68
  IF ~Global("Ravel_Kesai_Regret","GLOBAL",1) Global("Kesai_Dream_Quest","GLOBAL",0)~ THEN REPLY @2 GOTO Ravel-Death-1
  IF ~Global("Kesai_Dream_Quest","GLOBAL",1)~ THEN REPLY @121 GOTO Ravel-Death-3
  IF ~Global("Kesai_Dream_Quest","GLOBAL",2) Global("AR3017_Visited","GLOBAL",1)~ THEN REPLY @52 GOTO DreamBuilt-1
  IF ~Global("Kesai_Dream_Quest","GLOBAL",8)~ THEN REPLY @137 DO ~SetGlobal("Kesai_Dream_Quest","GLOBAL",3)~ GOTO Ravel-Death-23
  IF ~!GlobalTimerExpired("Kesai_Timer","GLOBAL") Global("Kesai_Dream_Quest","GLOBAL",3)~ THEN REPLY @53 GOTO DreamBuilt-2
END

ADD_TRANS_ACTION DKESAI BEGIN 4 END BEGIN 1 END ~IncrementGlobal("Kesai_Attracted","GLOBAL",1)~
ADD_TRANS_ACTION DKESAI BEGIN 33 END BEGIN 0 1 END ~IncrementGlobal("Kesai_Attracted","GLOBAL",1)~
ADD_TRANS_ACTION DKESAI BEGIN 57 END BEGIN 1 END ~IncrementGlobal("Kesai_Attracted","GLOBAL",1)~
ADD_TRANS_ACTION DKESAI BEGIN 57 END BEGIN 2 END ~IncrementGlobal("Kesai_Attracted","GLOBAL",2)~

APPEND DKESAI

  IF ~~ THEN BEGIN Ravel-Death-1
    SAY @3
    IF ~~ THEN REPLY @4 DO ~SetGlobal("Kesai_Dream_Quest","GLOBAL",1)~ GOTO Ravel-Death-2
    IF ~~ THEN REPLY @5 EXIT
  END

  IF ~~ THEN BEGIN Ravel-Death-2
    SAY @6
    IF ~~ THEN REPLY @7 GOTO Ravel-Death-3
    IF ~~ THEN REPLY @8 GOTO Ravel-Death-3
    IF ~~ THEN REPLY @9 GOTO Ravel-Death-3
  END

  IF ~~ THEN BEGIN Ravel-Death-3
    SAY @10
    IF ~~ THEN REPLY @11 GOTO Ravel-Death-4
    IF ~~ THEN REPLY @12 EXIT
  END

  IF ~~ THEN BEGIN Ravel-Death-4
    SAY @13
    IF ~~ THEN REPLY @14 GOTO Ravel-Death-5
  END

  IF ~~ THEN BEGIN Ravel-Death-5
    SAY @15
    IF ~~ THEN REPLY @16 GOTO Ravel-Death-6
  END

  IF ~~ THEN BEGIN Ravel-Death-6
    SAY @17
    IF ~~ THEN REPLY @18 GOTO Ravel-Death-7
  END

  IF ~~ THEN BEGIN Ravel-Death-7
    SAY @19
    IF ~~ THEN REPLY @20 GOTO Ravel-Death-8
  END

  IF ~~ THEN BEGIN Ravel-Death-8
    SAY @21
    IF ~~ THEN REPLY @22 GOTO Ravel-Death-9
  END

  IF ~~ THEN BEGIN Ravel-Death-9
    SAY @23
    IF ~~ THEN REPLY @24 GOTO Ravel-Death-10
  END

  IF ~~ THEN BEGIN Ravel-Death-10
    SAY @25
    IF ~~ THEN REPLY #41052 GOTO Ravel-Death-13
    IF ~~ THEN REPLY #41053 GOTO Ravel-Death-11
  END

  IF ~~ THEN BEGIN Ravel-Death-11
    SAY @26
    IF ~~ THEN REPLY #41052 GOTO Ravel-Death-13
    IF ~~ THEN REPLY #41053 GOTO Ravel-Death-12
  END

  IF ~~ THEN BEGIN Ravel-Death-12
    SAY @27
    IF ~~ THEN GOTO Ravel-Death-13
  END

  IF ~~ THEN BEGIN Ravel-Death-13
    SAY @28
    IF ~Global("Ravel_Death_Kiss","GLOBAL",0)~ THEN REPLY @29 GOTO Ravel-Death-14
    IF ~Global("Ravel_Death_Kiss","GLOBAL",0)~ THEN REPLY @30 GOTO Ravel-Death-14
    IF ~Global("Ravel_Death_Kiss","GLOBAL",1)~ THEN REPLY @29 GOTO Ravel-Death-15
    IF ~Global("Ravel_Death_Kiss","GLOBAL",1)~ THEN REPLY @30 GOTO Ravel-Death-15
  END

  IF ~~ THEN BEGIN Ravel-Death-14
    SAY @31
    IF ~~ THEN DO ~SetGlobal("Kesai_Dream_Quest","GLOBAL",9)~ EXIT
  END

  IF ~~ THEN BEGIN Ravel-Death-15
    SAY @32
    IF ~~ THEN REPLY @33 GOTO Ravel-Death-16
  END

  IF ~~ THEN BEGIN Ravel-Death-16
    SAY @34
    IF ~Global("Dream","GLOBAL",0)~ THEN REPLY @35 JOURNAL @151 GOTO Ravel-Death-17
    IF ~GlobalGT("Dream","GLOBAL",0) Global("AR3017_Visited","GLOBAL",0)~ THEN REPLY @36 JOURNAL @152 GOTO Ravel-Death-18
    IF ~Global("AR3017_Visited","GLOBAL",1)~ THEN REPLY @37 JOURNAL @153 GOTO Ravel-Death-19
  END



  IF ~~ THEN BEGIN Ravel-Death-17
    SAY @38
    IF ~~ THEN REPLY @40 DO ~SetGlobal("Kesai_Dream_Quest","GLOBAL",2)~ EXIT
  END

  IF ~~ THEN BEGIN Ravel-Death-18
    SAY @39
    IF ~~ THEN REPLY @40 DO ~SetGlobal("Kesai_Dream_Quest","GLOBAL",2)~ EXIT
  END

  IF ~~ THEN BEGIN Ravel-Death-19
    SAY @41
    IF ~~ THEN DO ~SetGlobal("Kesai_Dream_Quest","GLOBAL",3)~ GOTO Ravel-Death-20
  END

  IF ~~ THEN BEGIN Ravel-Death-20
    SAY @42
    IF ~~ THEN JOURNAL @154 GOTO Ravel-Death-21
  END

  IF ~~ THEN BEGIN Ravel-Death-21
    SAY @43
    IF ~CheckStatLT(Protagonist,14,CHR)~ THEN REPLY @44 GOTO Ravel-Death-23
    IF ~CheckStatGT(Protagonist,13,CHR) CheckStatLT(Protagonist,18,CHR)~ THEN REPLY @44 DO ~IncrementGlobal("Kesai_Attracted","GLOBAL",1)~ GOTO Ravel-Death-22
    IF ~CheckStatGT(Protagonist,17,CHR)~ THEN REPLY @44 DO ~IncrementGlobal("Kesai_Attracted","GLOBAL",2)~ GOTO Ravel-Death-22
    IF ~~ THEN REPLY @45 GOTO Ravel-Death-23
    IF ~~ THEN REPLY @46 DO ~SetGlobal("Kesai_Dream_Quest","GLOBAL",8)~ GOTO Ravel-Death-24
    IF ~~ THEN REPLY @47 GOTO Ravel-Death-25
  END

  IF ~~ THEN BEGIN Ravel-Death-22
    SAY @48
    IF ~NearbyDialog("DANNAH")~ THEN EXTERN DANNAH Kesai-Jealous-1
    IF ~NearbyDialog("DGRACE") !NearbyDialog("DANNAH")~ THEN EXTERN DGRACE Kesai-Jealous-2
    IF ~!NearbyDialog("DANNAH") !NearbyDialog("DGRACE")~ THEN GOTO Ravel-Death-23
  END

  IF ~~ THEN BEGIN Ravel-Death-23
    SAY @51
    IF ~~ THEN DO ~%sc_set_global_timer%("Kesai_Timer","GLOBAL",%sc_timer_7200%)~ EXIT
  END

  IF ~~ THEN BEGIN Ravel-Death-24
    SAY @67
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN Ravel-Death-25
    SAY @131
    IF ~~ THEN DO ~SetGlobal("Kesai_Dream_Quest","GLOBAL",9)~ EXIT
  END

  IF ~~ THEN BEGIN DreamBuilt-1
    SAY @123
    IF ~~ THEN REPLY @124 GOTO Ravel-Death-19
    IF ~~ THEN REPLY @125 GOTO Ravel-Death-19
  END

  IF ~~ THEN BEGIN DreamBuilt-2
    SAY @54
    IF ~~ THEN EXIT
  END

  IF WEIGHT #-100 ~Global("Kesai_Dream_Quest","GLOBAL",9)~ THEN BEGIN Kesai-Leave
    SAY @136
    IF ~~ THEN EXIT
  END

  IF WEIGHT #-99 ~GlobalTimerExpired("Kesai_Timer","GLOBAL") Global("Kesai_Dream_Quest","GLOBAL",3) NearbyDialog("DMORTE")~ THEN BEGIN Kesai-Dream-1
    SAY @55
    IF ~~ THEN DO ~SetGlobal("Kesai_Dream_Quest","GLOBAL",4)~ EXTERN DMORTE Kesai-Morte-1
  END

  IF WEIGHT #-98 ~GlobalTimerExpired("Kesai_Timer","GLOBAL") Global("Kesai_Dream_Quest","GLOBAL",3) !NearbyDialog("DMORTE")~ THEN BEGIN Kesai-Dream-2
    SAY @55
    IF ~~ THEN REPLY @59 DO ~SetGlobal("Kesai_Dream_Quest","GLOBAL",4)~ GOTO Kesai-Dream-3
    IF ~~ THEN REPLY @61 DO ~SetGlobal("Kesai_Dream_Quest","GLOBAL",4)~ GOTO Kesai-Dream-3
  END

  IF WEIGHT #-97 ~Global("Kesai_Dream_Quest","GLOBAL",4)~ THEN BEGIN Kesai-Dream-6
    SAY @138
    IF ~~ THEN REPLY @137 DO ~%sc_fadetoblack% Wait(3) SetGlobal("Kesai_Dream_Quest","GLOBAL",5) DestroySelf() TeleportParty("AR0502",[502.1673],8)~ EXIT
    IF ~~ THEN REPLY @126 GOTO Ravel-Death-24
  END

  IF ~~ THEN BEGIN Kesai-Dream-3
    SAY @57
    IF ~NearbyDialog("DMORTE")~ THEN REPLY @58 EXTERN DMORTE Kesai-Morte-2
    IF ~NearbyDialog("DMORTE")~ THEN REPLY @60 EXTERN DMORTE Kesai-Morte-2
    IF ~!NearbyDialog("DMORTE")~ THEN REPLY @60 GOTO Kesai-Dream-4
    IF ~!NearbyDialog("DMORTE")~ THEN REPLY @127 GOTO Kesai-Dream-4
  END

  IF ~~ THEN BEGIN Kesai-Dream-4
    SAY @63
    IF ~~ THEN REPLY @64 DO ~%sc_fadetoblack% Wait(3) SetGlobal("Kesai_Dream_Quest","GLOBAL",5) DestroySelf() TeleportParty("AR0502",[502.1673],8)~ EXIT
    IF ~~ THEN REPLY @65 DO ~%sc_fadetoblack% Wait(3) SetGlobal("Kesai_Dream_Quest","GLOBAL",5) DestroySelf() TeleportParty("AR0502",[502.1673],8)~ EXIT
    IF ~~ THEN REPLY @66 GOTO Ravel-Death-24
    IF ~~ THEN REPLY @126 EXIT
  END

  IF ~~ THEN BEGIN Kesai-Dream-5
    SAY @131
    IF ~~ THEN REPLY @132 DO ~SetGlobal("Kesai_Dream_Quest","GLOBAL",9) Enemy() Help()~ EXIT
    IF ~~ THEN REPLY @133 GOTO Kesai-Dream-4
  END

  IF WEIGHT #-102 ~Global("Kesai_Dream_Quest","GLOBAL",6) InParty("Morte")~ THEN BEGIN Kesai-At-Machine-1
    SAY @68
    IF ~~ THEN DO ~SetGlobal("Dream2_Sequence","GLOBAL",1)~ GOTO Kesai-At-Machine-3
  END

  IF WEIGHT #-103 ~Global("Kesai_Dream_Quest","GLOBAL",6) !InParty("Morte")~ THEN BEGIN Kesai-At-Machine-2
    SAY @69
    IF ~~ THEN DO ~SetGlobal("Dream2_Sequence","GLOBAL",1)~ GOTO Kesai-At-Machine-3
  END

  IF ~~ THEN BEGIN Kesai-At-Machine-3
    SAY @70
    IF ~~ THEN EXIT
  END

  IF WEIGHT #-501 ~Global("Dream_Exit","GLOBAL",2) Global("Dream_Victory","GLOBAL",1)~ THEN BEGIN Kesai-At-Machine-4
    SAY @104 // ~You find yourself back in the Foundry. Kesai looks exhausted but triumphant. "There. You should go to the room in the Festhall we saw in your dream. There's a compartment there set into one of the pillars that cannot be opened unless you know what's inside. Remember that mace you saw, and picture it in your mind when you open it. There my father says you will find something else you have long sought."~
    IF ~!NearbyDialog("DGRACE")~ THEN REPLY @105 DO ~IncrementGlobal("Dream_Victory","GLOBAL",1) SetGlobal("Dream_Exit","GLOBAL",0) SetGlobal("Dream2_Sequence","GLOBAL",0)~ GOTO Kesai-At-Machine-4B
    IF ~NearbyDialog("DGRACE")~ THEN REPLY @105 DO ~IncrementGlobal("Dream_Victory","GLOBAL",1) SetGlobal("Dream_Exit","GLOBAL",0) SetGlobal("Dream2_Sequence","GLOBAL",0)~ GOTO Kesai-At-Machine-4C
  END

  IF ~~ THEN BEGIN Kesai-At-Machine-4B
    SAY @106
    IF ~GlobalGT("Kesai_Attracted","GLOBAL",3)~ THEN GOTO Kesai-At-Machine-6
    IF ~GlobalLT("Kesai_Attracted","GLOBAL",4)~ THEN GOTO Kesai-At-Machine-8
  END

  IF ~~ THEN BEGIN Kesai-At-Machine-4C
    SAY @107
    IF ~~ THEN EXTERN DGRACE Kesai-At-Machine-5
  END


  IF ~~ THEN BEGIN Kesai-At-Machine-6
    SAY @109
    IF ~NearbyDialog("DANNAH")~ THEN EXTERN DANNAH Kesai-At-Machine-7
    IF ~!NearbyDialog("DANNAH")~ THEN GOTO Kesai-At-Machine-8
  END

  IF ~~ THEN BEGIN Kesai-At-Machine-8
    SAY @113
    IF ~~ THEN DO ~EscapeArea()~ EXIT
  END

  IF WEIGHT #-300 ~Global("Dream2_Sequence","GLOBAL",7)~ THEN BEGIN Dream2-7
    SAY @85
    IF ~~ THEN EXTERN DDREAM Dream2-8
  END

  IF ~~ THEN BEGIN Dream2-9
    SAY @87
    IF ~~ THEN EXTERN DDREAM Dream2-10
  END

  IF ~~ THEN BEGIN Dream2-11
    SAY @89
    IF ~~ THEN EXTERN DDREAM Dream2-12
  END

  IF ~~ THEN BEGIN Dream2-13
    SAY @91
    IF ~~ THEN DO ~CloseDoor("AR0602D5")~ EXTERN DDREAM Dream2-14
  END

  IF ~~ THEN BEGIN Dream2-16
    SAY @94
    IF ~~ THEN EXTERN DDREAM Dream2-17
  END

  IF WEIGHT #-400 ~GlobalLT("Dream_Exit","GLOBAL",2) Global("Current_Area","GLOBAL",3017) Global("Dream2_Sequence","GLOBAL",10)~ THEN BEGIN Dream2-18
    SAY @118 // ~"You're such a *fascinating* man. *Please*, show me again how you defeated those enormous monsters! It'd be such an exciting experience, the girls at the Festhall would be so jealous, and I'd be ever so grateful."~
    IF ~~ THEN EXIT
  END

  IF WEIGHT #-201 ~Global("Dream_Exit","GLOBAL",2) GlobalGT("Kesai_Dream_Quest","GLOBAL",11) Global("Dream_Death_Count","GLOBAL",0)~ THEN BEGIN Dream2-18
    SAY @99 // ~You find yourself back in the Foundry. Kesai's breasts are heaving as she tries to catch her breath. After a moment, she whispers, "That was... an intense experience. I think I can bring you back to that dream, if you wish to prepare and return to try again. You will need to defeat all of those creatures in your dreams to find what you seek. I will await you here. I'd like to investigate this machine, with your permission. I think I could learn much about dreams from it. It is truly an incredible achievement."~
    IF ~~ THEN REPLY @100 JOURNAL @155 DO ~SetGlobal("Dream_Exit","GLOBAL",0) IncrementGlobal("Dream_Death_Count","GLOBAL",1) SetGlobal("Kesai_Dream_Quest","GLOBAL",13)~ EXIT
    IF ~~ THEN REPLY @101 DO ~SetGlobal("Dream_Exit","GLOBAL",0)~ GOTO Kesai-At-Machine-9
  END

  IF ~~ THEN BEGIN Kesai-At-Machine-9
    SAY @102
    IF ~~ THEN DO ~SetGlobal("Kesai_Dream_Quest","GLOBAL",9) SetGlobal("Dream2_Sequence","GLOBAL",0) EscapeArea()~ EXIT
  END

  IF WEIGHT #-202 ~GlobalGT("Dream_Death_Count","GLOBAL",0) Global("Kesai_Dream_Quest","GLOBAL",13)~ THEN BEGIN Kesai-At-Machine-10
    SAY @114 // ~"Oh, you're back. Did you want to try to defeat the creature in your dreams again?"~
    IF ~~ THEN REPLY @115 GOTO Kesai-At-Machine-11
    IF ~~ THEN REPLY @148 EXIT
  END

  IF ~~ THEN BEGIN Kesai-At-Machine-11
    SAY @116
    IF ~~ THEN EXIT
  END

  IF WEIGHT #-203 ~Global("Dream_Exit","GLOBAL",2) Global("Kesai_Dream_Quest","GLOBAL",13) GlobalGT("Dream_Death_Count","GLOBAL",0)~ THEN BEGIN Dream2-18
    SAY @146 // ~Kesai rushes up to you. "Oh, no! Again? You poor thing! That must hurt terribly, even if it is only in dreams."~
    IF ~~ THEN REPLY @147 DO ~SetGlobal("Dream_Exit","GLOBAL",0)~ EXIT
    IF ~~ THEN REPLY @101 DO ~SetGlobal("Dream_Exit","GLOBAL",0)~ GOTO Kesai-At-Machine-9
  END
END

APPEND DANNAH
  IF ~~ THEN BEGIN Kesai-Jealous-1
    SAY @49
    IF ~NearbyDialog("DGRACE")~  THEN EXTERN DGRACE Kesai-Jealous-3
    IF ~!NearbyDialog("DGRACE")~ THEN EXTERN DKESAI Ravel-Death-23
  END

  IF ~~ THEN BEGIN Kesai-At-Machine-7
    SAY @110
    IF ~~ THEN REPLY @111 DO ~MoraleDec("Annah",1)~ EXTERN DKESAI Kesai-At-Machine-8
    IF ~~ THEN REPLY @112 EXTERN DKESAI Kesai-At-Machine-8
  END
END

APPEND DGRACE
  IF ~~ THEN BEGIN Kesai-Jealous-2
    SAY @50
    IF ~~ THEN EXTERN DKESAI Ravel-Death-23
  END

  IF ~~ THEN BEGIN Kesai-Jealous-3
    SAY @141
    IF ~~ THEN EXTERN DKESAI Ravel-Death-23
  END

  IF ~~ THEN BEGIN Kesai-At-Machine-5
    SAY @108
    IF ~GlobalGT("Kesai_Attracted","GLOBAL",1)~ THEN EXTERN DKESAI Kesai-At-Machine-6
    IF ~GlobalLT("Kesai_Attracted","GLOBAL",2)~ THEN EXTERN DKESAI Kesai-At-Machine-8
  END
END

CHAIN
  IF ~~ THEN DMORTE Kesai-Morte-1
  @56
  EXTERN DKESAI Kesai-Dream-3

CHAIN
  IF ~~ THEN DMORTE Kesai-Morte-2
  @62 // CRUEL
  EXTERN DKESAI Kesai-Dream-4

CHAIN
  IF ~~ THEN DMORTE Kesai-Morte-3
  @130 // CRUEL
  EXTERN DKESAI Kesai-Dream-5

APPEND DDREAM
  IF ~Global("Dream2_Sequence","GLOBAL",0) Global("Dream_Sequence","AR3017",5)~ THEN BEGIN Mid-Dream-1
    SAY @71
    IF ~~ THEN GOTO Mid-Dream-2
  END

  IF ~~ THEN BEGIN Mid-Dream-2
    SAY @72
    IF ~~ THEN DO ~TeleportParty("AR0502",[544.1539],14)~ EXIT
  END

  IF ~Global("Dream_Death_Count","GLOBAL",0) Global("Dream2_Sequence","GLOBAL",1)~ THEN BEGIN Dream2-1
    SAY @73
    IF ~~ THEN GOTO Dream2-2
  END

  IF ~~ THEN BEGIN Dream2-2
    SAY @74
    IF ~~ THEN DO ~IncrementGlobal("Dream2_Sequence","GLOBAL",1) %sc_fadetoblack% Wait(3) TeleportParty("AR3017A",[1591.2198],6)~ EXIT
  END

  IF ~Global("Dream_Death_Count","GLOBAL",0) Global("Dream2_Sequence","GLOBAL",3)~ THEN BEGIN Dream2-3
    SAY @81
    IF ~~ THEN DO ~IncrementGlobal("Dream2_Sequence","GLOBAL",1) %sc_fadetoblack% Wait(3) TeleportParty("AR3017B",[2982.926],6)~ EXIT
  END

  IF ~Global("Dream_Death_Count","GLOBAL",0) Global("Dream2_Sequence","GLOBAL",5)~ THEN BEGIN Dream2-4
    SAY @82
    IF ~~ THEN DO ~IncrementGlobal("Dream2_Sequence","GLOBAL",1) StartCutSceneMode() StartCutScene("3017BDR1")~ EXIT
  END

  IF ~Global("Dream_Death_Count","GLOBAL",0) Global("Dream2_Sequence","GLOBAL",6)~ THEN BEGIN Dream2-5
    SAY @83
    IF ~~ THEN DO ~IncrementGlobal("Dream2_Sequence","GLOBAL",1) Face(4)~ GOTO Dream2-6
  END

  IF ~~ THEN BEGIN Dream2-6
    SAY @84
    IF ~~ THEN EXTERN DKESAI Dream2-7
  END

  IF ~~ THEN BEGIN Dream2-8
    SAY @86
    IF ~~ THEN EXTERN DKESAI Dream2-9
  END

  IF ~~ THEN BEGIN Dream2-10
    SAY @88
    IF ~~ THEN EXTERN DKESAI Dream2-11
  END

  IF ~~ THEN BEGIN Dream2-12
    SAY @90
    IF ~~ THEN EXTERN DKESAI Dream2-13
  END

  IF ~~ THEN BEGIN Dream2-14
    SAY @92
    IF ~~ THEN DO ~%sc_fadetoblack% Wait(3) TeleportParty("AR3017C",[1121.745],14)~ EXIT
  END

  IF ~Global("Dream_Death_Count","GLOBAL",0) Global("Dream2_Sequence","GLOBAL",8)~ THEN BEGIN Dream2-15
    SAY @93
    IF ~~ THEN DO ~IncrementGlobal("Dream2_Sequence","GLOBAL",1)~ EXTERN DKESAI Dream2-16
  END

  IF ~~ THEN BEGIN Dream2-17
    SAY @95
    IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("3017CDR1")~ EXIT
  END

  IF ~Global("Dream_Death_Count","GLOBAL",0) Global("Dream2_Sequence","GLOBAL",9)~ THEN BEGIN Dream2-18
    SAY @96
    IF ~~ THEN DO ~SetGlobal("Dream_Exit","GLOBAL",1) SetGlobal("Kesai_Dream_Quest","GLOBAL",12) IncrementGlobal("Dream2_Sequence","GLOBAL",1)~ EXIT
  END

  IF WEIGHT #-500 ~Global("Current_Area","GLOBAL",3017) GlobalGT("Dream_Victory","GLOBAL",0) !Global("Kesai_Dream_Quest","GLOBAL",11)~ THEN BEGIN Dream2-19
    SAY @97
    IF ~~ THEN GOTO Dream2-20
  END

  IF ~~ THEN BEGIN Dream2-20
    SAY @103
    IF ~~ THEN JOURNAL @156 DO ~SetGlobal("Kesai_Dream_Quest","GLOBAL",11) FullHeal(Protagonist) SetGlobal("Dream2_Sequence","GLOBAL",0) TeleportParty("AR0502",[544.1539],14)~ EXIT
  END

  IF WEIGHT #-100 ~GlobalGT("Dream_Death_Count","GLOBAL",0) Global("Kesai_Dream_Quest","GLOBAL",13)~ THEN BEGIN Dream2-21
    SAY @75
    IF ~~ THEN GOTO Dream2-22
  END

  IF ~~ THEN BEGIN Dream2-22
    SAY @76
    IF ~~ THEN DO ~SetGlobal("Kesai_Dream_Quest","GLOBAL",12) SetGlobal("Dream2_Sequence","GLOBAL",10) TeleportParty("AR3017C",[1121.745],14)~ EXIT
  END

  IF WEIGHT #-99 ~GlobalGT("Dream_Death_Count","GLOBAL",0) Global("Dream2_Sequence","GLOBAL",10) Global("Kesai_Dream_Quest","GLOBAL",12)~ THEN BEGIN Dream2-23
    SAY @117
    IF ~~ THEN DO ~SetGlobal("Dream_Exit","GLOBAL",1) SetGlobal("Kesai_Dream_Quest","GLOBAL",13)~ EXIT
  END
END

BEGIN DQUILLPN
  IF ~True()~ THEN BEGIN Quill-1
    SAY @217
    IF ~Global("Dream_Pen_Used","GLOBAL",0)~ THEN REPLY @210 JOURNAL @212 DO ~SetGlobal("Dream_Pen_Used","GLOBAL",1)~ GOTO Quill-2
    IF ~Global("Dream_Pen_Used","GLOBAL",1)~ THEN REPLY @210 GOTO Quill-17
    IF ~~ THEN REPLY @211 EXIT
  END

  IF ~~ THEN BEGIN Quill-2
    SAY @201
    IF ~~ THEN REPLY @209 GOTO Quill-3
    IF ~~ THEN REPLY @215 GOTO Quill-10
  END

  IF ~~ THEN BEGIN Quill-3
    SAY @202
    IF ~~ THEN REPLY @209 GOTO Quill-4
    IF ~~ THEN REPLY @215 GOTO Quill-11
  END

  IF ~~ THEN BEGIN Quill-4
    SAY @203
    IF ~~ THEN REPLY @209 GOTO Quill-5
    IF ~~ THEN REPLY @215 GOTO Quill-12
  END

  IF ~~ THEN BEGIN Quill-5
    SAY @204
    IF ~~ THEN REPLY @209 JOURNAL @213 DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",1)~ GOTO Quill-6
    IF ~~ THEN REPLY @215 GOTO Quill-13
  END

  IF ~~ THEN BEGIN Quill-6
    SAY @205
    IF ~~ THEN REPLY @209 GOTO Quill-7
    IF ~~ THEN REPLY @215 GOTO Quill-14
  END

  IF ~~ THEN BEGIN Quill-7
    SAY @206
    IF ~~ THEN REPLY @209 GOTO Quill-8
    IF ~~ THEN REPLY @215 GOTO Quill-15
  END

  IF ~~ THEN BEGIN Quill-8
    SAY @207
    IF ~~ THEN REPLY @209 GOTO Quill-9
    IF ~~ THEN REPLY @215 GOTO Quill-16
  END

  IF ~~ THEN BEGIN Quill-9
    SAY @208
    IF ~~ THEN REPLY @211 JOURNAL @157 EXIT
  END

  IF ~~ THEN BEGIN Quill-10
    SAY @216
    IF ~~ THEN GOTO Quill-3
  END

  IF ~~ THEN BEGIN Quill-11
    SAY @216
    IF ~~ THEN GOTO Quill-4
  END

  IF ~~ THEN BEGIN Quill-12
    SAY @216
    IF ~~ THEN GOTO Quill-5
  END

  IF ~~ THEN BEGIN Quill-13
    SAY @216
    IF ~~ THEN GOTO Quill-6
  END

  IF ~~ THEN BEGIN Quill-14
    SAY @216
    IF ~~ THEN GOTO Quill-7
  END

  IF ~~ THEN BEGIN Quill-15
    SAY @216
    IF ~~ THEN GOTO Quill-8
  END

  IF ~~ THEN BEGIN Quill-16
    SAY @216
    IF ~~ THEN GOTO Quill-9
  END
  
  IF ~~ THEN BEGIN Quill-17
    SAY @214
    IF ~~ THEN EXIT
  END

BEGIN DDRMTRAP
  IF ~True()~ THEN BEGIN DrmTrap-1
    SAY @149
    IF ~GlobalGT("Dream_Victory","GLOBAL",0)~ THEN REPLY @218 DO ~SetDoorLocked("AR0602D5",FALSE) OpenDoor("AR0602D5")~ GOTO DrmTrap-2
    IF ~~ THEN REPLY @219 EXIT
  END
  
  IF ~~ THEN BEGIN DrmTrap-2
    SAY @220
    IF ~~ THEN EXIT
  END
