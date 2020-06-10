// Remove default quarry recipe
val magicSnowGlobe = <extrautils2:snowglobe:1>;
val stoneburnt = <extrautils2:decorativesolid:3>;
val diamLatice = <avaritia:resource:0>;
val crystalMatrix = <avaritia:resource:1>;
val endSteel = <enderio:item_alloy_ingot:8>;
val unstable = <extrautils2:unstableingots>;


recipes.remove(<extrautils2:quarryproxy>);
recipes.removeShaped(<extrautils2:quarry>);

// Add AC quarry recipe

recipes.addShaped(<extrautils2:quarryproxy>,
[
    [diamLatice, stoneburnt, diamLatice],
    [stoneburnt, unstable, stoneburnt],
    [diamLatice, stoneburnt, diamLatice]
]);

recipes.addShaped(<extrautils2:quarry>,
[
    [endSteel, stoneburnt, endSteel],
    [crystalMatrix, magicSnowGlobe, crystalMatrix],
    [endSteel, stoneburnt, endSteel]
]);
