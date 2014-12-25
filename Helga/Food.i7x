Food by Helga begins here.

Use authorial modesty.

Volume - Drinks

A drink is a kind of thing. Some kinds of drinks are defined by the Table of Beverages.
A drink has a number called mood. Mood is usually 0.
A drink has a number called energy. Energy is usually 0.

Book - Consumption

Instead of drinking a drink (called D):
	increase the player's mood by the mood of D;
	increase the player's energy by the energy of D;
	say "You drank [a D]. Yum.";
	remove D from play.

Instead of eating a drink:
	try drinking the noun.

Before drinking a drink for the first time:
	say "[as the parser]Drinks give you mood. When you're happy, the Giants are happy, and you earn more Imagination. So keep your mood up.[as normal]"

Book - Beverages

Table of Beverages
Drink	Description	Mood	Energy	Plural
slow gin fizz	"A low and lazy slow gin fizz."	60	10	"slow gin fizzes"	
mabbish coffee	"A Mabbish coffee has all the goodness of regular coffee, but gooder."	20	5	
A cloud 11 smoothie	"A Cloud 11 smoothie. Pretty much the best smoothie ever invented in the history of smoothies."	45	
cloudberry daiquiri	"A nourishing cloudberry daiquiri. It goes down smooth."	60	10	
coffee	"A steaming mug of strong, life-affirming coffee."	12	
cosma-politan	"An urbane, sophistimicated cosma-politan."	80	5	
creamy martini	"A shaken-and-stirred-and-shaken-again creamy martini."	25	10	
fruity juice	"A glass of nigh-ambrosial fruit juice."	20	
lemon juice	"A tall glass of exquisitely sour lemon juice."	-5	10	
mega healthy veggie juice	"A bracing tumbler of mega-healthy veggie juice."	10	20	
pumpkin ale	"All the refreshment of beer combined with the autumnal savoury heft of pumpkin. Then combined with cinnamon. For no reason anyone can decipher."	50	
pungent sunrise	"A refreshingly pungent sunrise."	0	20
savory smoothie	"A savory smoothie. It sticks to your ribs and doesn't let go."	10	
spicy grog	"A tall glass of exceedingly spicy grog."	30	5	
too-berry shake	"A berry tasty too-berry shake."	5	30	
orange juice	"A surprising glass of orange juice."	20	15	

Book - More Beverages

Chapter - Beer

A beer is a kind of drink.
The description is "A shiny can of mmm... beer."
The mood of beer is 3.

After drinking beer:
buzzed wears off in 5 turns from now; [5 minutes?]
say "That is a nice buzz you got going on."

At the time when buzzed wears off:
decrease the player's energy by -35;
increase the player's mood by 15;
say "You feel your buzz fading."

Chapter - Bubble Tea

A bubble tea is a kind of drink.
The description is "A super-frothy bubble tea."
The mood of bubble tea is 30. The energy of bubble tea is 10.

[Bubble-Enhanced Mediation is a buff acquired from drinking Bubble Tea that gives double rewards for meditating. The buff lasts for a total of 2 minutes.]

Chapter - Carrot Margarita

A carrot margarita is a kind of drink.
The description is "A thick, warm carrot margarita."
The mood of carrot margarita is 38. The energy of carrot margarita is 36.

After drinking a carrot margarita:
say "Zing!"

Chapter - Urthshaker

An urthshaker is a kind of drink.
The description is "A seismically upgraded urthshaker."
The mood of urthshaker is 10. The energy of urthshaker is 30.

[Impervious Miner: mining uses no energy at all for 3 minutes]

Chapter - Exotic Juice

An exotic juice is a kind of drink.
The description is "A goblet of mysteriously yummy exotic juice."
The mood of exotic juice is 20. The energy of exotic juice is 10.

[Pleasant equilibrium: being in a really bad mood does not deduct from iMG earned for 5 minutes]

Chapter - Flaming Humbaba

A flaming gumbaba is a drink. The printed name is "Flaming Humbaba." Understand "flaming humbaba" and "humbaba" as flaming gumbaba.
The description is "A 5-alarm flaming Humbaba.".
The mood of flaming gumbaba is 5.  The energy of flaming gumbaba is 20.

[Flaming grinder: Refine any ore without using energy for 30 seconds]

Chapter - Gurly Drink

A gurly drink is a kind of drink.
The description is "A sweet, innocent gurly drink."
The mood of gurly drink is 30. The energy of gurly drink is 5.

[Easy Animalia: all interactions with domestic animals (except singing or whistling) do not cost energy. lasts 5 minutes]

Chapter - Hooch

A hooch is a kind of drink. The plural of hooch is hooches.
The description is "One jug of premium high-octane hooch."
The mood of hooch is 5.

