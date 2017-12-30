

// DROBERTA.DLG
// If you kill Curst Administration (Carl Parfidor) Roberta's dialog doesn't make as much sense.
// State trigger 1 add NumTimesTalkedToGT(0)

ADD_STATE_TRIGGER DROBERTA 26 ~NumTimesTalkedToGT(0)~

// ============================================================================================

// The above is by SKARDAVNELNATE.  The following is by Qwinn:

// Don't have Kiri simply disappear.  Will do scripting for her.
REPLACE_ACTION_TEXT DKIRI ~EscapeArea()~ ~ChangeAIScript("0701KIRI",DEFAULT)~

// Close off option to tell Parfidor his wife is trying to kill him after she's already been
// arrested for it.
ADD_TRANS_TRIGGER DADMINAS 8 ~Global("Roberta_Betrayed","GLOBAL",0)~ DO 0
