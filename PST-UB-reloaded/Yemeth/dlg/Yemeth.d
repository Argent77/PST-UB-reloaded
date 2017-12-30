

// DRATBONE.DLG
// Copy responses 242, 245, 246, 244
// Paste in that order
// State 74
// First transition index 256
// # transitions 4

// DTEGARIN.DLG
// Speaking with Tegar'in sends you to Aethelgrin's dialog, speaking with Aethelgrin sends you to Tegar'in's dialog which is missing some options.
// Copy responses 10-23 from DAETHEL.DLG
// Paste in DTEGARIN.DLG and sort
// State 8
// First transition index 102
// # transitions 14
// Copy Response triggers 2-8 from DAETHEL.DLG
// Paste in DTEGARIN.DLG and sort
// Response 108 Trigger index 11
// Response 109 Trigger index 12
// Response 110 Trigger index 13
// Response 111 Trigger index 14
// Response 112 Trigger index 15
// Response 113 Trigger index 16
// Response 114 Trigger index 17

// DRKCHSR2.DLG
// Know Rake-Chaser's identity before you're told.
// Add Response trigger Global("RC_ID","GLOBAL",3)
// Response 6, 7 set flag, add  trigger 15

// DAETHEL.DLG
// Know Rake-Chaser's identity.
// Action 2 SetGlobal("RC_ID","GLOBAL",3) -> SetGlobal("RC_ID","GLOBAL",2)

// ===============================================================================
// BEGIN Restored Pendant of Yemeth Dialogue Changes

// Qwinn - I did the change to Ratbone's conversation a bit differently, mainly
// because it's a lot easier to do this way and my way just helps the player not miss a
// little bit of conversational content.
ADD_TRANS_TRIGGER DRATBONE 74 ~False()~ DO 1

EXTEND_BOTTOM DTEGARIN 8 #1
  IF ~Global("Devil_Offer", "AR0402", 1)~ THEN REPLY #14814 /* ~"I'm considering the bargain you spoke of, earlier."~ */ GOTO 25
  IF ~Global("RC_ID", "GLOBAL", 1) !Global("2Devils", "AR0402", 1)~ THEN REPLY #12364 /* ~"Would you know of a Collector who has dealings with fiends?"~ */ GOTO 19
  IF ~Global("2Devils", "AR0402", 1)~ THEN REPLY #14729 /* ~"Where is this Collector hiding, again?"~ */ EXTERN ~DAETHEL~ 50
  IF ~Global("2Devils", "AR0402", 1)~ THEN REPLY #14730 /* ~"What sort of 'power' is it that the pendant will give me?"~ */ GOTO 43
  IF ~Global("RC_Contract", "GLOBAL" ,1)~ THEN REPLY #14731 /* ~"I failed to get the pendant from the Erinyes, and now she's gone."~ */ GOTO 57
  IF ~Global("RC_Contract", "GLOBAL" ,1)~ THEN REPLY #14732 /* ~Lie: "I could not find the Erinyes; she was not in the alley you told me about."~ */ DO ~SetGlobal("2Devils", "AR0402", 3)~ GOTO 57
  IF ~PartyHasItem("SkulPend")~ THEN REPLY #14733 /* ~"Here is the pendant."~ */ EXTERN ~DAETHEL~ 40
END

// Documentation above is wrong, RC_ID triggers should be 2, not 3.  Files in override1 were correct.
ADD_TRANS_TRIGGER DRKCHSR2 2 ~Global("RC_ID","GLOBAL",2)~ DO 0 1

REPLACE_TRANS_ACTION DAETHEL BEGIN 30 END BEGIN 0 END
   ~SetGlobal("RC_ID",[ ]*"GLOBAL",[ ]*3)~ ~SetGlobal("RC_ID","GLOBAL",2)~

// ================================================================================

// The above is based on SKARDAVNELNATE's readme.  The following are additional fixes by Qwinn:

// Correct flawed stat checks for xp reward during recovered memory in Erinye's conversation
ALTER_TRANS DRKCHSR2 BEGIN 45 END BEGIN 5 END
  BEGIN "TRIGGER" ~CheckStatGT(Protagonist,16,INT) CheckStatGT(Protagonist,16,WIS)~ END
ALTER_TRANS DRKCHSR2 BEGIN 63 END BEGIN 3 END
  BEGIN "TRIGGER" ~CheckStatGT(Protagonist,16,INT) CheckStatGT(Protagonist,16,WIS)~ END

// If you refused to hand over pendant, Aethel wouldn't help Tegarin in fight.
REPLACE_ACTION_TEXT DTEGARIN ~Enemy()~ ~Enemy() Help()~

// Getting rid of Enemy() unless you actually attack, to make it consistent.  Can still force-attack it.
REPLACE_ACTION_TEXT DRKCHSR2 ~Enemy()~ ~~
REPLACE_ACTION_TEXT DRKCHSR2 ~Attack(Protagonist)~ ~Enemy() Attack(Protagonist)~
// Just cleanup of extra blank lines
REPLACE_ACTION_TEXT DRKCHSR2 ~
Enemy()~ ~Enemy()~
REPLACE_ACTION_TEXT DRKCHSR2 ~
EscapeArea()~ ~EscapeArea()~

// "Farewell, keep the pendant" option missing action
ADD_TRANS_ACTION DRKCHSR2 BEGIN 47 END BEGIN 3 END ~EscapeArea()~

// The following keeps from getting the "She got away" options forever, and also makes things make
// sense if you manage to kill the Eryine and get the pendant after you've signed her contract but
// before she manages to escape the area (via force attack).
ADD_TRANS_TRIGGER DAETHEL  8 ~GlobalLT("2Devils","AR0402",4)~ DO 10 11
ADD_TRANS_TRIGGER DTEGARIN 8 ~GlobalLT("2Devils","AR0402",4)~ DO 10 11

// Version 4.0:  Fix bad epilogues if Adyzoel is dead and you talk to Rakechaser during the daytime.
ALTER_TRANS DRKCHSR BEGIN 19 END BEGIN 0 1 END BEGIN "EPILOGUE" ~GOTO 18~ END