[After drinking hooch: "You feel completely smashed." +12 mood, -12 energy]
[Smashed lasts 4 minutes; say "You don't feel as smashed anymore."; Hungover begins.]
[one turn later: "Your head really hurts from your hangover".  -10 mood]
[Hungover lasts 5 minutes; say "That hangover is gone! You feel so much better."; +10 mood, +10 energy]

Chapter - Wine of the Dead

A wine of the dead is a kind of drink. The plural of wine of the dead is wines of the dead.
The description is "A forbidding decanter filled with wine of the dead, made from grapes crushed in Purgatory. This Hade-licious drink will revive even the most pooped of hellions... but will kill all who drink it aboveground."

Before drinking wine of the dead:
say "Bottoms up! What's the worst that can happen?".
[now the player is not pooped; or dead if drunk while alive]

Volume - Food

A food is a kind of thing. A food is edible. Some kinds of foods are defined by the Table of Food Items.
A food has a number called energy. Energy is usually 1.

Understand the command "poke" and "prod" and "palpitate" and "caress" as "touch".

Book - Consumption

Understand the command "lick" as "taste".
Understand the command "sniff" as something new.
Understand the command "sniff" as "smell".

Before eating a food (called F):
	increase the player's energy by the energy of F;

After eating a food (called F):
	say "You ate the [F]. Mmm.";
	if sound-allowed is true, play sound of eating in foreground;

Before eating a food for the first time:
	say "[as the parser]Eating food gives you energy, and energy keeps you alive.[as normal]";
	record "Glutton for Nourishment" as achieved;
	if sound-allowed is true, play sound of drinking in foreground;

Check drinking a food:
	say "Blenders haven't been implemented yet. You'll need to EAT that instead." instead.
        
Book - Food Items
        
