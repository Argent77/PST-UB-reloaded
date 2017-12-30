APPEND DMORTE
  IF WEIGHT #-100
   ~Global("Current_Area","GLOBAL",600) Global("Morte_Clerks_Comment","AR0600",0)~ THEN
   BEGIN Morte-Clerks
     SAY @1
     IF ~~ THEN DO ~SetGlobal("Morte_Clerks_Comment","AR0600",1)~ EXIT
  END
END

APPEND DGRACE
  IF WEIGHT #-100
   ~Global("Current_Area","GLOBAL",600) Global("Grace_Clerks_Comment","AR0600",0)~ THEN
   BEGIN Grace-Clerks
     SAY @2
     IF ~~ THEN DO ~SetGlobal("Grace_Clerks_Comment","AR0600",1)~ EXIT
  END

  IF WEIGHT #-90
   ~Global("Current_Area","GLOBAL",400) Global("Grace_Fell_Comment","AR0400",0)~ THEN
   BEGIN Grace-Clerks
     SAY @3
     IF ~~ THEN DO ~SetGlobal("Grace_Fell_Comment","AR0400",1)~ EXIT
  END

  IF WEIGHT #-80
   ~Global("Current_Area","GLOBAL",100) Global("Grace_Hive_Comment","GLOBAL",0)~ THEN
   BEGIN Grace-Hive-100
     SAY @31
     IF ~~ THEN DO ~SetGlobal("Grace_Hive_Comment","GLOBAL",1)~ EXIT
  END

  IF WEIGHT #-79
   ~Global("Current_Area","GLOBAL",200) Global("Grace_Hive_Comment","GLOBAL",0)~ THEN
   BEGIN Grace-Hive-200
     SAY @31
     IF ~~ THEN DO ~SetGlobal("Grace_Hive_Comment","GLOBAL",1)~ EXIT
  END

  IF WEIGHT #-78
   ~Global("Current_Area","GLOBAL",300) Global("Grace_Hive_Comment","GLOBAL",0)~ THEN
   BEGIN Grace-Hive-300
     SAY @31
     IF ~~ THEN DO ~SetGlobal("Grace_Hive_Comment","GLOBAL",1)~ EXIT
  END

  IF WEIGHT #-77
   ~Global("Current_Area","GLOBAL",601) Global("Grace_Festhall_Comment","AR0601",0)~ THEN
   BEGIN Grace-Festhall-1
     SAY @78
     IF ~~ THEN DO ~SetGlobal("Grace_Festhall_Comment","AR0601",1)~ EXIT
  END
END

// ==================================================== Version 4.0 ==================================================

// Start PC Themes when talking to them
ADD_TRANS_ACTION DDAKKON BEGIN 190 191 192 END BEGIN 0 END ~%sc_song_dakkon%~

ADD_TRANS_ACTION DANNAH BEGIN 451 460 END BEGIN 0 1 END ~%sc_song_annah%~
ADD_TRANS_ACTION DANNAH BEGIN 187 END BEGIN 0 1 2 3 4 5 6 7 8 9 10 12 13 14 15 16 END ~%sc_song_annah%~

ADD_TRANS_ACTION DGRACE BEGIN 139 END BEGIN 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 END ~%sc_song_grace%~

ADD_TRANS_ACTION DNORDOM BEGIN 9 END BEGIN 0 1 2 3 4 5 6 7 8 9 10 11 12 END ~%sc_song_nordom%~

ADD_TRANS_ACTION DVHAIL BEGIN 10 END BEGIN 0 END ~%sc_song_vhailor%~

ADD_TRANS_ACTION DIGNUS BEGIN 16 END BEGIN 0 1 2 3 4 5 6 7 8 END ~%sc_song_ignus%~

ADD_TRANS_ACTION DMORTE BEGIN 729 END BEGIN 0 1 2 3 4 5 6 7 8 9 10 END ~%sc_song_morte%~


// ==================================== "GAINED AN ABILITY" SOUND ====================================
// Moved to RS&B 4.0 from Fixpack 3.0

// Deionarra - Raise Dead
ADD_TRANS_ACTION DDEIONS BEGIN 73 END BEGIN 0 END ~DisplayString(Protagonist,37078)~
ALTER_TRANS DDEIONS BEGIN 73 END BEGIN 0 END BEGIN "JOURNAL" ~~ END
ALTER_TRANS DDEIONS BEGIN 74 END BEGIN 0 END BEGIN "JOURNAL" ~#66917~ END

// Stale Mary - Stories Bones Tell
ADD_TRANS_ACTION DSTALEMA BEGIN 11 END BEGIN 0 END ~DisplayString(Protagonist,37078)~
ALTER_TRANS DSTALEMA BEGIN 11 END BEGIN 0 END BEGIN "JOURNAL" ~~ END
ALTER_TRANS DSTALEMA BEGIN 12 END BEGIN 0 END BEGIN "JOURNAL" ~#21911~ END

