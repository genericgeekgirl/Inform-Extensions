Audio by Helga begins here.

Use authorial modesty.

Include Multiple Sounds by Massimo Stella.
  
Volume - Audio

When play begins: set the background volume to 2.
When play begins: set the foreground volume to 5.

Sound of newgame is the file "game_loaded.ogg".
Sound of questcomplete is the file "quest_complete.ogg".
Sound of achievement is the file "discover_new_item.ogg".
Sound of forest is the file "sooth.ogg".
Sound of hell is the file "env_underworld.ogg".

Sound of squishing grapes is the file "squish.ogg".

Sound of piggy scoff is the file "piggy_scoffs.ogg".
Sound of singing butterfly is the file "butterfly_sing.ogg".
Sound of chicken squeeze is the file "squeeze_chicken.ogg".
Sound of pet piggy is the file  "pet_piggy.ogg".
Sound of nibble piggy is the file "nibble_piggy.ogg".
Sound of feed piggy is the file "feed_piggy.ogg".
Sound of happy chicken is the file "happy_chicken.ogg".
Sound of massage butterfly is the file "massage_butterfly.ogg".
Sound of butterfly hmpf is the file "butterfly_hmpf.ogg".
Sound of milk butterfly is the file "milk_butterfly.ogg".
Sound of piggy plop is the file "piggy_plop.ogg".

When play begins:
if sound-allowed is true, play sound of forest in background with loop.

When play ends: if sound-allowed is true, play sound of questcomplete in foreground.

Sound-allowed is a truth state that varies. 
[Sound-allowed is true.]
Sound-allowed is false.

Turning off sound is an action out of world.
Understand "sound off" as turning off sound.

Carry out turning off sound:
now sound-allowed is false;
stop the background sound;
say "Ok."

Turning on sound is an action out of world.
Understand "sound on" as turning on sound.

Carry out turning on sound:
	now sound-allowed is true;
	if the location is in naraka:
		play sound of hell in background with loop;
	otherwise:
		play sound of forest in background with loop;
	say "Ok.";

Audio ends here.