Table of Food Items
Food	Description	Energy	Plural
meaty sammich	"A basic bun [']n['] meat sammich."	5	"meaty sammiches"
cheezy sammich	"An easy, pleasey, cheezy sammich."	5	"cheezy sammiches"
lazy salad	"Sliced tomatoes and cheese. It doesn't get much lazier than a lazy salad."	5
common crudite	"Everyday crudites served in an easy-to-carry cup."	5
flummery	"Few things in this life are as tasty as a masterfully prepared flummery. 'Just like Mom used to make!' you might say. If you had a mom, that is."	5	"flummeries"
bun	"A nice round bun."	1
banana no-names	"One banana fried to crispy, buttery perfection and drizzled with honey. Mmmm."	1
basic omelet	"A fluffy three-egg omelet."	1
berry bowl	"A very merry bowl of berries."	1
best bean dip	"Bowl of beany, dippy bean dip."	1
abbasid ribs	"Succulent Abbasid ribs, made using a time-honored Abbasidian recipe."	1
applejack	"A bowl of apple-y, oat-y, cinnamon-y applejack. Yummy hot or cold."	1
awesome stew	"Chunky awesome stew, so thick you can eat it with a spork."	1
big salad	"It's bigger than small. It's a big salad."	1
birch syrup	"A bottle of sticky birch syrup."	1
bubbling squeak	"Meaty, carroty, potato-y mush, fried to perfection."	1
cheese plate	"An assortment of fine cheeses."	1
cheezy sauce	"A crock full of pleasingly, teasingly cheezy sauce."	1
chilly-busting chili	"A tureen of fiery chilly-busting chili."	1
choice crudites	"A platter of the very finest crudites."	1
cloudberry jam	"A jar of tart cloudberry jam."	1
cold taco	"A refreshing cold taco."	1
corn-off-the-cob	"All the goodness of corn-on-the-cob, without the cob."	1
corny fritter	"Some delicately frittered corn."	1
creamy catsup	"One gallon of the creamiest catsup in all the land."	1
death to veg	"For those who wish a violent end to all harmless vegetables, and desire to feast upon their flesh."	1
deluxe sammich	"A deeply satisfying deluxe sammich."	1	"deluxe sammiches"
Gamma pancake	"One mouthwatering pancake, just like Gamma used to make."	1
desssert rub	"Gritty, sandlike, and strangely sweet, this is both sandy like the desert, and sweet like dessert, and, as such, has the s's of both."	0
divine crepe	"Life-changingly scrumptious crepes."	1
eggy scramble	"A messily scrumptious pile of eggs."	1
exotic fruit salad	"An enticing array of exotic fruits."	1
expensive grilled cheese	"Expensive cheese expensively grilled on expensive bread."	1
flour	"Some ordinary white, powdery flour."	1
fortifying gruel	"One bowl of lumpy fortifying gruel."	1
fried egg	"One sunny-side-up egg."	1
fried noodles	"A small slippery hill of fried noodles."	1
fried rice	"A bowl of fried rice with lots of nummy bits."	1
frog-in-a-hole	"A perfect egg perfectly fried in a perfect hole in a slice of bread."	1	"frogs-in-a-hole"
fruit salad	"A nice fruit salad."	1
glitchepoix	"This combination of vegetables was known as the holy quadrinity of the Glitchean cuisine."	1	"glitchepoixes"
greasy frybread	"A fresh chunk of butter-running-down-your-arms greasy frybread."	1
green egg	"One order of fried green eggs, hold the ham."	1
green	"So fundamental, so intrinsic to the basic laws of culinary science and a healthy spleen that there was only ever one word needed to describe it: Green. So, so green."	1
grilled cheese	"A comforting grilled cheese."	1
hash	"A serving of oddly satisfying hash."	1	"hashes"
heston mash	"This is not just mashed potato, this is the fanciest, zaniest, most delicious mashed potato Ur has ever ingested. And yet, really, it's still just mashed potato."	1	"heston mashes"
honey	"A brimful jar of raw golden honey."	1
hot in fizzy sauce	"One jar of potent hot in fizzy sauce. This combustible comestible is packed with energy and all kinds of flaming goodness."	1
hot potatoes	"If someone gives you this 'tato, drop it like it's hot. Because it is."	1
hototot rub	"Oooh. Ow. Hot. Hotot. Hototot."	0
hungry nachos	"Are you hungry for nachos or are nachos hungry for you? It's nacho decision to make."	1
ix-style braised meat	"A side of rich, meaty meat, braised a la Ix."	1
juicy carpaccio	"A tempting platter of juicy carpaccio with all the trimmings."	1
king of condiments	"Otherwise known as the blandest rub in all of Ur. Meh."	0	"kings of condiments"
legumes abbassidienne	"The most sophisticated, chic ways to prepare a bean: simply, classically, with a smile, a touch of flair, and a really big guillotine."	1
lemburger	"A single-decker Lemburger with all the fixins."	1
lotsa lox	"Goodness! It's a lotta lox!"	1	"lotsa loxes"
luxury tortellini	"It's tortellini, stuffed with extravagance and drizzled with grandeur."	1
maburger royale	"It's not just seasoned beans in a bun smothered in stinky cheese - it's so much more than that. Oh no wait. It's just that."	1	"maburgers royale"
meat gumbo	"A bowl of thick, meaty gumbo."	1
meat tetrazzini	"Some creamy, meaty tetrazzini."	1
messy fry-up	"A sloppy, gloppy messy fry-up."	1
mexicali eggs	"A heaping serving of bean-infused eggs."	1
mild sauce	"Bland ho! It's some inoffensive mild sauce."	1
mushroom	"An unusually sporous mushroom."	1
naraka flame rub	"A slightly spicy minute on the lips, a horrifically painful burning in the general area of the hips, some people say. But what do they know? Wussies."	0
oats	"Regular non-wild oats."	1
oaty cake	"A slightly dry, somewhat crumbly oaty cake."	1
obvious panini	"A panini, obviously."	1
oily dressing	"A bottle of cheap, yet strangely satisfying, oily dressing."	1
olive oil	"A bottle of top-notch olive oil, no virgins required."	1
onion ring	"Battered and fried, these are onions prepared the way Pot intended. Rumored to be popular amongst the elves. Wait, what's an elf?"
onion sauce	"A jar of eye-wateringly zesty onion sauce."	1
pad tii	"Tii has not heard of this dish yet. Chances are it would not approve. Do not tell Tii. Please."	1
pickle	"A seriously crunchy pickle."	1
pineapple upside-down pizza	"A plate of exotically topsy-turvy pizza."	1
roasted pepitas	"Crunchy, nutty, seeds pulled from a pumpkin ready roasted (it must be that hot knife you used). May cause a roasted pumpkin to grow in your stomach. No, not really. Will cause you to feel smug about your healthy snacking choices, though."	44
Potian feast	"The greatest, most magnificent, energy-filled, Pot-approved combination of nourishment. A fitting dish to make or eat for any serious Potian."	1
plain noodles	"Some good, honest, plain noodles."	1
potato patty	"One potato, mashed and fried in a pleasing disc shape."	1	"potato patties"	
potcorn	"Pot corn is a regular corn made to pop because its kernels have a hard moisture-sealed hull and a dense starchy interior. This allows pressure to build inside the kernel until an explosive 'pop' results."	1
pottine	"So wrong. But so, so right."	1
precious potato salad	"Potato salad, traditionally an affordable staple at Glitchen birthdays, is now fit for fancy dinners and lavish banquets with the addition of the particularly precious Trump Rub."	1
proper rice	"A steaming bowl of slightly sticky rice."	1
red	"Some things are so basic, so fundamental that they only need one word to describe what they are. This perfect blend of tomato, onion and butterfly milk sums up the essence of red."	1
rich tagine	"A steaming pot of zesty, slow-cooked tagine."	1
roux	"Roo!"	1
salmon jaella	"An assortment of fresh Salmon from Jal, Rice, Legumes and veggies thrown together into a dish Jal-loving Glitchen identified themselves by."	1
scrumptious frittata	"A truly tantalizing scrumptious frittata."	1
secret sauce	"An enigmatic jar full of mysteriously yummy secret sauce."	1
sesame oil	"Some slippery sesame oil."	1
simple bbq	"Some hot meat with tangy sauce."	1
simple slaw	"The simplest of slaws."	1
snack pack	"An apple, some cheese, and a couple of pickles. Not quite a meal, but it'll do until dinner."	1
spicy quesadilla	"An ooey-gooey spicy quesadilla."	1
spinach salad	"A suspiciously nutritious spinach salad."	1
stock sauce	"As plain and every day as a woman laughing while eating salad, no one even things about Stock Sauce any more. Perhaps they should."	1
super veggie kebab	"Chunks of assorted vegetables on a fun pointy stick!"
swank zucchini loaf	"A good loaf can be made out of anything. A great loaf is made from Zucchini and talks about how rich it is."	1	"swank zucchini loaves"
sweetened sour sauce	"Is it sweet? Is it sour? It's both! It's sweetened sour sauce!"
swing batter	"After roughly chopping with a knife, this batter is not mixed, blended or whisked, but swung at the end of the arm. Swing batter, batter batter swing, batter (as they say)."	1
tangy noodles	"A generous serving of zesty, lemony tangy noodles."	1
tangy sauce	"A large jar of gloppy tangy sauce."	1
tasty pasta	"A bowl of extra-long noodles with rich bolognese sauce."	1
tortilla	"A roundish tortilla."	1
trump rub	"So called because it trumps all the other rubs in expense, flavour, and the ability to be extremely annoying (if you get it in your eye)."	0
urfu	"A moist beige flaccid matter, imbued with the ability to suck up other flavours."	1
vegmageddon	"No rich urth-born root or brave brassica can survive the searing heat of a Pugilist Grill. It is a slow, vicious end for them. But justified, they say, in the name of 'Healthy Living'."	1
waffle	"Fluffy waffles with extra-deep waffle-holes."	1
wavy gravy	"One pint of wavy gravy. It's so good, you'll eat it with a spoon."	1	"wavy gravies"
whortleberry jelly	"One jar of homemade whortleberry jelly, made from the pulverized remains of a thousand quivering whortleberries."	1	"whortleberry jellies"
wicked bolognese sauce	"A small jar of wicked bolognese sauce, on spaghetti or on its own for a meaty treat."	1
yummy gruel	"Somewhat-fizzy-but-still-yummy gruel."	1

