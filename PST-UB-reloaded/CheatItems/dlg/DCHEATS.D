// Author:  Qwinn (Paul Escalona)
// Date:    05/06/08

// Revised by: Argent77

BEGIN ~DCHEATS~

IF ~~ THEN BEGIN 0
  SAY #50431
  IF ~~ THEN REPLY #50431 EXIT
 END

IF ~True()~ THEN BEGIN 1
  SAY @0 /* ~The Tome hums with the power of... well.. of cheating. Blatant cheating.~ */
  IF ~~ THEN REPLY @1 /* ~Use the Teleport Cheat.~ */ GOTO 2
  IF ~~ THEN REPLY @2 /* ~Use the Rest Anywhere Cheat.~ */ GOTO 3
  IF ~~ THEN REPLY @3 /* ~Use the Wealth Cheat.~ */ GOTO 4
  IF ~~ THEN REPLY @4 /* ~Use the Attribute Score Cheat.~ */ GOTO 5
  IF ~~ THEN REPLY @5 /* ~Use the Death Cheat.~ */ GOTO 6
  IF ~~ THEN REPLY @6 /* ~Use the Experience Cheat.~ */ GOTO 7
  IF ~~ THEN REPLY @7 /* ~Use the Word o' Good and Evil Cheat.~ */ GOTO 8
  IF ~~ THEN REPLY @8 /* ~Use the Word o' Law and Chaos Cheat.~ */ GOTO 9
  IF ~~ THEN REPLY @9 /* ~Put the Tome o' Cheats away.~ */ EXIT
 END

IF ~~ THEN BEGIN 2
  SAY @10 /* ~Where would you like to teleport to?

NOTE:  EXTRA TRIPLE DANGER-WILL-ROBINSON SUPER WARNING:  Teleporting somewhere you've not yet reached in game could completely break your game.  Use at your own risk, and that would be a big big risk.~ */
  IF ~~ THEN REPLY #54253 DO ~TeleportParty("AR0101",[1050.2350],0)~ EXIT
  IF ~~ THEN REPLY #54254 DO ~TeleportParty("AR0200",[1748.1940],0)~ EXIT
  IF ~~ THEN REPLY #54256 DO ~TeleportParty("AR0300",[1676.1336],0)~ EXIT
  IF ~~ THEN REPLY #54257 DO ~TeleportParty("AR0400",[1965.1662],0)~ EXIT
  IF ~~ THEN REPLY #54258 DO ~TeleportParty("AR0500",[1698.1937],0)~ EXIT
  IF ~~ THEN REPLY #54259 DO ~TeleportParty("AR0600",[1865.1806],0)~ EXIT
  IF ~~ THEN REPLY #54260 DO ~TeleportParty("AR1400",[1993.1747],0)~ EXIT
  IF ~~ THEN REPLY @11 /* ~Never mind.  Let me review the chapters again.~ */ GOTO 1
 END

IF ~~ THEN BEGIN 3
  SAY @12 /* ~A beam of light issues from the Tome, erecting an impenetrable magical forcefield around your group which allows you to rest here, safe from all dangers.~ */
  IF ~~ THEN REPLY @13 /* ~Break out the pillows.~ */ DO ~%sc_fadetoblack% Wait(1) %sc_restparty% %sc_fadefromblack%~ EXIT
  IF ~~ THEN REPLY @11 /* ~Never mind.  Let me review the chapters again.~ */ GOTO 1
 END

IF ~~ THEN BEGIN 4
  SAY @14 /* ~Reading the incantation on this page will, apparently, cause one hundred thousand copper pieces to materialize in front of you. How you're going to carry it all is your problem, but you're sure you'll manage somehow.~ */
  IF ~~ THEN REPLY @15 /* ~Intone:  'Show me the money!'~ */ DO ~%sc_createpartygold%(100000)~ GOTO 1
  IF ~~ THEN REPLY @11 /* ~Never mind.  Let me review the chapters again.~ */ GOTO 1
 END