// Splinter - Sensory Touch
ADD_TRANS_ACTION DSPLINT BEGIN 26 END BEGIN 0 END ~DisplayString(Protagonist,37078)~



// The rest of this file is all Morte-Zombie Flirts

APPEND DMORTE
  IF ~~ THEN BEGIN Morte-Flirt-0
    SAY @10
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",1)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-1
    SAY @5
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",2)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-2
    SAY @23
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",3)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-3
    SAY @7
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",4)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-4
    SAY @8
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",5)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-5
    SAY @9
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",6)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-6
    SAY @4
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",7)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-7
    SAY @11
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",8)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-8
    SAY @12
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",9)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-9
    SAY @13
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",10)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-10
    SAY @14
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",11)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-11
    SAY @15
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",12)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-12
    SAY @16
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",13)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-13
    SAY @28
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",14)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-14
    SAY @18
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",15)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-15
    SAY @19
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",16)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-16
    SAY @20
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",17)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-17
    SAY @29
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",18)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-18
    SAY @22
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",19)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-19
    SAY @6
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",20)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-20
    SAY @24
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",21)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-21
    SAY @25
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",22)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-22
    SAY @26
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",23)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-23
    SAY @27
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",24)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-24
    SAY @17
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",25)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-25
    SAY @21
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",26)~ EXIT
  END

  IF ~~ THEN BEGIN Morte-Flirt-26
    SAY @30
    IF ~~ THEN DO ~SetGlobal("Morte_Zombie_Flirt","GLOBAL",0)~ EXIT
  END
END

ADD_TRANS_TRIGGER DZF1072  0 ~!NearbyDialog("DMORTE")~ DO 6 7
ADD_TRANS_TRIGGER DZF1072  1 ~!NearbyDialog("DMORTE")~ 2 DO 1

ADD_TRANS_TRIGGER DZF1096  0 ~!NearbyDialog("DMORTE")~ DO 6 7
ADD_TRANS_TRIGGER DZF1096  1 ~!NearbyDialog("DMORTE")~ 2 DO 1

ADD_TRANS_TRIGGER DZF114   0 ~!NearbyDialog("DMORTE")~ DO 6 7
ADD_TRANS_TRIGGER DZF114   1 ~!NearbyDialog("DMORTE")~ 2 DO 1

ADD_TRANS_TRIGGER DZF1148  0 ~!NearbyDialog("DMORTE")~ DO 6 7
ADD_TRANS_TRIGGER DZF1148  1 ~!NearbyDialog("DMORTE")~ 2 DO 1

ADD_TRANS_TRIGGER DZF444   0 ~!NearbyDialog("DMORTE")~ DO 6 7
ADD_TRANS_TRIGGER DZF444   1 ~!NearbyDialog("DMORTE")~ 2 DO 1

ADD_TRANS_TRIGGER DZF594   0 ~!NearbyDialog("DMORTE")~ DO 6 7
ADD_TRANS_TRIGGER DZF594   1 ~!NearbyDialog("DMORTE")~ 2 DO 1

ADD_TRANS_TRIGGER DZF626   0 ~!NearbyDialog("DMORTE")~ DO 6 7
ADD_TRANS_TRIGGER DZF626   1 ~!NearbyDialog("DMORTE")~ 2 DO 1

ADD_TRANS_TRIGGER DZF679   0 ~!NearbyDialog("DMORTE")~ DO 6 7
ADD_TRANS_TRIGGER DZF679   1 ~!NearbyDialog("DMORTE")~ 2 DO 1

ADD_TRANS_TRIGGER DZF832   0 ~!NearbyDialog("DMORTE")~ DO 6 7
ADD_TRANS_TRIGGER DZF832   1 ~!NearbyDialog("DMORTE")~ 2 DO 1

ADD_TRANS_TRIGGER DZF891   0 ~!NearbyDialog("DMORTE")~ DO 6 7
ADD_TRANS_TRIGGER DZF891   1 ~!NearbyDialog("DMORTE")~ 2 DO 1

ADD_TRANS_TRIGGER DZF916   0 ~!NearbyDialog("DMORTE")~ DO 6 7
ADD_TRANS_TRIGGER DZF916   1 ~!NearbyDialog("DMORTE")~ 2 DO 1

ADD_TRANS_TRIGGER DZOMFEM  0 ~!NearbyDialog("DMORTE")~ DO 6 7
ADD_TRANS_TRIGGER DZOMFEM  1 ~!NearbyDialog("DMORTE")~ 2 DO 1

ADD_TRANS_TRIGGER DZOMFBAR 0 ~!NearbyDialog("DMORTE")~ DO 4 5
ADD_TRANS_TRIGGER DZOMFBAR 1 ~!NearbyDialog("DMORTE")~ 2 DO 1