Book - More Food Items
                
Chapter - Kind BreakfURst Burrito (TM)

kind breakfurst burrito is a kind of food. The printed name is "Kind BreakfURst Burrito (TM)".
The description is "Warning: Does not contain meat."
The plural of kind breakfurst burrito is kind breakfurst burritos.

Chapter - Hearty Groddle Sammich

A hearty groddle sammich is a kind of food.
The description is "A meaty Groddle sammich with extra hot in fizzy sauce for extra hot in fizzy energy."
The plural of hearty groddle sammich is hearty groddle sammiches.

After eating a hearty groddle sammich:
say "You feel like you can weather anything. Even bad weather."
[Hearty Feeling: immune from ill effects of cold for 1 minute]

Chapter - Hearty Omelet

A hearty omelet is a kind of food.
The description is "An unusually nourishing hearty omelet."

After eating a hearty omelet:
say "You feel like you can weather anything. Even bad weather."
[Hearty Feeling: immune from ill effects of cold for 1 minute]

Chapter - Rasher of Bacon

A rasher of bacon is a kind of food. The plural of rasher of bacon is rashers of bacon.
The description is "A delicious, greasy, surprise Piggy treat from the Piggy's newly discovered Orthogonal Meat Generator (OMG)."
The energy of rasher of bacon is 5.

Instead of smelling a rasher of bacon:
say "Something smells delicious.";
increase player's mood by 5.

Chapter - Candy

A candy is a kind of food.

After eating a candy:
say "OMGiant! Harder Faster Better Stronger Sugar Sugar Sugar Sugar!";
increase player's mood by 28;
we sugar crash in six turns from now.

