Audio by Helga begins here.

Use authorial modesty.

Include Multiple Sounds by Massimo Stella.

Volume - Audio

When play begins: set the background volume to 2.
When play begins: set the foreground volume to 5.

Book - Sounds

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

sound of eating is the file "eat.ogg".
sound of drinking is the file "drink.ogg".
sound of chopping is the file "knife_and_board.ogg".
sound of watering is the file "watering_can.ogg".
sound of tree pet is the file "pet_trant.ogg".
sound of bean_harvest is the file "bean_tree.ogg".
sound of fruit_harvest is the file "fruit_tree.ogg".
sound of bubble_harvest is the file "bubble_tree.ogg".
sound of spice_harvest is the file "spice_tree.ogg".
sound of egg_harvest is the file "egg_tree.ogg".
sound of gas_harvest is the file "gas_tree.ogg".

Book - Beginning & Ending Sounds

When play begins:
if sound-allowed is true, play sound of newgame.

When play ends:
	stop the background sound;
	if sound-allowed is true, play sound of questcomplete in foreground.

Book - Background music

Table of Location Sounds
location	sound
an object	a sound-name
Next Step	sound of forest
Nylon Phool	sound of forest
Ortolana	sound of forest
Briarset Croft	sound of forest
May Soup	sound of forest
Namaste	sound of forest
Savanna Sunset	sound of forest
Shimla Shack	sound of forest
Hell One	sound of hell

Before going to a room (called the destination):
play the room sound for destination;
continue the action.

To play the room sound for (R - a room):
	repeat through the Table of Location Sounds:
		if the R is the location entry:
			if there is a sound entry and sound-allowed is true:
				stop the background sound;
				play the sound entry in background with loop.
                                                        
Book - Turning Sound On and Off

Sound-allowed is a truth state that varies. Sound-allowed is true.

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
        play the room sound for the location;
	say "Ok.";

Audio ends here.
