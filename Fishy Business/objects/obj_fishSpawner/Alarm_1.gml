/// @description Pick a Fish Type (Lake)
// You can write your code in this editor

/// @description Pick a fish type (Lake)
/* Fish pool index
0 - 23% Carp 
1 - 19% Pike
2 - 17% Minnow
3 - 14% Largemouth Bass
4 - 12% Bluegill
5 - 8% Catfish
6 - 5% Goldfish
7 - 2% Lionfish
*/

var randSeed = random_range(0, 100);

if (randSeed <= 2) { // Lionfish
	fishType = obj_fish_lionfish;
}
else if (randSeed <= 7) { // Goldfish
	fishType = obj_fish_goldfish;
} 
else if (randSeed <= 15) { // Catfish
	fishType = obj_fish_catfish;
}
else if (randSeed <= 27) { // Bluegill
	fishType = obj_fish_bluegill;
}
else if (randSeed <= 44) { // Minnow
	fishType = obj_fish_minnow;
}
else if (randSeed <= 63) { // Pike
	fishType = obj_fish_pike;
}
else if (randSeed <= 77) { // Largemouth Bass
	fishType = obj_fish_largemouthBass;
}
else if (randSeed <= 100) { // Carp
	fishType = obj_fish_carp;
}

