

// Hailcii'n dialogue fixes
ALTER_TRANS DHAILCII BEGIN 40 END BEGIN 0 END BEGIN "EPILOGUE" ~EXTERN DHAILCII 41~ END
ALTER_TRANS DHAILCII BEGIN 40 END BEGIN 1 END BEGIN "EPILOGUE" ~EXTERN DHAILCII 42~ END
ALTER_TRANS DHAILCII BEGIN 40 END BEGIN 2 END BEGIN "EPILOGUE" ~EXTERN DHAILCII 30~ END

// Add set global timer to Kii'na's dialogue
ADD_TRANS_ACTION DKIINA BEGIN 8 END BEGIN 0 END ~SetGlobalTimer("Kiina_Return","GLOBAL",48000)~
ADD_TRANS_ACTION DKIINA BEGIN 37 END BEGIN 0 1 END ~SetGlobalTimer("Kiina_Return","GLOBAL",48000)~

// Remove NumTimesTalkedToGT(0) condition from post-return Dakkon-nearby dialogue, since recreating her
// resets that trigger.
REPLACE_STATE_TRIGGER DKIINA 61 ~NearbyDialog("DDakkon") Global("Vristigor","GLOBAL",2)~