IF ~~ THEN BEGIN 5
  SAY @16 /* ~This chapter allows you to set any one of your attributes to any level you wish.  Which attribute would you like to change?~ */
  IF ~~ THEN REPLY #62374 GOTO 10
  IF ~~ THEN REPLY #62375 GOTO 11
  IF ~~ THEN REPLY #62376 GOTO 12
  IF ~~ THEN REPLY #62377 GOTO 13
  IF ~~ THEN REPLY #62378 GOTO 14
  IF ~~ THEN REPLY #62379 GOTO 15
  IF ~~ THEN REPLY #4197  GOTO 16
  IF ~~ THEN REPLY @11 /* ~Never mind.  Let me review the chapters again.~ */ GOTO 1
 END

IF ~~ THEN BEGIN 6
  SAY @17 /* ~This chapter allows you to die, though it doesn't remove your immortality.~ */
  IF ~~ THEN REPLY #53615 DO ~Kill(Protagonist)~ EXIT
  IF ~~ THEN REPLY @11 /* ~Never mind.  Let me review the chapters again.~ */ GOTO 1
 END

IF ~~ THEN BEGIN 7
  SAY @18 /* ~How much experience do you want?~ */
  IF ~~ THEN REPLY @19 /* ~1,000 experience just to myself.~ */ DO ~GiveExperience(Protagonist,1000)~ GOTO 1
  IF ~~ THEN REPLY @20 /* ~10,000 experience just to myself.~ */ DO ~GiveExperience(Protagonist,10000)~ GOTO 1
  IF ~~ THEN REPLY @21 /* ~100,000 experience just to myself.~ */ DO ~GiveExperience(Protagonist,100000)~ GOTO 1
  IF ~~ THEN REPLY @22 /* ~1,000,000 experience just to myself.~ */ DO ~GiveExperience(Protagonist,1000000)~ GOTO 1
  IF ~~ THEN REPLY @23 /* ~1,000 experience to the party.~ */ DO ~AddexperienceParty(1000)~ GOTO 1
  IF ~~ THEN REPLY @24 /* ~10,000 experience to the party.~ */ DO ~AddexperienceParty(10000)~ GOTO 1
  IF ~~ THEN REPLY @25 /* ~100,000 experience to the party.~ */ DO ~AddexperienceParty(100000)~ GOTO 1
  IF ~~ THEN REPLY @26 /* ~1,000,000 experience to the party.~ */ DO ~AddexperienceParty(1000000)~ GOTO 1
  IF ~~ THEN REPLY @11 /* ~Never mind.  Let me review the chapters again.~ */ GOTO 1
 END

IF ~~ THEN BEGIN 8
  SAY @27 /* ~How Good do you want to be?~ */
  IF ~~ THEN REPLY @28 /* ~VERY Good.~ */ DO ~SetGlobal("Good","GLOBAL",50)~ GOTO 1
  IF ~~ THEN REPLY @29 /* ~Barely Good.~ */ DO ~SetGlobal("Good","GLOBAL",15)~ GOTO 1
  IF ~~ THEN REPLY @30 /* ~Neutral.~ */ DO ~SetGlobal("Good","GLOBAL",0)~ GOTO 1
  IF ~~ THEN REPLY @31 /* ~Barely Evil.~ */ DO ~SetGlobal("Good","GLOBAL",-21)~ GOTO 1
  IF ~~ THEN REPLY @32 /* ~VERY Evil.~ */ DO ~SetGlobal("Good","GLOBAL",-50)~ GOTO 1
  IF ~~ THEN REPLY @11 /* ~Never mind.  Let me review the chapters again.~ */ GOTO 1
 END

