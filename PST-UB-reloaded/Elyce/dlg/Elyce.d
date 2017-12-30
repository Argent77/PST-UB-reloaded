

// ================== SKARDAVNELNATE'S RESTORED ELYCE AND COMPANY QUEST ====================

// Qwinn:  I am making the following changes from SKARDAVNELNATE'S version 20080408 for 
// Unfinished Business.  All changes are in this, the dialogue file.

// 1.  Removing -all- instances of Enemy() from Elyce's dialogue.  None of them are appropriate.
// 2.  Changing both Maeth and Tarin's experience award to 400.  Previously one would give 500
//     and the other would give 300, and you could only get one of them.  I can't see
//     why talking to one should grant more experience than the other.
// 3.  If you don't demand a payment up front, and only ask for "gratitude" afterwards,
//     Elyce would become angry (though not hostile anymore, see change 1) and tell you
//     you wouldn't be getting any reward - but then if you talk to her again, she gives
//     it to you as if she'd agreed to it up front.  It doesn't play well, so now if she says
//     she won't be giving you a reward, she really won't.

REPLACE_ACTION_TEXT DELYCE ~Enemy()~ ~~
REPLACE_ACTION_TEXT DMAETH ~Enemy()~ ~~
REPLACE_ACTION_TEXT DTARIN ~Enemy()~ ~~

REPLACE_ACTION_TEXT DTARIN ~\(Add\(Party\)?[Ee]xperience\(Party\)?\)(300)~ ~\1(400)~
REPLACE_ACTION_TEXT DMAETH ~\(Add\(Party\)?[Ee]xperience\(Party\)?\)(500)~ ~\1(400)~

ADD_TRANS_ACTION DELYCE BEGIN 5 END BEGIN 0 END ~SetGlobal("Elyce","AR0400",5)~

// Version 2.0 - It was possible under certain circumstances to get no valid states when talking
// to any of the actors, which would cause bad things to happen (repeated triggering of "See" trigger,
// among others) until a valid dialogue occurred.
REPLACE_TRIGGER_TEXT DMAETH ~Global("Elyce",[ ]*"AR0400",[ ]*4)~ ~GlobalGT("Elyce","AR0400",3)~
REPLACE_TRIGGER_TEXT DTARIN ~Global("Elyce",[ ]*"AR0400",[ ]*4)~ ~GlobalGT("Elyce","AR0400",3)~
APPEND DELYCE
  IF ~Global("Elyce","AR0400",2)~ THEN BEGIN New-Elyce
    SAY #32533
    IF ~~ THEN REPLY #33519 EXIT
  END
END