At the time when we sugar crash:
decrease player's mood by 40;
decrease player's energy by 20.

[unused buff: chocolate high; lasts 6 minutes; +90 mood, +60 energy; followed by a sugar crash.]

A birch candy is a kind of candy. The plural of birch candy is birch candies.
The description is "Candy made of boiled birch syrup so concentrated and so sweet that one too many and you may see god. Or at least the tooth fairy. And they'll be crying."

A raw bio-organic carob-ish treat is a kind of candy.
The description is "A chewy, crunchy, apparently ethically-sourced, gritty 'candy-alternative' with a whiff of winter. Leaves a unique chocolatey aftertang you can't quite put your finger on."

A hi-sucrose corn syrup square is a kind of candy.
The description is "Densely-packed brick of pure brain-melting sweetness, proving that sometimes the sum of many food items is either something that is only fit for use as building material in a fairy unicorn happy-palace, or a candy."

Chapter - Pi

A pi is a kind of food.
The description is "The recipe for Pi was described in ancient times by Alphimedes of Salatu, who also purportedly invented a heat ray for attacking the Rook. (If the heat ray ever existed, it has long since been lost.) It was later improved upon by Ludolph the Cerulean, named for his bright blue skin. Ludolph gave a Pi to several of the giants. Tii immediately stated that Pi was irrational. Pot, on the other hand, declared this to be the best pie he’d ever eaten - transcendental, in fact."

[square pi => "Pi aren't square! Pies are round!"]
[eat pi => "You suddenly feel as though you have 3141 digits, and yet, you feel strangely incomplete." ]
[estimate pi => random number, estimate that many digits and grant favor that is the sum of those digits. 
"Estimate pi. You get 3,1,4,1,5,9, and 2 favor with Tii, for a total of 25 favor.
digits: 3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7, 9, 3]

Chapter - Pumpkin Pie

A pumpkin pie is a kind of food.
The description is "When people use the phrase 'as nice as pie', they are, in fact, talking about this pie. What goes into it? Fresh pumpkin, crispy pastry, spicy spices, and a big dollop of love. (That's an attitude rather than a hidden ingredient, before you start feeling nauseous)."

