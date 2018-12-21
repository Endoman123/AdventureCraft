import crafttweaker.item.IIngredient;

// Add Crystal Cluster recipe to Blood Magic
var dc = <bloodmagic:item_demon_crystal>;
val dc1 = <bloodmagic:item_demon_crystal:1>;
var dc2 = <bloodmagic:item_demon_crystal:2>;
var dc3 = <bloodmagic:item_demon_crystal:3>;
var dc4 = <bloodmagic:item_demon_crystal:4>;
val ac1 = <bloodmagic:activation_crystal:1>;
var s = <bloodmagic:slate:4>;
val bs = <bloodmagic:decorative_brick:1>;
val cc = <bloodmagic:decorative_brick:2>;

recipes.addShaped("BMCrystalCluster", cc,
[
[dc1, ac1, dc2],
[s, bs, s],
[dc3, dc, dc4]
]
);