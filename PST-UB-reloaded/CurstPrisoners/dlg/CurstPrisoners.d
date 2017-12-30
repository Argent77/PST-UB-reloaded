
ADD_TRANS_TRIGGER DPEATO 14 ~GlobalGT("Deva_Plague","GLOBAL",1)~ DO 0
EXTEND_BOTTOM DPEATO 14
  IF ~GlobalLT("Deva_Plague","GLOBAL",2)~ THEN REPLY #58766 DO ~SetGlobal("Deva_Plague","GLOBAL",1)~ GOTO 15
 END

REPLACE_TRIGGER_TEXT DGIB ~Know_Plague~ ~Deva_Plague~
REPLACE_ACTION_TEXT DGIB ~Know_Plague~ ~Deva_Plague~

ADD_TRANS_TRIGGER DYELAAN 13 ~GlobalGT("Deva_Plague","GLOBAL",1)~ DO 0
EXTEND_TOP DYELAAN 13
  IF ~GlobalLT("Deva_Plague","GLOBAL",2)~ THEN REPLY #58469
    DO ~SetGlobal("Know_Plague","GLOBAL",1) SetGlobal("Deva_Plague","GLOBAL",1)~ GOTO 14
 END