EXTEND_BOTTOM DZF1072 0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-26
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF1096 0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-26
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF114 0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-26
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF1148 0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-26
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF444 0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-26
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF594 0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-26
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF626 0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-26
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF679 0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-26
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-26
 END

 EXTEND_BOTTOM DZF832 0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-26
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF891 0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-26
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF916 0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-26
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMFEM 0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-26
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMFBAR 0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35141 EXTERN DMORTE Morte-Flirt-26
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35142 EXTERN DMORTE Morte-Flirt-26
 END


EXTEND_BOTTOM DZF1072 1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF1072 2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF1096 1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF1096 2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF114 1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF114 2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF1148 1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF1148 2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF444 1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF444 2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF594 1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF594 2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF626 1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF626 2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF679 1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF679 2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF832 1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF832 2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF891 1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF891 2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF916 1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZF916 2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMFEM 1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMFEM 2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMFBAR 1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMFBAR 2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1) Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #35138 EXTERN DMORTE Morte-Flirt-26
 END



ADD_TRANS_TRIGGER DZOMCITF 0 ~!NearbyDialog("DMORTE")~ DO 2
ADD_TRANS_TRIGGER DZOMCITF 1 ~!NearbyDialog("DMORTE")~ DO 1
ADD_TRANS_TRIGGER DZOMCITF 2 ~!NearbyDialog("DMORTE")~ DO 0
ADD_TRANS_TRIGGER DZOMCITF 3 ~!NearbyDialog("DMORTE")~ DO 1
ADD_TRANS_TRIGGER DZOMCITF 4 ~!NearbyDialog("DMORTE")~ DO 7
ADD_TRANS_TRIGGER DZOMCITF 5 ~!NearbyDialog("DMORTE")~ DO 7
ADD_TRANS_TRIGGER DZOMCITF 6 ~!NearbyDialog("DMORTE")~ DO 2
ADD_TRANS_TRIGGER DZOMCITF 7 ~!NearbyDialog("DMORTE")~ DO 2
ADD_TRANS_TRIGGER DZOMCITF 8 ~!NearbyDialog("DMORTE")~ DO 2
ADD_TRANS_TRIGGER DZOMCITF 9 ~!NearbyDialog("DMORTE")~ DO 5
ADD_TRANS_TRIGGER DZOMCITF 10 ~!NearbyDialog("DMORTE")~ DO 4
ADD_TRANS_TRIGGER DZOMCITF 11 ~!NearbyDialog("DMORTE")~ DO 4
ADD_TRANS_TRIGGER DZOMCITF 12 ~!NearbyDialog("DMORTE")~ DO 4
ADD_TRANS_TRIGGER DZOMCITF 13 ~!NearbyDialog("DMORTE")~ DO 4
ADD_TRANS_TRIGGER DZOMCITF 14 ~!NearbyDialog("DMORTE")~ DO 5
ADD_TRANS_TRIGGER DZOMCITF 15 ~!NearbyDialog("DMORTE")~ DO 4
ADD_TRANS_TRIGGER DZOMCITF 16 ~!NearbyDialog("DMORTE")~ DO 5
ADD_TRANS_TRIGGER DZOMCITF 17 ~!NearbyDialog("DMORTE")~ DO 5
ADD_TRANS_TRIGGER DZOMCITF 18 ~!NearbyDialog("DMORTE")~ DO 4
ADD_TRANS_TRIGGER DZOMCITF 19 ~!NearbyDialog("DMORTE")~ DO 5
ADD_TRANS_TRIGGER DZOMCITF 20 ~!NearbyDialog("DMORTE")~ DO 3
ADD_TRANS_TRIGGER DZOMCITF 21 ~!NearbyDialog("DMORTE")~ DO 2
ADD_TRANS_TRIGGER DZOMCITF 22 ~!NearbyDialog("DMORTE")~ DO 2
ADD_TRANS_TRIGGER DZOMCITF 23 ~!NearbyDialog("DMORTE")~ DO 2
ADD_TRANS_TRIGGER DZOMCITF 24 ~!NearbyDialog("DMORTE")~ DO 2
ADD_TRANS_TRIGGER DZOMCITF 26 ~!NearbyDialog("DMORTE")~ DO 2

EXTEND_BOTTOM DZOMCITF 0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19559 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19558 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19569 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19556 EXTERN DMORTE Morte-Flirt-26
 END

EXTEND_BOTTOM DZOMCITF 26
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",0)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-0
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",1)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-1
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",2)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-2
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",3)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-3
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",4)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-4
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",5)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-5
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",6)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-6
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",7)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-7
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",8)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-8
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",9)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-9
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",10)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-10
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",11)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-11
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",12)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-12
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",13)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-13
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",14)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-14
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",15)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-15
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",16)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-16
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",17)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-17
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",18)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-18
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",19)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-19
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",20)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-20
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",21)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-21
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",22)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-22
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",23)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-23
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",24)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-24
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",25)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-25
  IF ~NearbyDialog("DMORTE") Global("Morte_Zombie_Flirt","GLOBAL",26)~ THEN REPLY #19665 EXTERN DMORTE Morte-Flirt-26
 END
