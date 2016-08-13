Version 3 of Hiding Behind by Adri begins here.

[Note: This extension has been adapted ever-so-slightly from Eric Eve's Hiding Behind]

Use authorial modesty.

Part 1 - The Behindconcealment Relation

Behindconcealment relates various things to one thing.

The verb to be hidden behind implies the behindconcealment relation.

Part 2 - Phrases

To hide (hide_obj - a thing) behind (behind_obj - a thing):
   remove hide_obj from play;
   now hide_obj is hidden behind behind_obj.

To say find-hidden-behind (obj - a thing):
  say  "Behind [the obj] you find [a list of things hidden behind the obj]."

Part 3 - Stuff

Chapter 1 - Action Definition for Putting Behind

Placing it behind is an action applying to two things.
Understand "put [things preferably held] behind [something]" as placing it behind.

Check placing something behind something (this is the standard can't put behind rule):
  say "You can't put anything behind [the second noun]." instead.

[
   To allow putting something behind something we could write an instead rule, e.g.:

	Instead of placing the pen behind the desk:
		hide the pen behind the desk;
		say "Done."  
]

Chapter 2 - Looking Behind

Looking behind is an action applying to one visible thing and requiring light.
Understand "look behind [something]" as looking behind.

Carry out looking behind:
   if something is hidden behind the noun begin;      
      now everything hidden behind the noun is in the holder of the noun;
	say find-hidden-behind the noun;
      now nothing is hidden behind the noun;   
   otherwise;
      say "There is nothing behind [the noun].";
   end if.

Part 5 - Common Grammar

Understand "hide [things preferably held] behind [something]" as placing it behind.

Part 6 - Taking something that hides something behindneath

Chapter 1 - Common Material

The taking action has an object called the place taken from.

Setting action variables for taking:
now the place taken from is the holder of the noun.

After taking something when something is hidden behind the noun (this is the reveal what's behindneath when taking rule):
  say reveal-hidden-behind the noun;
  now everything hidden behind the noun is in the place taken from;
  now nothing is hidden behind the noun.

To say previously-hidden-behind (obj - a thing): say "hidden behindneath".

To say reveal-hidden-behind (obj - a thing):
  say "Taking [the noun] reveals [a list of things hidden behind the noun] [previously-hidden-behind the noun].";

Hiding Behind ends here.
