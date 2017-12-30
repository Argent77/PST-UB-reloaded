
REPLACE_TRIGGER_TEXT DITEETH ~True()~ ~Global("Ingress_Teeth_Installed","GLOBAL",1)~

APPEND DITEETH
  IF ~Global("Ingress_Teeth_Installed","GLOBAL",0)~ THEN BEGIN MITEETH-1
    SAY #7093
    IF ~NearbyDialog("DMorte")~ THEN REPLY #7094 EXTERN DMORTE 137
    IF ~~ THEN REPLY #66856 EXIT
  END
 END


ALTER_TRANS DMORTE BEGIN 138 END BEGIN 0 END
   BEGIN "REPLY" ~@32~ /* ~"Do you think you could use them somehow? As a weapon, maybe?"~ */ END
ALTER_TRANS DMORTE BEGIN 138 END BEGIN 0 END
   BEGIN "EPILOGUE" ~GOTO 139~ END

ALTER_TRANS DMORTE BEGIN 140 END BEGIN 0 END
   BEGIN "REPLY" ~@33~ /* ~"Well, alright. I'm not going to force... uh oh."~ */ END
ALTER_TRANS DMORTE BEGIN 140 END BEGIN 0 END
   BEGIN "EPILOGUE" ~GOTO 148~ END
ADD_TRANS_ACTION DMORTE BEGIN 140 END BEGIN 0 END ~IncrementGlobalOnce("Good_Ingress_Teeth_1","GLOBAL","Good","GLOBAL",1)~

// The above is all that's necessary to restore the content without an epilogue (which doesn't account for why
// Morte doesn't have the teeth equippped when it's over.  The following is an epilogue, written by me, to
// account for it (and hopefully provide some laughs).

REPLACE_ACTION_TEXT DCANDRI ~ICteeth~ ~ITEETH~

ALTER_TRANS DMORTE BEGIN 147 END BEGIN END BEGIN "EPILOGUE" ~EXTERN DMORTE NEWMORTE-1~ END

APPEND DANNAH
  IF ~~ THEN BEGIN NEWANNAH-1
    SAY @0 /* ~Annah, who has remained surprisingly silent through all of this, finally breaks down. She starts laughing uncontrollably, tears streaming from her eyes, leaning against a nearby wall and howling, her tail lashing back and forth with each new eruption of laughter.~ */
    IF ~~ THEN EXTERN ~DMORTE~ NEWMORTE-11
  END

  IF ~~ THEN BEGIN NEWANNAH-2
    SAY @1 /* ~Annah's laughter finally subsides to a normal level. "Oi... skull... I hav'ta say... I didnae think it was possible, but somethin's happened that finally made puttin' up with yer bobbin' 'n chatterin' worth the while, it has." She wipes the tears from her eyes and gives one last delighted chuckle.~ */
    IF ~~ THEN EXTERN ~DMORTE~ NEWMORTE-14
  END
END