["Who ate all the pie? You did, and it was awesome."
increase player's energy by 120;
increase player's mood by 120.]

Chapter - Pocket Salmon

A pocket salmon is a kind of food. The plural of pocket salmon is pocket salmen.
The description is "It's like salmon, but in your pocket! Pocket Salmon! The handy friendly fish-at-your-fingertips that's always ready to go! Why settle for boring old underwater catch-me-if-you-calmon-salmon when you could have the ever-accessible, always-dependable, never-stinky always-yummy Pocket Salmon instead! POCKET SALMON! [bracket]TM. Always read the label. Terms and conditions apply[close bracket]".

[action: release salmon]

Volume - Sno Cones

A sno cone is a kind of food.
A sno cone has a number called img. Img is usually 0.

A blue sno cone is a sno cone.
The description is "A delicious, refreshing Blue Sno Cone with a tangy hit of iMG. Blended to perfection using ice, hooch, and the very finest elemental additives and preservatives, it tastes exactly what the the concept of blue should taste like. And a little like raspberry, weirdly."
The img of blue sno cone is 19.

A green sno cone is a sno cone.
The description is "A bright green blend of ice, hooch and elements make a drink the color of days when spring is born, or nights when the northern lights perform. Packed with a modest hit of iMG, winter cannot fade it. Mainly because it's 40% elemental additives and preservatives."
The img of green sno cone is 37.

An orange sno cone is a sno cone.
The description is "A chillingly refreshing bright Orange Sno Cone, with a medium amount of iMG. A perfect blend of Ice, Hooch, and elemental additives and preservatives, it is the epitome of an orange drink. Not orange the fruit, that is, orange the colour. It's more of a concept."
The img of orange sno cone is 75.

A purple sno cone is a sno cone.
The description is "A refreshing and delicious purple Sno Cone. A sophisticated blend of Ice, Hooch and elemental additives and preservatives. Now you too can get all the social frisson of Purple but with none of the nutritional or mental expansion benefits (contains considerable iMG, though)."
The img of purple sno cone is 275.

A rainbo sno cone is a sno cone.
The description is "A rainbo in Sno Cone form, eating this blend of all the other Sno Cones makes your tongue tingle, your sinuses snigger and your spine spontaneously decide to go on a tropical vacation to Shimmyville. Warning: Contains gloriously high levels of iMG."
The img of rainbo sno cone is 550.

A red sno cone is a sno cone.
The description is "A tongue-tingling spine-shiveringly Red Sno Cone. A seamless blend of Ice, Hooch, and a secret blend of elemental additives, preservatives, iMG and raw energy that make you feel slightly, though not to any copyright-infringing extent, like you may have wings."
The img of red sno cone is 150.

[drop a sno cone => becomes a melted pile of mush that eventually vanishes?]
[pick up => "You can't unscramble an egg. And once you drop a sno cone, you're out of luck."]
[drop => "A dropped sno cone is a painful thing to behold."]
[after eating 3: "Careful! Eating this might freeze your brain, which will cost you all your mood!"]
[eat anyway: 50% chance of "Aiiiiiii! Can't… feel… my brain?!? Brain freeze!"]
[on the 3rd: "This Sno Cone almost gave you a Brain Freeze! I would consider carefully before eating another one."]

Volume - Animal Resources

Chapter - Meat

A meat is a kind of food. The description is "A simple meat." The energy of meat is 10.

One meat is part of every piggy.

Chapter - Grain

A grain is a kind of food. The description is "Some plain grain." The energy of grain is 1.

One grain is part of every chicken.

Chapter - Butterfly Milk

A milk is a kind of drink. The printed name is "butterfly milk". Understand "butterfly milk" as milk.
The description is "A vial of butterfly milk. It has the tingly effervescence of a thousand tiny butterfly farts."
The mood of milk is 6. [The plural of milk is butterfly milks.]

One milk is part of every butterfly.

Check smelling a milk:
	if player's mood > 41:
		say "Sniffing butterfly milk only works when you're feeling down." instead.

Instead of smelling a milk:
	say "Butterfly milk smells like perfume from France. You experience a momentary surge of elation.";
	increase player's mood by 12.

Volume - Dairy Products

Shaking is an action applying to one thing.
Understand "shake [something]" as shaking.
Carry out shaking: say "You shake it to the right. You shake it to the left. Nothing happens."

Instead of shaking a milk (called B):
	say "You shake the butterfly milk vigorously. Butterfly butter!";
	decrease player's energy by 2;
	remove the B from play;
	let C be a random butter that is in staging;
	let the new butter be a new object cloned from C;
	now the new butter is in the location;
	try silently taking the new butter.

Chapter - Butterfly Butter

A butter is a kind of food. The printed name is "butterfly butter". Understand "butterfly butter" as butter.
The description is "Butterfly butter might seem like an odd thing, but it is used in many delicious cooking recipes."

Understand the command "compress" as "squeeze".

After squeezing a butter (called B):
	say "You squeeze the butterfly butter with all your might and cheese appears!";
	decrease the player's energy by 5;
	remove the B from play;
	let C be a random basic cheese that is in staging;
	let the new basic cheese be a new object cloned from C;
	now the new basic cheese is in the location;
	try silently taking the new basic cheese.

Chapter - Cheese

A basic cheese is a kind of food. The printed name is "cheese". The description is "A nice wedge of holey cheese[first time].[paragraph break][as the parser]Butterfly milk can be shaken to create butter, which can be compressed into cheese, which can be aged..[only][as normal]."
The energy of basic cheese is 15.

Aging is an action applying to one thing.
Understand "age [something]" as aging.
Carry out aging: say "You can't age that!"

Instead of aging a basic cheese (called C):
	say "You put the cheese in your pocket for a while and it ages nicely. It left a bit of a smell in your pocket though.";
	decrease player's energy by 5;
	decrease player's mood by 5;
	remove the C from play;
	let D be a random stinky cheese 1 that is in staging;
	let the new stinky cheese 1 be a new object cloned from D;
	now the new stinky cheese 1 is in the location;
	try silently taking the new stinky cheese 1.

Book - Stinky Cheese

A stinky cheese 1 is a kind of food. The printed name is "stinky cheese".
The description is "A lump of cheese that's been left to stand around for a while. It's what the French call 'ripe'. You could age it longer, but glory only knows what the French would call it then."
The energy of stinky cheese 1 is 21.

Instead of smelling a stinky cheese 1:
	say "Yep. That's a stinky cheese all right."

Instead of aging a stinky cheese 1 (called C):
	say "If you concentrate really hard on it, the cheese does indeed age.";
	decrease player's energy by 10;
	remove C from play;
	let D be a random stinky cheese 2 that is in staging;
	let the new stinky cheese 2 be a new object cloned from D;
	now the new stinky cheese 2 is in the location;
	try silently taking the new stinky cheese 2.

After tasting a stinky cheese 1:
	say "Awesome. Now you have stink-tongue.";
	decrease player's mood by 20.

After eating a stinky cheese 1: 
	say "Stinky Cheese? Not bad. Would have been better with some stinky crackers, though.";

Book - Very Stinky Cheese

A stinky cheese 2 is a kind of food. The printed name is "very stinky cheese".
The description is "Smelling like a manatee bathed in celery juice and old surgical stockings, goodness knows what would happen if you aged this connoisseurial cheese any longer. You could give it a go, though..."
The energy of stinky cheese 2 is 27.

Instead of aging a stinky cheese 2 (called C):
	say "Wow, is that ever draining. But the cheese [italic type]is[roman type] visibly aged.";
	decrease player's mood by 20;
	decrease player's energy by 15;
	remove C from play;
	let D be a random stinky cheese 3 that is in staging;
	let the new stinky cheese 3 be a new object cloned from D;
	now the new stinky cheese 3 is in the location;
	try silently taking the new stinky cheese 3.

Instead of smelling a stinky cheese 2:
	say "Phew. That [italic type]is[roman type] very stinky."

After eating a stinky cheese 2:
	say "After all the hubbub about the very stinky cheese, its actual stinkiness is a little anti-climactic."

After touching a stinky cheese 2:
	say "After sticking an investigatory pinkie in the soft, gooey cheese, you encounter a hard object. You pull it out. It's a small shiny object with no intrinsic value!";
	decrease player's energy by 10;
	let S be a random small shiny object that is in staging;
	let the new small shiny object be a new object cloned from S;
	now the new small shiny object is in the location;
	try silently taking the new small shiny object.

Chapter - Small shiny object with no intrinsic value

A small shiny object is a kind of thing. The printed name is "small shiny object with no intrinsic value".
Understand "small shiny object with no intrinsic value" as small shiny object.
The description is "Shiny, but you can barely see the shine so it ends up a little dull. Totally worthless, it has no purpose. Holding on to this little object simply cannot be recommended."

One small shiny object is in staging.

Instead of dropping a small shiny object (called O):
say "You drop [the O]. It rolls away and is immediately lost.";
remove O from play.

Book - Very, Very Stinky Cheese

A stinky cheese 3 is a kind of food. The printed name is "very, very stinky cheese".
The description is "This is the very, very stinkiest cheese you've ever seen, or it would be if you could see through the thick veil of tears it's inducing. You can't make this any stinkier. It wouldn't be fair to everyone else."
The energy of stinky cheese 3 is 33.

Instead of smelling a stinky cheese 3:
	say "At first sniff, this is one of the worst olfactory experiences of your life. On your second sniff, you experience an epiphany, which you forget almost immediately.";
	increase player's mood by 50;
	decrease player's energy by 50.

Instead of aging a stinky cheese 3:
	say "You couldn't possibly age this cheese any more."

After eating stinky cheese 3:
	say "In addition to dazzling your friends with your intestinal fortitude, you also reap the very, very stinky cheese's bounteous nutritional benefits."

After touching the stinky cheese 3:
	say "That was not a good idea. It's going to take a while for that finger-stink to wear off.";
	decrease player's mood by 50.

Volume - Cooking

EZ Cooking is a scene.
EZ Cooking begins when the location is Shimla Shack for the first time.
EZCooking is a number that varies. EZCooking is 0.
EZ Cooking ends when EZCooking is 1.

Every turn when EZ Cooking is happening:
	if a lazy salad has been handled and a cheezy sammich has been handled and a meaty sammich has been handled:
		now EZCooking is 1;
		record "Breezy, EZ Cookin[']" as achieved;
		if sound-allowed is true, play sound of achievement in foreground;
		say "[as the parser]Looks like your skills just got a little tastier! Well done, kid.[as normal]".

Book - Cooking Utensils

A cooking utensil is a kind of thing.

Instead of using a cooking utensil: try requesting recipes.
[TODO: only show recipes for that utensil]

After examining a cooking utensil for the first time:
say "[as the parser]You can type RECIPES at any time to see what recipes you know[as normal]."

Chapter - Knifen Board

A knifen board is a cooking utensil. Understand "cutting board" as knifen board.
The description is "A good knife and cutting board. It can be used to make simple foods."

Instead of cutting when the knifen board is enclosed by the location: try using the knifen board.

One lazy salad, one meaty sammich, one cheezy sammich are part of the knifen board.

Chapter - Awesome Pot

An awesome pott is a cooking utensil. The printed name is "awesome pot". Understand "pot" and "awesome pot" as awesome pott.
The description is "An awesome pot is used to make special dishes. Very special."

Chapter - Blender

A blender is a cooking utensil.
The description is "A Blender is very good for blending juices, smoothies and other concoctions. This seems a generally sturdy model."

Blending is an action applying to one thing.
Understand "blend [something]" as blending.
Carry out blending: say "You don't have a blender."

Instead of blending when the blender is enclosed by the location: try using the blender.

Chapter - Cocktail Shaker

A cocktail shaker is a cooking utensil.
The description is "A shiny, chrome-plated cocktail shaker for making special drinks."

Chapter - Frying Pan

A frying pan is a cooking utensil.
The description is "A useful pan for frying things in."

Chapter - Famous Pugilist Grill

A famous pugilist grill is a cooking utensil.
The description is "For grilling food. Named after the infamous gang of Potian Grillers (all called George) who roamed the countryside in days of yore, indiscriminately punching things into submission then grilling them until they were well done. Whole continents once lived in fear of the Four Georgemen of the Apocgrillypse. You, meanwhile, get to use their tribute novelty cooking item."

Chapter - Saucepan

A saucepan is a cooking utensil.
The description is "A saucepan is a must-have item for making sauces."

Book - Recipes

Table of Recipes
Topic	Recipe	Known	Tool	Ingredients
"cheezy sammich" or "cheezy" or "cheesy" or "cheesy sammich"	"Cheezy Sammich"	1	Knifen Board	{"a bun", "a cheese"}
"lazy salad" or "lazy" or "salad"	"Lazy Salad"	1	Knifen Board	{"a tomato", "a cheese"}
"meaty sammich" or "meaty"	"Meaty Sammich"	1	Knifen Board	{"a bun", "a meat"}

Requesting recipes is an action applying to nothing.
Understand "RECIPES" and "RECIPE" as requesting recipes.

Check requesting recipes:
if the location does not enclose a cooking utensil, say "You are not carrying any cooking implements." instead.

[if knifen board: "Get chopping."]

Carry out requesting recipes:
	repeat with utensil running through list of cooking utensils enclosed by the location:
		say "You know the following recipes for your [utensil]:";
		repeat through the Table of Recipes:
			if the known entry is 1 and the tool entry is utensil:
				say "[line break][recipe entry] ([ingredients entry])";
		say "[first time][paragraph break][as the parser]What can you PREPARE with the ingredients you have available?[as normal][only][line break]".

Book - Preparing Food

Include Questions by Michael Callaghan.

Preparing is an action applying to one topic.
Understand "prepare [text]" as preparing.

Understand the command "make" as "prepare".

Preparing Nothing is an action applying to nothing.
Understand "prepare" as preparing nothing.

Carry out preparing nothing:
	now current question is "What would you like to prepare?";
	let L be a list of texts;
	repeat through the Table of Recipes:
		if the known entry is 1:
			add recipe entry to L;
	add "Nevermind" to L;
	now current question menu is L;
	ask a closed question, in menu mode.

A menu question rule (this is the prepare recipe rule):
	let temp be the number understood;
	let recipe be entry temp in the current question menu;
	if recipe matches the text "Nevermind":
		say "Ok. Maybe later.";
	otherwise if recipe matches the text "Cheezy Sammich":
		try preparing "cheezy sammich";
	otherwise if recipe matches the text "Meaty Sammich":
		try preparing "meaty sammich";
	otherwise if recipe matches the text "Lazy Salad":
		try preparing "lazy salad";
	exit.
        
[TODO: How can I make this work across the board?]

Check preparing:
	if the topic understood is a topic listed in the Table of Recipes:
		if the known entry is 0, say "You don't know how to prepare that yet." instead;
		if the player does not enclose the tool entry, say "You need [a tool entry] to prepare that recipe." instead;
		repeat with ingredient running through the ingredients entry:
			let found be 0;
			repeat with object running through the list of things enclosed by the player:
				if "[a object]" exactly matches the text "[ingredient]":
					now found is 1;
			if found is 0, say "You will need [ingredient] to make this recipe." instead;
	otherwise:
		say "You don't know how to prepare that (or you need to be more specific)." instead;

Check preparing nothing:
	if the player does not enclose a cooking utensil:
		say "You are not carrying any cooking implements." instead.
                
Carry out preparing:
	if the topic understood is a topic listed in the Table of Recipes:
		repeat with ingredient running through the ingredients entry:
			let found be 0;
			repeat with object running through the list of things enclosed by the player:
				if "[a object]" exactly matches the text "[ingredient]" and found is 0:
					remove object from play;
					now found is 1;                                                
		repeat with recipe running through the list of things that are part of the knifen board:
			if "[recipe]" matches the text "[recipe entry]", case insensitively:
				let the new item be a new object cloned from the recipe;
				now the new item is in the location;
				try silently taking the new item;
		say "Nice! You made a [recipe entry]. You used [ingredients entry].";
		if sound-allowed is true, play sound of chopping in foreground; [TODO]

Food ends here.
