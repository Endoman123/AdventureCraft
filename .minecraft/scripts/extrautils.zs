// Remove default quarry recipe

val magicSnowGlobe= <extrautils2:snowglobe:1>;

val endstone = <minecraft:end_stone>;
val endrod = <minecraft:end_rod>;
val diamondPick = <minecraft:diamond_pickaxe>;
val stoneburnt = <extrautils2:decorativesolid:3>;

val diamLatice = <avaritia:resource:0>;
val crystalMatrix = <avaritia:resource:1>;
val endSteel = <enderio:item_alloy_ingot:8>;

recipes.removeShaped(<extrautils2:quarryproxy>,
[
    [endstone, endrod, endstone],
    [endstone, diamondPick, endstone],
    [stoneburnt, stoneburnt, stoneburnt]
]);
recipes.removeShaped(<extrautils2:quarry>,
[
    [endstone, stoneburnt, endstone],
    [stoneburnt, <ore:magic_snow_globe>, stoneburnt],
    [endstone, stoneburnt, endstone]
]);

// Add AC quarry recipe
recipes.addShaped(<extrautils2:quarryproxy>,
[
    [diamLatice, stoneburnt, diamLatice],
    [stoneburnt, diamondPick, stoneburnt],
    [diamLatice, stoneburnt, diamLatice]
]);

recipes.addShaped(<extrautils2:quarry>,
[
    [endSteel, stoneburnt, endSteel],
    [<actuallyadditions:block_misc:8>, magicSnowGlobe, <actuallyadditions:block_misc:8>],
    [endSteel, stoneburnt, endSteel]
]);
