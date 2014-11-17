Crops by Helga begins here.

Use authorial modesty.

Volume - Crops a Planty

Crops a Planty is a scene.
Crops a Planty begins when the location is Briarset Croft for the first time.

When Crops a Planty ends:
        record "Crops a-Planty" as achieved;
	increase energy by 25;
        if sound-allowed is true, play sound of achievement in foreground;
	say "[as the parser]Message.[as normal]".

Volume - Seeds

A crop seed is a kind of thing. Understand "seeds" and "packet of seeds" and "packet" as a crop seed.
A crop seed has a text called produce.

Book - Broccoli Seed

A packet of broccoli seeds is a kind of crop seed.
The description is "It's just a packet of broccoli seeds, but it has the potential to become something amazing. Namely, broccoli."

Book - Cabbage Seed

A packet of cabbage seeds is a kind of crop seed.
The description is "It's just a packet of cabbage seeds, but it has the potential to become something amazing. Namely, cabbage."

Book - Carrot Seed

A packet of carrot seeds is a kind of crop seed.
The description is "It's just a packet of carrot seeds, but it has the potential to become something amazing. Namely, carrots."

Book - Corn Seed

A packet of corn seeds is a kind of crop seed.
The description is "It's just a packet of corn seeds, but it has the potential to become something amazing. Namely, ears of corn."

Book - Cucumber Seed

A packet of cucumber seeds is a kind of crop seed.
The description is "It's just a packet of cucumber seeds, but it has the potential to become something amazing. Namely, cucumbers."

Book - Onion Seed

A packet of onion seeds is a kind of crop seed. The printed name is "packet of black onion seeds".
The description is "It's a packet of black onion seeds, but it has the potential to become something amazing. Namely, onions."

Book - Parsnip Seed

A packet of parsnip seeds is a kind of crop seed.
The description is "It's just a packet of parsnip seeds, but it has the potential to become something amazing. Namely, parsnips."

Book - Potato Seed

A packet of potato seeds is a kind of crop seed. The printed name is "packet of tiny potatoes".
The description is "It's a packet of tiny potatoes, which will presumably grow into bigger potatoes."

Book - Pumpkin Seed

A packet of pumpkin seeds is a kind of crop seed.
The produce is "a pumpkin".
The description is "It's a packet containing a single pumpkin seed."

Book - Rice Seed

A packet of rice seeds is a kind of crop seed.
The description is "It's just a packet of rice seeds, but it has the potential to become something amazing. Namely, rice."

Book - Spinach Seed

A packet of spinach seeds is a kind of crop seed.
The description is "It's just a packet of spinach seeds, but it has the potential to become something amazing. Namely, spinach."

Book - Tomato Seed

A packet of tomato seeds is a kind of crop seed.
The description is "It's a packet of heirloom-quality tomato seeds."

Book - Zucchini Seed

A packet of zucchini seeds is a kind of crop seed.
The description is "It's a packet of zucchini seeds, but it has the potential to become something amazing. Namely zucchini."

Volume - Crops

A crop is a kind of food.

After examining a crop for the first time:
say "[as the parser]Crop vegetables can be used for cooking, but you can also feed them to piggies. Piggies need to eat in order to produce meat.[as normal]".

Book - Broccoli

A broccoli is a kind of crop.
The description is "One floret of unabashedly healthy broccoli."

One packet of broccoli seeds is part of every broccoli.

Book - Cabbage

A cabbage is a kind of crop.
The description is "A head of tender, delicately pungent cabbage."

One packet of cabbage seeds is part of every cabbage.

Book - Carrot

A carrot is a kind of crop.
The description is "A fresh, firm carrot."

One packet of carrot seeds is part of every carrot.

Book - Corn

A corn is a kind of crop.
The description is "Many kernels of sweet corn, conveniently located on a sturdy cob."

One packet of corn seeds is part of every corn.

Book - Cucumber

A cucumber is a kind of crop.
The description is "An innocuous cucumber."

One packet of cucumber seeds is part of every cucumber.

Book - Onion

