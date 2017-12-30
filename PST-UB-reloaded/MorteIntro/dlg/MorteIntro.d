

// Morte's Original Intro Changes:

ADD_STATE_TRIGGER DMORTE 0
~!InParty("Morte")
Global("Morte","GLOBAL",0)
NumTimesTalkedTo(0)~

SET_WEIGHT DMORTE 0 #-2

REPLACE_SAY DMORTE 0 #39792  // Only difference is that this STRREF has the sound attached

ADD_TRANS_TRIGGER DMORTE 0 ~False()~ DO 3


// Morte Comments on Dhall's Book fix:

ADD_STATE_TRIGGER DMORTE 459
~Global("Mortuary_Walkthrough","GLOBAL",3)
Global("AR0200_Visited","GLOBAL",0)
InParty("Morte")
!GlobalGT("Fortress_Morte","GLOBAL",2)~

SET_WEIGHT DMORTE 459 #-1

// Version 3.02 (or 4.0) - Remove journal entry as it's inconsistent with the "first" journal entry in the walkthrough, and there was no entry
// in the shorter version.

ALTER_TRANS DMORTE BEGIN 243 END BEGIN 0 END BEGIN "JOURNAL" ~~ END