APPEND DMORTE
  IF ~~ THEN BEGIN NEWMORTE-1
    SAY @2 /* ~You turn around to go on your way, when you suddenly hear Morte let loose with another howl of pain.~ */
      IF ~Global("Good_Ingress_Teeth_1","GLOBAL",1)~ THEN REPLY @3 /* ~"Oh no... what happened now?"~ */ GOTO ~NEWMORTE-2~
      IF ~Global("Evil_Ingress_Teeth_1","GLOBAL",1)~ THEN REPLY @4 /* ~"...or not. What happened now?"~ */ GOTO ~NEWMORTE-2~
  END

  IF ~~ THEN BEGIN NEWMORTE-2
    SAY @5 /* ~You turn to face Morte again, only to see the Teeth finish ripping themselves loose from his mouth and leap back towards you. You catch them easily. Morte, still grumbling, groans painfully. "I don't know! It seemed like everything was fine for a minute there, but then they ripped themselves out again!" The teeth group themselves in your hand in a way so as to... somehow... *face* Morte, and then *clack* twice at him, fiercely.~ */
      IF ~~ THEN REPLY @6 /* ~"Hmmmm... I'm thinking they're angry with you, Morte."~ */ GOTO ~NEWMORTE-3~
  END

  IF ~~ THEN BEGIN NEWMORTE-3
    SAY @7 /* ~"Oh, I see... um, wait, what? They're *mad* at me? Why?"~ */
      IF ~Global("Good_Ingress_Teeth_1","GLOBAL",1)~ THEN REPLY @8 /* ~"Well, you did insult them, remember? 'Ugly little berks'? 'Little pikers'?"~ */ GOTO ~NEWMORTE-5~
      IF ~Global("Evil_Ingress_Teeth_1","GLOBAL",1)~ THEN REPLY @9 /* ~"Oh, who knows what motivates 'ugly little berks' like these?"~ */ GOTO ~NEWMORTE-4~
  END

  IF ~~ THEN BEGIN NEWMORTE-4
    SAY @10 /* ~The Teeth bite your hand, hard enough to hurt, though not as hard as you're sure they could have.~ */
      IF ~~ THEN REPLY @11 /* ~"Ow! Why you little..."~ */ GOTO ~NEWMORTE-5~
  END

  IF ~~ THEN BEGIN NEWMORTE-5
    SAY @12 /* ~"Oh, you've *gotta* be kidding me... c'mon, Chief, give 'em back."~ */
      IF ~~ THEN REPLY @13 /* ~"Wait, you *want* them now? Can I assume your vow of revenge against me has been tabled?"~ */ GOTO ~NEWMORTE-6~
  END

  IF ~~ THEN BEGIN NEWMORTE-6
    SAY @14 /* ~Morte looks annoyed. "Well, it's just that they might be, you know, useful..." Morte tries to ignore your grin. "Alright, YES, I retract my vow of hideous revenge against you. You're one lucky sod, too, might I add. It would've been horrifying. Happy? Can I have them back now?"~ */
      IF ~~ THEN REPLY @15 /* ~"Alright then. Here you go."~ */ GOTO ~NEWMORTE-7~
  END

  IF ~~ THEN BEGIN NEWMORTE-7
    SAY @16 /* ~As you move to hand them back to Morte, the teeth crawl up your arm until they arrive at your shoulder, chittering and ocassionally clacking angrily at Morte.~ */
      IF ~~ THEN REPLY @17 /* ~"Hmmm. I don't think they're going to be happy until they get an apology, Morte."~ */ GOTO ~NEWMORTE-8~
  END

  IF ~~ THEN BEGIN NEWMORTE-8
    SAY @18 /* ~"I *know* I didn't hear you right, boss."~ */
      IF ~~ THEN REPLY @19 /* ~"I think they did what they did to make a point, Morte, but now that it's made... well, you *did* taunt them, and we know how good you are at that. Sometimes there's a price, you know."~ */ GOTO ~NEWMORTE-9~
  END

  IF ~~ THEN BEGIN NEWMORTE-9
    SAY @20 /* ~Morte sighs. "It's times like this I really miss having eyelids, so I could close them and count to ten." He pauses. "Alright... Teeth, I'm... I'm... wait. No. Sod that. I can't do it. There's only so much a skull can take. I'm *not* going to give an *apology* to a bunch of *ugly* *yellowed* *rotting* *teeth*!"~ */
      IF ~~ THEN REPLY @21 /* ~"Uh oh..."~ */ GOTO ~NEWMORTE-10~
  END

  IF ~~ THEN BEGIN NEWMORTE-10
    SAY @22 /* ~The teeth chatter with outrage for a while and then *clack* sharply twice more at Morte before settling down. You're not sure how you can tell that they're sulking, but you're pretty sure that's what they're doing.~ */
      IF ~NearbyDialog("DANNAH")~ THEN REPLY @23 /* ~"Well, alright, Morte. If you insist. I'll just put these powerful enchanted shape-changing teeth, that by the way I suspect are capable of learning and will grow more powerful and magical as you do, in this pouch here. You let me know when you change your mind."~ */ EXTERN ~DANNAH~ NEWANNAH-1
      IF ~!NearbyDialog("DANNAH")~ THEN REPLY @23 /* ~"Well, alright, Morte. If you insist. I'll just put these powerful enchanted shape-changing teeth, that by the way I suspect are capable of learning and will grow more powerful and magical as you do, in this pouch here. You let me know when you change your mind."~ */ GOTO ~NEWMORTE-11~
  END

  IF ~~ THEN BEGIN NEWMORTE-11
    SAY @24 /* ~Morte winces painfully. "Boss, this may be the most humiliating moment of my entire career as a mimir."~ */
      IF ~~ THEN REPLY @25 /* ~"We all have our torments, Morte. Looks like today this is yours. Well?"~ */ GOTO NEWMORTE-12
  END

  IF ~~ THEN BEGIN NEWMORTE-12
    SAY @26 /* ~Morte groans. "Gah... ALRIGHT! Alright. Alright." Morte appears to steel himself, then says, "Teeth... I'm sorry. Really. You're no uglier than any other enchanted bicuspids I've ever encountered before. You're as nice a shade of yellow as can really go on teeth. And the 'rotting' crack was totally out of line. I hereby tender my apologies and offer to make amends. Alright?"~ */
      IF ~~ THEN REPLY @27 /* ~"Hey, that actually wasn't that bad. Better than I expected, anyway. What do you say, Teeth?"~ */ DO ~TransformPartyItem("ITEETH","ICTEETH",1,0,0)~ GOTO ~NEWMORTE-13~
  END

  IF ~~ THEN BEGIN NEWMORTE-13
    SAY @28 /* ~The teeth chitter for a bit, almost as if they're considering it. After a while, they turn to face Morte and *clack* their teeth once, then settle down comfortably in your shoulder.~ */
      IF ~NearbyDialog("DANNAH")~ THEN REPLY @29 /* ~"I think they're satisfied, Morte. I think they're leaving it up to me as to when and whether or not to equip you with them."~ */ EXTERN ~DANNAH~ NEWANNAH-2
      IF ~!NearbyDialog("DANNAH")~ THEN REPLY @29 /* ~"I think they're satisfied, Morte. I think they're leaving it up to me as to when and whether or not to equip you with them."~ */ GOTO NEWMORTE-14
  END

  IF ~~ THEN BEGIN NEWMORTE-14
    SAY @30 /* ~Morte sighs. "Fine. Fine. Whatever. You're the boss. I'll be over here nursing what's left of my ego back to health. Can we go now?"~ */
    IF ~~ THEN REPLY @31 /* ~"Let's."~ */ EXIT
  END
END