IF ~~ THEN BEGIN 9
  SAY @33 /* ~How Lawful do you want to be?~ */
  IF ~~ THEN REPLY @34 /* ~VERY Lawful.~ */ DO ~SetGlobal("Law","GLOBAL",50)~ GOTO 1
  IF ~~ THEN REPLY @35 /* ~Barely Lawful.~ */ DO ~SetGlobal("Law","GLOBAL",15)~ GOTO 1
  IF ~~ THEN REPLY @30 /* ~Neutral.~ */ DO ~SetGlobal("Law","GLOBAL",0)~ GOTO 1
  IF ~~ THEN REPLY @36 /* ~Barely Chaotic.~ */ DO ~SetGlobal("Law","GLOBAL",-21)~ GOTO 1
  IF ~~ THEN REPLY @37 /* ~VERY Chaotic.~ */ DO ~SetGlobal("Law","GLOBAL",-50)~ GOTO 1
  IF ~~ THEN REPLY @11 /* ~Never mind.  Let me review the chapters again.~ */ GOTO 1
 END

IF ~~ THEN BEGIN 10
  SAY @38 /* ~What would you like to do to your Strength? (Raise it below 3 or above 25 at your own risk!)~ */
  IF ~~ THEN REPLY @39 /* ~Raise it by 1.~ */  DO ~PermanentStatChange(Protagonist,STR,RAISE,1)~ GOTO 1
  IF ~~ THEN REPLY @40 /* ~Raise it by 2.~ */  DO ~PermanentStatChange(Protagonist,STR,RAISE,2)~ GOTO 1
  IF ~~ THEN REPLY @41 /* ~Raise it by 3.~ */  DO ~PermanentStatChange(Protagonist,STR,RAISE,3)~ GOTO 1
  IF ~~ THEN REPLY @42 /* ~Raise it by 5.~ */  DO ~PermanentStatChange(Protagonist,STR,RAISE,5)~ GOTO 1
  IF ~~ THEN REPLY @43 /* ~Raise it by 10.~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,10)~ GOTO 1
  IF ~~ THEN REPLY @44 /* ~Lower it by 1.~ */  DO ~PermanentStatChange(Protagonist,STR,LOWER,1)~ GOTO 1
  IF ~~ THEN REPLY @45 /* ~Lower it by 2.~ */  DO ~PermanentStatChange(Protagonist,STR,LOWER,2)~ GOTO 1
  IF ~~ THEN REPLY @46 /* ~Lower it by 3.~ */  DO ~PermanentStatChange(Protagonist,STR,LOWER,3)~ GOTO 1
  IF ~~ THEN REPLY @47 /* ~Lower it by 5.~ */  DO ~PermanentStatChange(Protagonist,STR,LOWER,5)~ GOTO 1
  IF ~~ THEN REPLY @48 /* ~Lower it by 10.~ */ DO ~PermanentStatChange(Protagonist,STR,LOWER,10)~ GOTO 1
  IF ~~ THEN REPLY @11 /* ~Never mind.  Let me review the chapters again.~ */ GOTO 1
 END

