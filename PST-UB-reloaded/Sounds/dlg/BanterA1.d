CHAIN
  IF ~Global("Morte_Talked_Grace","GLOBAL",4) InParty("Grace")NearbyDialog("Grace")~ THEN
    BMORTE Morte-Grace-4
    @32 DO ~%BanterDo%~
    == DGRACE @33
    DO ~IncrementGlobal("Morte_Talked_Grace","GLOBAL",1)~
EXIT

CHAIN
  IF ~Global("Morte_Talked_Grace","GLOBAL",5) InParty("Grace")NearbyDialog("Grace")~ THEN
    BMORTE Morte-Grace-5
    @34 DO ~%BanterDo%~
    == DGRACE @35
    DO ~IncrementGlobal("Morte_Talked_Grace","GLOBAL",1)~
EXIT

CHAIN
  IF ~Global("Morte_Talked_Grace","GLOBAL",6) InParty("Grace")NearbyDialog("DGRACE")~ THEN
    BMORTE Morte-Grace-6
    @36 DO ~%BanterDo%~
    == DGRACE @37
    DO ~IncrementGlobal("Morte_Talked_Grace","GLOBAL",1)~
EXIT

CHAIN
  IF ~Global("Annah_Talked_Grace","GLOBAL",6) InParty("Grace")NearbyDialog("DGRACE")~ THEN
    BANNAH Annah-Grace-6
    @38 DO ~%BanterDo%~
    == DGRACE @39
    == BANNAH @40
    DO ~IncrementGlobal("Annah_Talked_Grace","GLOBAL",1)~
EXIT

CHAIN
  IF ~Global("Annah_Talked_Grace","GLOBAL",7) InParty("Grace")NearbyDialog("DGRACE")~ THEN
    BANNAH Annah-Grace-7
    @41 DO ~%BanterDo%~
    == DGRACE @42
    DO ~IncrementGlobal("Annah_Talked_Grace","GLOBAL",1)~
EXIT

CHAIN
  IF ~Global("Annah_Talked_Grace","GLOBAL",8) InParty("Grace")NearbyDialog("DGRACE")~ THEN
    BANNAH Annah-Grace-8
    @43 DO ~%BanterDo%~
    == DGRACE @44
    == BANNAH @45
    DO ~IncrementGlobal("Annah_Talked_Grace","GLOBAL",1)~
EXIT

CHAIN
  IF ~Global("Annah_Talked_Grace","GLOBAL",9) InParty("Grace")NearbyDialog("DGRACE")~ THEN
    BANNAH Annah-Grace-9
    @46 DO ~%BanterDo%~
    == DGRACE @47
    DO ~IncrementGlobal("Annah_Talked_Grace","GLOBAL",1)~
EXIT

CHAIN
  IF ~Global("Grace_Talked_Annah","GLOBAL",2) InParty("Annah")NearbyDialog("DANNAH")~ THEN
    BGRACE Grace-Annah-2
    @48 DO ~%BanterDo%~
    == DANNAH @49
    DO ~IncrementGlobal("Grace_Talked_Annah","GLOBAL",1)~
EXIT

CHAIN
  IF ~Global("Annah_Talked_Morte","GLOBAL",9) InParty("Morte")NearbyDialog("DMORTE")~ THEN
    BANNAH Annah-Morte-9
    @50 DO ~%BanterDo%~
    == DMORTE @51
    DO ~IncrementGlobal("Annah_Talked_Morte","GLOBAL",1)~
EXIT

CHAIN
  IF ~Global("Annah_Talked_Morte","GLOBAL",10) InParty("Morte")NearbyDialog("DMORTE")~ THEN
    BANNAH Annah-Morte-10
    @52 DO ~%BanterDo%~
    == DMORTE @53
    DO ~IncrementGlobal("Annah_Talked_Morte","GLOBAL",1)~
EXIT

CHAIN
  IF ~Global("Annah_Talked_Morte","GLOBAL",11) InParty("Morte")NearbyDialog("DMORTE")~ THEN
    BANNAH Annah-Morte-11
    @73 DO ~%BanterDo%~
    == DMORTE @54
    == BANNAH @55
    == DMORTE @56
    DO ~IncrementGlobal("Annah_Talked_Morte","GLOBAL",1)~
EXIT

CHAIN
  IF ~Global("Morte_Talked_Annah","GLOBAL",16) InParty("Annah")NearbyDialog("DANNAH")~ THEN
    BMORTE Morte-Annah-16
    @57 DO ~%BanterDo%~
    == DANNAH @58
    == BMORTE @59
    DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)~
EXIT

CHAIN
  IF ~Global("Nordom_Talked_Morte","GLOBAL",13) InParty("Morte")NearbyDialog("DMORTE") InParty("Grace")~ THEN
    BNORDOM Nordom-Morte-13
    @60 DO ~%BanterDo%~
    == DMORTE @61
    == BNORDOM @62
    == DMORTE @77
    DO ~IncrementGlobal("Nordom_Talked_Morte","GLOBAL",1)~
EXIT

CHAIN
  IF ~Global("Morte_Talked_Grace","GLOBAL",7) InParty("Annah")NearbyDialog("DANNAH") InParty("Grace")NearbyDialog("DGRACE")~ THEN
    BMORTE Morte-Annah-Grace-1
    @63 DO ~%BanterDo%~
    == DANNAH @64
    == BMORTE @65
    == DGRACE @66
    == BMORTE @67
    DO ~IncrementGlobal("Morte_Talked_Grace","GLOBAL",1)~
EXIT

CHAIN
  IF ~Global("Morte_Talked_Grace","GLOBAL",8) InParty("Annah")NearbyDialog("DANNAH") InParty("Grace")NearbyDialog("DGRACE")~ THEN
    BMORTE Morte-Annah-Grace-2
    @68 DO ~%BanterDo%~
    == DANNAH @69
    == BMORTE @70
    == DGRACE @71
    == BMORTE @72
    DO ~IncrementGlobal("Morte_Talked_Grace","GLOBAL",1)~
EXIT

CHAIN
  IF ~Global("Grace_Talked_Dakkon","GLOBAL",2) InParty("Dakkon")NearbyDialog("Dakkon")~ THEN
    BGRACE Grace-Dakkon-1
    @74 DO ~%BanterDo%~
    == DDAKKON @75
    DO ~IncrementGlobal("Grace_Talked_Dakkon","GLOBAL",1)~
EXIT

APPEND DMORTE
  IF ~~ THEN BEGIN Vhailor-Morte-1
    SAY @76
    IF ~~ THEN EXIT
  END
END  
ALTER_TRANS BVHAILOR BEGIN 1 END BEGIN 0 END BEGIN "EPILOGUE" ~EXTERN DMORTE Vhailor-Morte-1~ END