An onion is a kind of crop.
The description is "A patented no-tears onion."

One packet of onion seeds is part of every onion.

Book - Parsnip

A parsnip is a kind of crop.
The description is "A pungent parsnip."

One packet of parsnip seeds is part of every parsnip.

Book - Potato

A potato is a kind of crop. The plural of potato is potatoes.
The description is "A humble potato."

One packet of potato seeds is part of every potato.

Book - Pumpkin

A pumpkin is a kind of crop.
The description is "One plump and thick-skinned pumpkin. Perfect for carving, mulching, munching, and, in times of need, for using as a carriage drawn by tamed gerbils."

One packet of pumpkin seeds is part of every pumpkin.

Book - Rice

A pot of rice is a kind of crop.
The description is "A pot of freshly made rice."

One packet of rice seeds is part of every rice.

Book - Spinach

A spinach is a kind of crop.
The description is "Hearty green spinach. It's strong to the finich."

One packet of spinach seeds is part of every spinach.

["You can jump really, really high"]
[High Jumper: Eating spinach allows you to jump higher and move more quickly for 7 seconds]

Book - Tomato

A tomato is a kind of crop. The plural of tomato is tomatoes.
The description is "A ripe, heirloom-quality tomato."

One packet of tomato seeds is part of every tomato.

Understand the command "throw" as something new.
Throwing is an action applying to one thing.
Understand "throw [something]" as throwing.

Instead of throwing something: try dropping the noun.

Instead of throwing a tomato (called T):
say "You throw the tomato. It smashes into [the random visible non-player thing].";
remove T from play.

Book - Zucchini

A zucchini is a kind of crop.
The description is "A teeny-weeny green zucchini."

One packet of zucchini seeds is part of every zucchini.

Volume - Herbs

Book - Hairball Flower

A hairball flower is a kind of thing.
The description is "A hairy perennial. Even the thought of eating it causes feelings of antsy twitchiness."

A hairball flower seed is a kind of thing.
The description is "A Hairball Flower Seed."

[munching hairball flower causes you to walk faster for 5 minutes.. maybe a solution to a puzzle; -25 energy]

Book - Gandlevery

A sprig of gandlevery is a kind of thing. The plural of gandlevery is sprigs of gandlevery.
The description is "Plant with furry fern-fronds of fleetfooted goodness."

A gandlevery seed is a kind of thing.
The description is "A Gandlevery Seed."

[eating ("munching") gandlevery provides +24 energy; -5 mood]
["Gandlevery will keep you wide awake." ]

Book - Purple Flower
 
A purple flower is a kind of thing.
The description is "Very, very purple."

A purple flower seed is a kind of thing.
The description is "A Purple Flower Seed."

[munching gets you high; see purple junk]

Book - Rookswort

A rookswort is a kind of thing.
The description is "An exotic bud with a pleasantly lasting aftertaste of danger and chaos."
The plural of rookswort is sprigs of rookswort.

A rookswort seed is a kind of thing.
The description is "A Rookswort Seed."

[munching rookswort cuts mood loss in half for 5 minutes; -2 mood, +3 energy]

Book - Rubeweed

A rubeweed is a kind of thing.
The description is "A deceptively dull green shoot filled with lucky sap."
The plural of rubeweed is sprigs of rubeweed.

["Do ru' feel lucky? Well do ru? Punk?" lasts 5 minutes]

A rubeweed seed is a kind of thing.
The description is "A Rubeweed Seed."

Book - Silvertongue

A silvertongue is a kind of thing.
The description is "A blue sparkly bloom of joy."
The plural of silvertongue is sprigs of silvertongue.

["Everything good just feels even better." +5 mood, -5 energy]

A silvertongue seed is a kind of thing.
The description is "A Silvertongue Seed."

Book - Yellow Crumb Flower

A yellow crumb flower is a kind of thing.
The description is "Like having a tiny garden full of sunshine. How clever!"

["Suddenly you feel super focused. Lasts one minute. 

A yellow crumb flower seed is a kind of thing.
The description is "A Yellow Crumb Flower Seed."]

Crops ends here.