IF ~~ THEN BEGIN 11
  SAY @49 /* ~What would you like to do to your Intelligence? (Raise it below 3 or above 25 at your own risk!)~ */
  IF ~~ THEN REPLY @39 /* ~Raise it by 1.~ */  DO ~PermanentStatChange(Protagonist,INT,RAISE,1)~ GOTO 1
  IF ~~ THEN REPLY @40 /* ~Raise it by 2.~ */  DO ~PermanentStatChange(Protagonist,INT,RAISE,2)~ GOTO 1
  IF ~~ THEN REPLY @41 /* ~Raise it by 3.~ */  DO ~PermanentStatChange(Protagonist,INT,RAISE,3)~ GOTO 1
  IF ~~ THEN REPLY @42 /* ~Raise it by 5.~ */  DO ~PermanentStatChange(Protagonist,INT,RAISE,5)~ GOTO 1
  IF ~~ THEN REPLY @43 /* ~Raise it by 10.~ */ DO ~PermanentStatChange(Protagonist,INT,RAISE,10)~ GOTO 1
  IF ~~ THEN REPLY @44 /* ~Lower it by 1.~ */  DO ~PermanentStatChange(Protagonist,INT,LOWER,1)~ GOTO 1
  IF ~~ THEN REPLY @45 /* ~Lower it by 2.~ */  DO ~PermanentStatChange(Protagonist,INT,LOWER,2)~ GOTO 1
  IF ~~ THEN REPLY @46 /* ~Lower it by 3.~ */  DO ~PermanentStatChange(Protagonist,INT,LOWER,3)~ GOTO 1
  IF ~~ THEN REPLY @47 /* ~Lower it by 5.~ */  DO ~PermanentStatChange(Protagonist,INT,LOWER,5)~ GOTO 1
  IF ~~ THEN REPLY @48 /* ~Lower it by 10.~ */ DO ~PermanentStatChange(Protagonist,INT,LOWER,10)~ GOTO 1
  IF ~~ THEN REPLY @11 /* ~Never mind.  Let me review the chapters again.~ */ GOTO 1
 END

IF ~~ THEN BEGIN 12
  SAY @50 /* ~What would you like to do to your Wisdom? (Raise it below 3 or above 25 at your own risk!)~ */
  IF ~~ THEN REPLY @39 /* ~Raise it by 1.~ */  DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)~ GOTO 1
  IF ~~ THEN REPLY @40 /* ~Raise it by 2.~ */  DO ~PermanentStatChange(Protagonist,WIS,RAISE,2)~ GOTO 1
  IF ~~ THEN REPLY @41 /* ~Raise it by 3.~ */  DO ~PermanentStatChange(Protagonist,WIS,RAISE,3)~ GOTO 1
  IF ~~ THEN REPLY @42 /* ~Raise it by 5.~ */  DO ~PermanentStatChange(Protagonist,WIS,RAISE,5)~ GOTO 1
  IF ~~ THEN REPLY @43 /* ~Raise it by 10.~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,10)~ GOTO 1
  IF ~~ THEN REPLY @44 /* ~Lower it by 1.~ */  DO ~PermanentStatChange(Protagonist,WIS,LOWER,1)~ GOTO 1
  IF ~~ THEN REPLY @45 /* ~Lower it by 2.~ */  DO ~PermanentStatChange(Protagonist,WIS,LOWER,2)~ GOTO 1
  IF ~~ THEN REPLY @46 /* ~Lower it by 3.~ */  DO ~PermanentStatChange(Protagonist,WIS,LOWER,3)~ GOTO 1
  IF ~~ THEN REPLY @47 /* ~Lower it by 5.~ */  DO ~PermanentStatChange(Protagonist,WIS,LOWER,5)~ GOTO 1
  IF ~~ THEN REPLY @48 /* ~Lower it by 10.~ */ DO ~PermanentStatChange(Protagonist,WIS,LOWER,10)~ GOTO 1
  IF ~~ THEN REPLY @11 /* ~Never mind.  Let me review the chapters again.~ */ GOTO 1
 END

