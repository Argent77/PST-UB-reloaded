CHAIN
  IF ~LastPersonTalkedTo("Grace") Global("Morte_Talked_Grace","GLOBAL",4)~ THEN
    BMORTE Morte-Grace-4
    @32
    == DGRACE @33
    DO ~IncrementGlobal("Morte_Talked_Grace","GLOBAL",1)~
EXIT

CHAIN
  IF ~LastPersonTalkedTo("Grace") Global("Morte_Talked_Grace","GLOBAL",5)~ THEN
    BMORTE Morte-Grace-5
    @34
    == DGRACE @35
    DO ~IncrementGlobal("Morte_Talked_Grace","GLOBAL",1)~
EXIT

CHAIN
  IF ~LastPersonTalkedTo("Grace") Global("Morte_Talked_Grace","GLOBAL",6)~ THEN
    BMORTE Morte-Grace-6
    @36
    == DGRACE @37
    DO ~IncrementGlobal("Morte_Talked_Grace","GLOBAL",1)~
EXIT

CHAIN
  IF ~LastPersonTalkedTo("Grace") Global("Annah_Talked_Grace","GLOBAL",6)~ THEN
    BANNAH Annah-Grace-6
    @38
    == DGRACE @39
    == BANNAH @40
    DO ~IncrementGlobal("Annah_Talked_Grace","GLOBAL",1)~
EXIT

CHAIN
  IF ~LastPersonTalkedTo("Grace") Global("Annah_Talked_Grace","GLOBAL",7)~ THEN
    BANNAH Annah-Grace-7
    @41
    == DGRACE @42
    DO ~IncrementGlobal("Annah_Talked_Grace","GLOBAL",1)~
EXIT

CHAIN
  IF ~LastPersonTalkedTo("Grace") Global("Annah_Talked_Grace","GLOBAL",8)~ THEN
    BANNAH Annah-Grace-8
    @43
    == DGRACE @44
    == BANNAH @45
    DO ~IncrementGlobal("Annah_Talked_Grace","GLOBAL",1)~
EXIT

CHAIN
  IF ~LastPersonTalkedTo("Grace") Global("Annah_Talked_Grace","GLOBAL",9)~ THEN
    BANNAH Annah-Grace-9
    @46
    == DGRACE @47
    DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",0)~
EXIT

CHAIN
  IF ~LastPersonTalkedTo("Annah") Global("Grace_Talked_Annah","GLOBAL",2)~ THEN
    BGRACE Grace-Annah-2
    @48
    == DANNAH @49
    DO ~SetGlobal("Grace_Talked_Annah","GLOBAL",0)~
EXIT

CHAIN
  IF ~LastPersonTalkedTo("Morte") Global("Annah_Talked_Morte","GLOBAL",9)~ THEN
    BANNAH Annah-Morte-9
    @50
    == DMORTE @51
    DO ~IncrementGlobal("Annah_Talked_Morte","GLOBAL",1)~
EXIT

CHAIN
  IF ~LastPersonTalkedTo("Morte") Global("Annah_Talked_Morte","GLOBAL",10)~ THEN
    BANNAH Annah-Morte-10
    @52
    == DMORTE @53
    DO ~IncrementGlobal("Annah_Talked_Morte","GLOBAL",1)~
EXIT

CHAIN
  IF ~LastPersonTalkedTo("Morte") Global("Annah_Talked_Morte","GLOBAL",11)~ THEN
    BANNAH Annah-Morte-11
    @73
    == DMORTE @54
    == BANNAH @55
    == DMORTE @56
    DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",0)~
EXIT

CHAIN
  IF ~LastPersonTalkedTo("Annah") Global("Morte_Talked_Annah","GLOBAL",16)~ THEN
    BMORTE Morte-Annah-16
    @57
    == DANNAH @58
    == BMORTE @59
    DO ~SetGlobal("Morte_Talked_Annah","GLOBAL",0)~
EXIT

CHAIN
  IF ~LastPersonTalkedTo("Morte") Global("Nordom_Talked_Morte","GLOBAL",13) InParty("Grace")~ THEN
    BNORDOM Nordom-Morte-13
    @60
    == DMORTE @61
    == BNORDOM @62
    == DMORTE @77
    DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",0)~
EXIT

