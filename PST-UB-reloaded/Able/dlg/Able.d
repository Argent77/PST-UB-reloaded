
// Enable research options upon learning that's his job
ADD_TRANS_ACTION DABLE BEGIN 25 END BEGIN 1 END ~SetGlobal("CW_Able_Research","AR0600",1)~
// Bad checks for dodecahedron journal
REPLACE_TRIGGER_TEXT DABLE ~PartyHasItem("P_Journ")~ ~PartyHasItem("P_Jrnl")~
// Add the "Can you do research for me?" option to state 27.
EXTEND_TOP DABLE 27
  IF ~~ THEN REPLY #30917 JOURNAL #30921 GOTO 83
 END
// Add the journal entry for Able agreeing to do research for you.
ALTER_TRANS DABLE BEGIN 16 END BEGIN 3 END BEGIN "JOURNAL" ~#30921~ END
ALTER_TRANS DABLE BEGIN 31 END BEGIN 0 END BEGIN "JOURNAL" ~#30921~ END
ALTER_TRANS DABLE BEGIN 79 80 81 END BEGIN 0 END BEGIN "JOURNAL" ~#30921~ END
// Correct language research variable setting
REPLACE_TRANS_ACTION DABLE BEGIN 31 83 END BEGIN 0 END
    ~SetGlobal("CW_Research_Language",[ ]*"AR0600",[ ]*3)~
    ~SetGlobal("CW_Research_Language","AR0600",1)~
// Prevent repeatedly asking to research language - Add to state 31 deprecated by fix below in version 3.0
// ADD_TRANS_TRIGGER DABLE 31 ~Global("CW_Research_Language","AR0600",0)~ 83 DO 0
ADD_TRANS_TRIGGER DABLE 83 ~Global("CW_Research_Language","AR0600",0)~ DO 0
// Let Able do his blabber about Ravel before agreeing to research her
REPLACE_TRANS_ACTION DABLE BEGIN 83 END BEGIN 1 END ~SetGlobal("CW_Research_Ravel",[ ]*"AR0600",[ ]*1)~ ~~
// Prevent repeatedly asking to research Ravel, and only ask if you know he does research
REPLACE_TRANS_TRIGGER DABLE BEGIN 79 80 81 END BEGIN 0 END
   ~Global("CW_Research_Ravel",[ ]*"AR0600",[ ]*1)~
   ~Global("CW_Able_Research","AR0600",1) Global("CW_Research_Ravel","AR0600",0)~
// Make asking Able to research her when asking about Ravel generally actually work
ADD_TRANS_ACTION DABLE BEGIN 79 80 81 END BEGIN 0 END ~SetGlobal("CW_Research_Ravel","AR0600",1)~


// UB Version 3.0:
// SKARDAVNELNATE pointed out I should add the first trigger, and I noticed I should add the second trigger as well -
// better here than in state 31 where I was doing it previously, see deprecated fix above.
ADD_TRANS_TRIGGER DABLE 30 ~Global("P_Journal","GLOBAL",3) Global("CW_Research_Language","AR0600",0)~ DO 0

// UB Version 3.0:
// Since timers work on game time, not real time, decided to switch to that method.
REPLACE_TRANS_TRIGGER DABLE BEGIN 16 END BEGIN 0 END
   ~Global("CW_Research_Language",[ ]*"AR0600",[ ]*2)~
   ~Global("CW_Research_Language","AR0600",1) GlobalTimerExpired("Able_Timer_Language","GLOBAL")~
REPLACE_TRANS_TRIGGER DABLE BEGIN 16 END BEGIN 1 END
   ~Global("CW_Research_Ravel",[ ]*"AR0600",[ ]*2)~
   ~Global("CW_Research_Ravel","AR0600",1) GlobalTimerExpired("Able_Timer_Ravel","GLOBAL")~
REPLACE_TRANS_TRIGGER DABLE BEGIN 16 END BEGIN 2 END
   ~Global("CW_Research_Incarnations",[ ]*"AR0600",[ ]*2)~
   ~Global("CW_Research_Incarnations","AR0600",1) GlobalTimerExpired("Able_Timer_Incarnations","GLOBAL")~

ADD_TRANS_ACTION DABLE BEGIN 31 83 END BEGIN 0 END ~SetGlobalTimer("Able_Timer_Language","GLOBAL",6000)~
ADD_TRANS_ACTION DABLE BEGIN 83 END BEGIN 1 END ~SetGlobalTimer("Able_Timer_Ravel","GLOBAL",6000)~
ADD_TRANS_ACTION DABLE BEGIN 83 END BEGIN 2 END ~SetGlobalTimer("Able_Timer_Incarnations","GLOBAL",6000)~

ADD_TRANS_ACTION DABLE BEGIN 79 80 81 END BEGIN 0 END ~SetGlobalTimer("Able_Timer_Ravel","GLOBAL",6000)~