IF ~~ THEN BEGIN 13
  SAY @51 /* ~What would you like to do to your Dexterity? (Raise it below 3 or above 25 at your own risk!)~ */
  IF ~~ THEN REPLY @39 /* ~Raise it by 1.~ */  DO ~PermanentStatChange(Protagonist,DEX,RAISE,1)~ GOTO 1
  IF ~~ THEN REPLY @40 /* ~Raise it by 2.~ */  DO ~PermanentStatChange(Protagonist,DEX,RAISE,2)~ GOTO 1
  IF ~~ THEN REPLY @41 /* ~Raise it by 3.~ */  DO ~PermanentStatChange(Protagonist,DEX,RAISE,3)~ GOTO 1
  IF ~~ THEN REPLY @42 /* ~Raise it by 5.~ */  DO ~PermanentStatChange(Protagonist,DEX,RAISE,5)~ GOTO 1
  IF ~~ THEN REPLY @43 /* ~Raise it by 10.~ */ DO ~PermanentStatChange(Protagonist,DEX,RAISE,10)~ GOTO 1
  IF ~~ THEN REPLY @44 /* ~Lower it by 1.~ */  DO ~PermanentStatChange(Protagonist,DEX,LOWER,1)~ GOTO 1
  IF ~~ THEN REPLY @45 /* ~Lower it by 2.~ */  DO ~PermanentStatChange(Protagonist,DEX,LOWER,2)~ GOTO 1
  IF ~~ THEN REPLY @46 /* ~Lower it by 3.~ */  DO ~PermanentStatChange(Protagonist,DEX,LOWER,3)~ GOTO 1
  IF ~~ THEN REPLY @47 /* ~Lower it by 5.~ */  DO ~PermanentStatChange(Protagonist,DEX,LOWER,5)~ GOTO 1
  IF ~~ THEN REPLY @48 /* ~Lower it by 10.~ */ DO ~PermanentStatChange(Protagonist,DEX,LOWER,10)~ GOTO 1
  IF ~~ THEN REPLY @11 /* ~Never mind.  Let me review the chapters again.~ */ GOTO 1
 END

IF ~~ THEN BEGIN 14
  SAY @52 /* ~What would you like to do to your Constitution? (Raise it below 3 or above 25 at your own risk!)~ */
  IF ~~ THEN REPLY @39 /* ~Raise it by 1.~ */  DO ~PermanentStatChange(Protagonist,CON,RAISE,1)~ GOTO 1
  IF ~~ THEN REPLY @40 /* ~Raise it by 2.~ */  DO ~PermanentStatChange(Protagonist,CON,RAISE,2)~ GOTO 1
  IF ~~ THEN REPLY @41 /* ~Raise it by 3.~ */  DO ~PermanentStatChange(Protagonist,CON,RAISE,3)~ GOTO 1
  IF ~~ THEN REPLY @42 /* ~Raise it by 5.~ */  DO ~PermanentStatChange(Protagonist,CON,RAISE,5)~ GOTO 1
  IF ~~ THEN REPLY @43 /* ~Raise it by 10.~ */ DO ~PermanentStatChange(Protagonist,CON,RAISE,10)~ GOTO 1
  IF ~~ THEN REPLY @44 /* ~Lower it by 1.~ */  DO ~PermanentStatChange(Protagonist,CON,LOWER,1)~ GOTO 1
  IF ~~ THEN REPLY @45 /* ~Lower it by 2.~ */  DO ~PermanentStatChange(Protagonist,CON,LOWER,2)~ GOTO 1
  IF ~~ THEN REPLY @46 /* ~Lower it by 3.~ */  DO ~PermanentStatChange(Protagonist,CON,LOWER,3)~ GOTO 1
  IF ~~ THEN REPLY @47 /* ~Lower it by 5.~ */  DO ~PermanentStatChange(Protagonist,CON,LOWER,5)~ GOTO 1
  IF ~~ THEN REPLY @48 /* ~Lower it by 10.~ */ DO ~PermanentStatChange(Protagonist,CON,LOWER,10)~ GOTO 1
  IF ~~ THEN REPLY @11 /* ~Never mind.  Let me review the chapters again.~ */ GOTO 1
 END

