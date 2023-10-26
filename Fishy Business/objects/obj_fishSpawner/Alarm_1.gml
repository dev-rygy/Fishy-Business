/// @description Pick a fish type (Lake)
/* Fish pool index
0 - 23% Carp 
1 - 19% Pike
2 - 17% Minnow
3 - 14% Largemouth Bass
4 - 12% Bluegill
5 - 8% Catfish
6 - 5% Goldfish
7 - 0.5% Swordfish
8 - 0.3% Lionfish
9 - 0.1% Golden Gar
10 - 0.8% Rainbow Trout
11 - 0.3% Reacher Fish
*/

var randSeed = random_range(0, 100);

if (randSeed <= 0.5) { // Swordfish
	fishType = obj_fish_swordfish;
}
else if (randSeed <= 0.8) { // Lionfish
	fishType = obj_fish_lionfish;
}
else if (randSeed <= 0.9) { // Golden Gar
	fishType = obj_fish_goldenGar;
}
else if (randSeed <= 1.7) { // Rainbow Trout
	fishType = obj_fish_rainbowTrout;
}
else if (randSeed <= 2) { // Reacher Fish
	fishType = obj_fish_reacherfish;
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
