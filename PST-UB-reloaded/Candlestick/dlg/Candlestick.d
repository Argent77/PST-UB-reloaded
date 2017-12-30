
// DULTHERA.DLG
// Ask about Pharod after you found him.
// Add Response trigger Global("Pharod","GLOBAL",0)
// Response 32 set flag, add Trigger index 3
ADD_TRANS_TRIGGER DULTHERA 13 ~Global("Pharod","GLOBAL",0)~ DO 0

// ======================================================================================

// The above is fixes by SKARDAVNELNATE.  Below are additional tweaks by Qwinn

// Removed a ton of inappropriate ellipsis all over both Sheryl and Ulthera's dialogues.
// Inconsistent with style of rest of PS:T, the main text editor must not've gone over them.
// Did this in the spelling/grammar correction phase, because that's what it really is.

// Getting rid of the option to claim to be Pharod's friend, as this angers Sheryl and
// it says further attempts to get her to talk are ignored, but then the very next time you
// do try to talk to her she's smiling and chatty and giving you her quest.  It doesn't work.
ADD_TRANS_TRIGGER DSHERYL 6 ~False()~ DO 0

// Sheryl doesn't take her father's ring.  Also, at least -some- sort of experience reward
// for completing the quest seems called for, a total lack of any seems an oversight.
REPLACE_ACTION_TEXT DSHERYL
   ~DestroyItem.*("Arkring",.*,.*)~
   ~DestroyPartyItem("Arkring",FALSE) AddexperienceParty(500)~