CHAIN
  IF ~LastPersonTalkedTo("Grace") Global("Morte_Talked_Grace","GLOBAL",7) InParty("Annah") NearbyDialog("DANNAH")~ THEN
    BMORTE Morte-Annah-Grace-1
    @63
    == DANNAH @64
    == BMORTE @65
    == DGRACE @66
    == BMORTE @67
    DO ~IncrementGlobal("Morte_Talked_Grace","GLOBAL",1)~
EXIT

CHAIN
  IF ~LastPersonTalkedTo("Grace") Global("Morte_Talked_Grace","GLOBAL",8) InParty("Annah") NearbyDialog("DANNAH")~ THEN
    BMORTE Morte-Annah-Grace-2
    @68
    == DANNAH @69
    == BMORTE @70
    == DGRACE @71
    == BMORTE @72
    DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",0)~
EXIT

CHAIN
  IF ~LastPersonTalkedTo("Dakkon") Global("Grace_Talked_Dakkon","GLOBAL",2)~ THEN
    BGRACE Grace-Dakkon-1
    @74
    == DDAKKON @75
    DO ~SetGlobal("Grace_Talked_Dakkon","GLOBAL",0)~
EXIT

APPEND DMORTE
  IF ~~ THEN BEGIN Vhailor-Morte-1
    SAY @76
    IF ~~ THEN EXIT
  END
END
ALTER_TRANS BVHAILOR BEGIN 1 END BEGIN 0 END BEGIN "EPILOGUE" ~EXTERN DMORTE Vhailor-Morte-1~ END



// Prevent loop resets to instead increment to hook in new banters.  Should have no effect if banter accelerator has
// been installed (and in fact these lines are copied from the banter accelerator .d).

// For Morte's banter file
ADD_STATE_TRIGGER BMORTE 51 ~False()~ 52
REPLACE_TRANS_ACTION DGRACE BEGIN 365 END BEGIN 0 END
  ~SetGlobal("Morte_Talked_Grace",[ ]*"GLOBAL",[ ]*0)~
  ~IncrementGlobal("Morte_Talked_Grace","GLOBAL",1)~
REPLACE_TRANS_ACTION BMORTE BEGIN 31 END BEGIN 0 END
  ~SetGlobal("Morte_Talked_Annah",[ ]*"GLOBAL",[ ]*0)~
  ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)~

// For Annah's banters
ADD_STATE_TRIGGER BANNAH 27 ~False()~
REPLACE_TRANS_ACTION DMORTE BEGIN 622 END BEGIN 0 END
  ~SetGlobal("Annah_Talked_Morte",[ ]*"GLOBAL",[ ]*0)~
  ~IncrementGlobal("Annah_Talked_Morte","GLOBAL",1)~
REPLACE_TRANS_ACTION DANNAH BEGIN 464 467 END BEGIN 0 END
  ~SetGlobal("Annah_Talked_Grace",[ ]*"GLOBAL",[ ]*0)~
  ~IncrementGlobal("Annah_Talked_Grace","GLOBAL",1)~

// For Grace's banters
REPLACE_TRANS_ACTION BGRACE BEGIN 12 END BEGIN 0 END
  ~SetGlobal("Grace_Talked_Annah",[ ]*"GLOBAL",[ ]*0)~
  ~IncrementGlobal("Grace_Talked_Annah","GLOBAL",1)~
REPLACE_TRANS_ACTION DDAKKON BEGIN 360 END BEGIN 0 END
  ~SetGlobal("Grace_Talked_Dakkon",[ ]*"GLOBAL",[ ]*0)~
  ~IncrementGlobal("Grace_Talked_Dakkon","GLOBAL",1)~

// For Nordom's banters
ADD_STATE_TRIGGER BNORDOM 37 ~False()~ 38
REPLACE_TRANS_ACTION DMORTE BEGIN 640 END BEGIN 0 END
  ~SetGlobal("Nordom_Talked_Morte",[ ]*"GLOBAL",[ ]*1)~
  ~IncrementGlobal("Nordom_Talked_Morte","GLOBAL",1)~
REPLACE_TRANS_ACTION DMORTE BEGIN 642 END BEGIN 0 END
  ~SetGlobal("Nordom_Talked_Morte",[ ]*"GLOBAL",[ ]*0)~
  ~IncrementGlobal("Nordom_Talked_Morte","GLOBAL",1)~
