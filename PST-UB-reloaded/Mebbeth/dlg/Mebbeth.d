//========================================= VERSION 3.0 ==============================================
// RESTORED MEBBETH
// This bit restores the post-sleep dialogue.

ADD_TRANS_ACTION DMEBBETH BEGIN 41 END BEGIN 0 2 END ~SetGlobal("Player_Dream","GLOBAL",1)~
ADD_TRANS_ACTION DMEBBETH BEGIN 44 END BEGIN 0 END ~SetGlobal("Mebbeth_Dreams","GLOBAL",1) SetGlobal("Player_Dream","GLOBAL",0)~
ADD_TRANS_ACTION DMEBBETH BEGIN 46 END BEGIN 0 1 END ~SetGlobal("Player_Dream","GLOBAL",0)~


ADD_STATE_TRIGGER DMEBBETH 42 ~Global("Player_Dream","GLOBAL",1) Global("Mebbeth_Dreams","GLOBAL",0)~
ADD_STATE_TRIGGER DMEBBETH 46 ~Global("Player_Dream","GLOBAL",1) Global("Mebbeth_Dreams","GLOBAL",1)~

SET_WEIGHT DMEBBETH 42 #-100
SET_WEIGHT DMEBBETH 46 #-80



// The following restores "Mebbeth's Tale of Ravel" - you only get to hear it once, though.
ADD_TRANS_TRIGGER DMEBBETH 27 ~Global("Story_Mebbeth_Ravel","GLOBAL",1)~ DO 0
EXTEND_TOP DMEBBETH 27
  IF ~Global("Story_Mebbeth_Ravel","GLOBAL",0)~ THEN REPLY #25077 GOTO 30
END

EXTEND_TOP DMEBBETH 34
  IF ~~ THEN REPLY #23280 JOURNAL #22706 DO ~SetGlobal("Story_Mebbeth_Ravel","GLOBAL",1)~ GOTO 28
END
