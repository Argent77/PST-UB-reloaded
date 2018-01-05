
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

// ======================================================================================

// The additions below are made by Argent77 for PST-UB Reloaded.

BEGIN DCANTRG2

IF ~!PartyHasItem("Purse") !PartyGold(0) !Global("Candle2_Portal_Open","AR0207",1)~ DCANTRG2.1
  SAY @500 /* This archway extends only a few feet into the east wall before coming to an abrupt end. You would expect the portal that leads out of the tomb to appear here. Unfortunately, you don't have an empty purse in your possession, which is, according to Ulthera, the key to activate it. */
  + ~!PartyGold(0)~ + @501 /* Leave all your money behind. */ DO ~DestroyPartyGold(1000000)~ + DCANTRG2.2
  ++ #48363 /* Leave. */ EXIT
END

IF ~~ DCANTRG2.2
  SAY @502 /* As reluctant as one might be to part with their money, a single wayward look at the body of Sheryl's father makes you reach for it with no hesitation. Before long it's all on the ground. */
  = @503 /* To your surprise it vanishes almost instantly into thin air, followed moments later by a portal opening right before you. */
  IF ~~ DO ~SetGlobal("Candle2_Portal_Open","AR0207",1) %portalcursor_candle2_on% %portaltravel_candle2_on%~ EXIT
END