IF ~~ THEN BEGIN 15
  SAY @53 /* ~What would you like to do to your Charisma? (Change it to below 3 or above 25 at your own risk!)~ */
  IF ~~ THEN REPLY @39 /* ~Raise it by 1.~ */  DO ~PermanentStatChange(Protagonist,CHR,RAISE,1)~ GOTO 1
  IF ~~ THEN REPLY @40 /* ~Raise it by 2.~ */  DO ~PermanentStatChange(Protagonist,CHR,RAISE,2)~ GOTO 1
  IF ~~ THEN REPLY @41 /* ~Raise it by 3.~ */  DO ~PermanentStatChange(Protagonist,CHR,RAISE,3)~ GOTO 1
  IF ~~ THEN REPLY @42 /* ~Raise it by 5.~ */  DO ~PermanentStatChange(Protagonist,CHR,RAISE,5)~ GOTO 1
  IF ~~ THEN REPLY @43 /* ~Raise it by 10.~ */ DO ~PermanentStatChange(Protagonist,CHR,RAISE,10)~ GOTO 1
  IF ~~ THEN REPLY @44 /* ~Lower it by 1.~ */  DO ~PermanentStatChange(Protagonist,CHR,LOWER,1)~ GOTO 1
  IF ~~ THEN REPLY @45 /* ~Lower it by 2.~ */  DO ~PermanentStatChange(Protagonist,CHR,LOWER,2)~ GOTO 1
  IF ~~ THEN REPLY @46 /* ~Lower it by 3.~ */  DO ~PermanentStatChange(Protagonist,CHR,LOWER,3)~ GOTO 1
  IF ~~ THEN REPLY @47 /* ~Lower it by 5.~ */  DO ~PermanentStatChange(Protagonist,CHR,LOWER,5)~ GOTO 1
  IF ~~ THEN REPLY @48 /* ~Lower it by 10.~ */ DO ~PermanentStatChange(Protagonist,CHR,LOWER,10)~ GOTO 1
  IF ~~ THEN REPLY @11 /* ~Never mind.  Let me review the chapters again.~ */ GOTO 1
 END

IF ~~ THEN BEGIN 16
  SAY @54 /* ~What would you like to do to your Armor Class? (Change it to below -10 or above 10 at your own risk!)~ */
  IF ~~ THEN REPLY @55 /* ~Improve it by 1.~ */  DO ~PermanentStatChange(Protagonist,ARMORCLASS,LOWER,1)~ GOTO 1
  IF ~~ THEN REPLY @56 /* ~Improve it by 2.~ */  DO ~PermanentStatChange(Protagonist,ARMORCLASS,LOWER,2)~ GOTO 1
  IF ~~ THEN REPLY @57 /* ~Improve it by 3.~ */  DO ~PermanentStatChange(Protagonist,ARMORCLASS,LOWER,3)~ GOTO 1
  IF ~~ THEN REPLY @58 /* ~Improve it by 5.~ */  DO ~PermanentStatChange(Protagonist,ARMORCLASS,LOWER,5)~ GOTO 1
  IF ~~ THEN REPLY @59 /* ~Improve it by 10.~ */ DO ~PermanentStatChange(Protagonist,ARMORCLASS,LOWER,10)~ GOTO 1
  IF ~~ THEN REPLY @60 /* ~Worsen it by 1.~ */  DO ~PermanentStatChange(Protagonist,ARMORCLASS,RAISE,1)~ GOTO 1
  IF ~~ THEN REPLY @61 /* ~Worsen it by 2.~ */  DO ~PermanentStatChange(Protagonist,ARMORCLASS,RAISE,2)~ GOTO 1
  IF ~~ THEN REPLY @62 /* ~Worsen it by 3.~ */  DO ~PermanentStatChange(Protagonist,ARMORCLASS,RAISE,3)~ GOTO 1
  IF ~~ THEN REPLY @63 /* ~Worsen it by 5.~ */  DO ~PermanentStatChange(Protagonist,ARMORCLASS,RAISE,5)~ GOTO 1
  IF ~~ THEN REPLY @64 /* ~Worsen it by 10.~ */ DO ~PermanentStatChange(Protagonist,ARMORCLASS,RAISE,10)~ GOTO 1
  IF ~~ THEN REPLY @11 /* ~Never mind.  Let me review the chapters again.~ */ GOTO 1
 END

