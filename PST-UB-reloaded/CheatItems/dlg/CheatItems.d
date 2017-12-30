// ================= RESTORATION PACK'S RESTORED CHEAT ITEMS =====================

// Modification by Restoration Pack
// WeiDUization by Qwinn
// Revised by Argent77

// ===============================================================================

EXTEND_TOP DVRISCH 21 #2
    IF ~Global("Vris_Buy_07","GLOBAL",0)~ THEN REPLY @517 /* ~Examine the blue book.~ */ GOTO 22
 END

EXTEND_TOP DVRISCH 60 #2
    IF ~Global("Vris_Buy_12","GLOBAL",0)~ THEN REPLY @518 /* Examine the sword.~ */ GOTO 37
 END

ADD_TRANS_ACTION DSWORDOW BEGIN 1 END BEGIN 0 END ~QuitGame(3,0,0)~
