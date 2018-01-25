// Don't remove all instances of the Gorgon Salve
REPLACE_ACTION_TEXT DTOMB ~DestroyPartyItem("Gsalve",.*)~ ~DestroyPartyItem("Gsalve",FALSE)~


BEGIN DGHOULSG

IF ~Global("Lothar_Mad","AR0508",0)~ Golem-1a
  SAY @511 /* ~The golem's massive frame resembles an enormous ghoul, complete with sharp claws and a black tongue. It stands motionless and stares straight ahead. There is no indication that it is more than a simple statue.~ */
  + ~PartyHasItem("Gsalve")~ + @512 /* ~Apply the Gorgon Salve to the golem.~ */ 
    DO ~DestroyPartyItem("Gsalve",FALSE) IncrementGlobalOnce("Lothar_Chaotic_Golem_1","GLOBAL","Law","GLOBAL",-1)~ + Golem-2
  ++ #3018 /* ~Leave the golem alone.~ */ EXIT
END

IF ~!Global("Lothar_Mad","AR0508",0)~ Golem-1b
  SAY @514 /* ~~The golem's massive frame resembles an enormous ghoul, complete with sharp claws and a black tongue. Its eyes are fixed on you and follow each of your movements. Apart from that, there is no further indication that it is more than a simple statue.~ */
  + ~PartyHasItem("Gsalve")~ + @512 /* ~Apply the Gorgon Salve to the golem.~ */ 
    DO ~DestroyPartyItem("Gsalve",FALSE) IncrementGlobalOnce("Lothar_Chaotic_Golem_1","GLOBAL","Law","GLOBAL",-1) Enemy()~ + Golem-2
  ++ #3018 /* ~Leave the golem alone.~ */ EXIT
END

IF ~~ Golem-2
  SAY @513 /* ~You smear the foul-smelling ointment over the golem. At first nothing happens, but after several moments cracks and tears appear all over its body as it slowly softens. No longer able to lift its own weight, the golem crumples into nothing more than a heap of brittle bones and rotting flesh.~ */
  IF ~~ DO ~Kill(Myself) AddexperienceParty(8000)~ EXIT
END
