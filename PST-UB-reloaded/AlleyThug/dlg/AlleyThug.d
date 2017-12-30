
// =========================== DANGEROUS ALLEY THUG FIX =====================================

ADD_STATE_TRIGGER DGATHUG     0 ~!Dead("Krystall") GlobalLT("Krystall","GLOBAL",2)~ 1
REPLACE_STATE_TRIGGER DGATHUG 2 ~!Dead("Krystall") GlobalGT("Krystall","GLOBAL",2) Dead("BlackR")~
REPLACE_STATE_TRIGGER DGATHUG 3 ~!Dead("Krystall") GlobalGT("Krystall","GLOBAL",2) !Dead("BlackR")~
REPLACE_STATE_TRIGGER DGATHUG 4 ~!Dead("Krystall") Global("Krystall","GLOBAL",2) Dead("Rwill") ~
REPLACE_STATE_TRIGGER DGATHUG 5 ~!Dead("Krystall") Global("Krystall","GLOBAL",2) !Dead("Rwill")~
REPLACE_STATE_TRIGGER DGATHUG 6 ~Dead("Krystall")~

ADD_STATE_TRIGGER DBATHUG     0 ~!Dead("Rwill") GlobalLT("RW","GLOBAL",2)~ 1
REPLACE_STATE_TRIGGER DBATHUG 2 ~!Dead("Rwill") GlobalGT("RW","GLOBAL",2) Dead("BlackR")~
REPLACE_STATE_TRIGGER DBATHUG 3 ~!Dead("Rwill") GlobalGT("RW","GLOBAL",2) !Dead("BlackR")~
REPLACE_STATE_TRIGGER DBATHUG 4 ~!Dead("Rwill") Global("RW","GLOBAL",2) Dead("Krystall") ~
REPLACE_STATE_TRIGGER DBATHUG 5 ~!Dead("Rwill") Global("RW","GLOBAL",2) !Dead("Krystall")~
REPLACE_STATE_TRIGGER DBATHUG 6 ~Dead("Rwill")~
