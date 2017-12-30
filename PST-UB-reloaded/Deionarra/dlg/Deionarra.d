// ================================================================================================
//                         PLANESCAPE: TORMENT UNFINISHED BUSINESS
//                        COMPONENT:  DEIONARRA'S TRUTH CONVERSATIONS
//                                BY QWINN (Paul Escalona)
// ================================================================================================
// Last Modification Date:  2008/05/09 - v1.00
// ================================================================================================
// Revised by Argent77
// ================================================================================================


// Originally restored by SKARDAVNELNATE, from AIP version 20080408
// WeiDUization by Qwinn

// Last Revision by Qwinn:      20080423
// Ported to PSTEE by Argent77: 20171224

// From SKARD's Longlist:
// "Deionarra Death
// There are several dialog options than can't be accessed before the Fortress of Regrets.
// However a few of them are non specific enough where TNO doesn't need to know all the
// details. Using the Deionarra Sensory Stone and speaking with Iannis should be enough
// to piece together that something happened. Iannis's dialog is too detailed but if it is
// enabled it will now work properly."

// DMOURN1.DLG
// Mourn Deionarra and missing chant setting.
// Response trigger 16 Global("Deionarra_Death_Truth","GLOBAL",1) -> Global("Sensory_Deionarra","GLOBAL",1) Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
// Add Action SetGlobal("Chant","GLOBAL",5)
// Response 43 set flag, add action 40
// Qwinn - Chant setting fixed in my Fixpack
REPLACE_TRIGGER_TEXT DMOURN1
  ~Global[ ]*("Deionarra_Death_Truth",[ ]*"GLOBAL",[ ]*1)~
  ~Global("Sensory_Deionarra","GLOBAL",1) GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)~


// DMOURN2.DLG
// Mourn Deionarra and missing chant setting.
// Response trigger 16 Global("Deionarra_Death_Truth","GLOBAL",1) -> Global("Sensory_Deionarra","GLOBAL",1) Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
// Add Action SetGlobal("Chant","GLOBAL",5)
// Response 42 set flag, add action 40
// Qwinn - Chant setting fixed in my Fixpack
REPLACE_TRIGGER_TEXT DMOURN2
  ~Global[ ]*("Deionarra_Death_Truth",[ ]*"GLOBAL",[ ]*1)~
  ~Global("Sensory_Deionarra","GLOBAL",1) GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)~

// DVHAIL.DLG
// Response trigger 243 GlobalGT("Deionarra_Death_Truth","GLOBAL",1) ->
//                      Global("Sensory_Deionarra","GLOBAL",1)
// Swap Response triggers 243 and 242
ALTER_TRANS DVHAIL BEGIN 148 END BEGIN 4 END
  BEGIN "TRIGGER"
~Global("Sensory_Deionarra","GLOBAL",1)
 GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)~
  END
ALTER_TRANS DVHAIL BEGIN 148 END BEGIN 5 END
  BEGIN "TRIGGER" ~GlobalGT("Deionarra_Death_Truth","GLOBAL",0)~ END

// D0202P.DLG
// Response trigger 35 GlobalGT("Deionarra_Death_Truth","GLOBAL",1) ->
//                     Global("Sensory_Deionarra","GLOBAL",1)
REPLACE_TRIGGER_TEXT D0202P
  ~GlobalGT("Deionarra_Death_Truth",[ ]*"GLOBAL",[ ]*1)~
  ~Global("Sensory_Deionarra","GLOBAL",1)~

// DSKSCRAP.DLG
// Response trigger 32 GlobalGT("Deionarra_Death_Truth","GLOBAL",1) ->
//                     Global("Sensory_Deionarra","GLOBAL",1)
REPLACE_TRIGGER_TEXT DSKSCRAP
  ~GlobalGT("Deionarra_Death_Truth",[ ]*"GLOBAL",[ ]*1)~
  ~Global("Sensory_Deionarra","GLOBAL",1)~
