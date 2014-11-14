Title Page by Helga begins here.

Volume - Title Page

section 1 - inclusions

Include Menus by Emily Short. 
Include Basic Screen Effects by Emily Short. 

section 2 - definitions

Use menus translates as (- Constant USE_MENUS; -). 
Use skip intro translates as (- Constant Skip_Intro; -).

[The quotation is some text that varies. The quotation is "[story headline]".]

To say quotation: say story headline.

The intro menu is a table-name that varies. The intro menu is the Table of Sample Options.

To centre (t - an indexed text), bold or italic:
	let N be the number of characters in T;
	say spaces to centre N;
	if bold, say bold type;
	if italic, say italic type;
	say T;
	say roman type.

To say spaces to centre (n -  a number) -- running on:
(- 	print "^"; spaces (((VM_ScreenWidth() - {n})/2)-1); 
-)

Section 3 - cover art

Include Glulx Image Centering by Emily Short. 
Figure opening figure is the file "banner.png".

Section 4a - title screen rule

The first when play begins rule (this is the title screen rule):
while 1 is 1 begin;
	clear the screen;
	display figure opening figure centered;
	say line break;
	say fixed letter spacing;
	centre "[quotation]", italic;
	say roman type;
	say paragraph break;
	say fixed letter spacing;
	if using the menus option, 
		say "   Display help menu                       :       M[line break]";
	say "   Start the story - from the beginning    :    (SPACE)[line break]";
	say "                   - from a saved position :       R[line break]";
	say "   Quit                                    :       Q[line break]";  
	say variable letter spacing;       
	let k be 0;
	while k is 0 begin;
		let k be the chosen letter;
	end while;
	if k is 82 or k is 114 begin;
		clear the screen; 
		make no decision;
	otherwise if k is 113 or k is 81;
		stop game abruptly;
	otherwise if k is 13 or k is 31 or k is 32;
		delete file of save data;
		clear the screen;
		make no decision;
	otherwise if k is 109 or k is 77;
		if using the menus option begin;
			change the current menu to the intro menu;
			carry out the displaying activity;
		end if;
	end if;
end while;

Section 5 - the debug option - not for release

A procedural rule when using the skip intro option: 
	ignore the title screen rule.

Title Page ends here.