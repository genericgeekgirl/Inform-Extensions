Windows by Helga begins here.

Include Flexible Windows by Jon Ingold.

Book - Inventory

[The side-window is a graphics g-window spawned by the main-window.]
The side-window is a text-buffer g-window spawned by the main-window.
The position of the side-window is g-placeright. 
The measurement of the side-window is 15.
The scale method of side-window is g-proportional.
[The side-window has back-colour g-white.]

A window-drawing rule for the side-window (this is the construct inventory rule):
	move focus to side-window, clearing the window;
	try taking sidebar inventory;
	return to main screen.

Taking sidebar inventory is an action applying to nothing.
Carry out taking sidebar inventory:
if the number of things enclosed by the player is 0, say "You are empty-handed." instead;
say "You are carrying: [line break]";
list the contents of the player, with newlines, indented, giving inventory information, including contents, with extra indentation.

Every turn when the side-window is g-present: follow the window-drawing rules for the side-window.

The right-border is a graphics g-window spawned by the side-window.
The position of right-border is g-placeleft.
The scale method of right-border is g-fixed-size.
The measurement of right-border is 2.
The back-colour of right-border is g-light-grey.

Book - Graphics

The graphics-window is a graphics g-window spawned by the side-window.
The graphics-window has back-colour g-white.

The current image is a figure-name that varies.

To depict (f - a figure-name):
	now the current image is f;
	follow the window-drawing rules for the graphics-window.

Window-drawing rule for the graphics-window (this is the draw scaled image rule):
	if graphics-window is g-unpresent, rule fails;
	clear the graphics-window;
	draw scaled copy of current image in graphics-window.

A thing has a figure-name called item illustration.

Before going:
depict figure blank;
clear the screen.

[
Before examining something (called T):
	if graphics-window is g-present:
		depict the item illustration of T;
	otherwise:
		display the item illustration of T centered.
]

Book - Location

The banner-window is a graphics g-window spawned by the main-window.
The position of the banner-window is g-placeabove.
The banner-window has back-colour g-white.

The current location image is a figure-name that varies.

Window-drawing rule for the banner-window (this is the draw scaled location rule):
	if banner-window is g-unpresent, rule fails;
	clear the banner-window;
	draw scaled copy of current location image in banner-window.

A room has a figure-name called room illustration.

The image-setting rule is listed in the carry out looking rules.

This is the image-setting rule:
change current location image to the room illustration of the location;
follow the window-drawing rules for the banner-window.

Book - Opening and Closing Windows on Command

To open all windows:
close the status window;
if banner-window is g-present, shut down the banner-window;
open up the side-window;
open up the graphics-window;
open up right-border;
open up the banner-window;
open the status window.

Closing the panels is an action out of world.
Understand "close panels" and "panels off" as closing the panels.

Carry out closing the panels:
shut down the side-window;
shut down the banner-window;
say "Ok."

Opening the panels is an action out of world.
Understand "open panels" and "panels on" as opening the panels.

Carry out opening the panels:
open all windows;
say "Ok."

Book - Flexible Windows

[cribbed directly from Jon Ingold's example]        

To draw scaled copy of (f - a figure-name) in (g - a g-window):
	(- DrawScaled({f}, {g}); -).

Include (- 

        ! Doing scaling calculations in I6 lets us handle bigger numbers

        [ GetImageSize curimg index result;
            result = glk_image_get_info( ResourceIDsOfFigures-->curimg, gg_arguments, gg_arguments+WORDSIZE);
            return gg_arguments-->index;
        ];

        [ DrawScaled figure g w_total h_total graph_height graph_width w_offset h_offset;
        graph_height = WindowSize(g, 1);
        graph_width = gg_arguments-->0;
        w_total = GetImageSize(figure, 0);
        h_total = gg_arguments-->1;
    
        if (graph_height - h_total < 0) ! if the image won't fit, find the scaling factor
        {
            w_total = (graph_height * w_total)/h_total;
            h_total = graph_height;

        }

        if (graph_width - w_total < 0)
        {
            h_total = (graph_width * h_total)/w_total;
            w_total = graph_width;
        }

        w_offset = (graph_width - w_total)/2; if (w_offset < 0) w_offset = 0;
        h_offset = (graph_height - h_total)/2; if (h_offset < 0) h_offset = 0;
    
        glk_image_draw_scaled(g.ref_number, ResourceIDsOfFigures-->figure, w_offset, h_offset, w_total, h_total); 
        ];
    
    -).

Windows ends here.