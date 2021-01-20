import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;

// Harder recipe for Crafting Workstation
val lw = <ore:logWood>;
val pw = <ore:plankWood>;
val ct = <minecraft:crafting_table>;

recipes.remove(<tconstruct:tooltables:0>);
recipes.removeShaped(<tconstruct:tooltables:0>);

recipes.addShaped("advc_crafting_station", <tconstruct:tooltables:0> * 1,
[
    [pw, pw, pw],
    [lw, ct, lw],
    [lw, null, lw]
]);

// Harder alloy recipe for Aluminum Brass
Alloy.removeRecipe(<liquid:alubrass>);

Alloy.addRecipe(<liquid:alubrass> * 9, [<liquid:aluminum>, <liquid:copper> * 6, <liquid:zinc> * 2]);
Alloy.addRecipe(<liquid:alubrass> * 3, [<liquid:aluminum>, <liquid:brass> * 2]);

// Consistent Brass recipe
Alloy.removeRecipe(<liquid:brass>);
Alloy.addRecipe(<liquid:brass> * 4, [<liquid:copper> * 3, <liquid:zinc>]);

// Remove brass cast recipes
Casting.removeTableRecipe(<tconstruct:cast>, <liquid:brass>);
Casting.removeTableRecipe(<tconstruct:cast_custom:0>, <liquid:brass>);
Casting.removeTableRecipe(<tconstruct:cast_custom:1>, <liquid:brass>);
Casting.removeTableRecipe(<tconstruct:cast_custom:2>, <liquid:brass>);
Casting.removeTableRecipe(<tconstruct:cast_custom:4>, <liquid:brass>);

// Remove plate cast recipe
Casting.removeTableRecipe(<tconstruct:cast_custom:3>);

// Remove xu2 redstone gear recipe
Casting.removeTableRecipe(<extrautils2:ingredients:1>);

// Replace clear glass recipe w/ regular glass
Casting.removeBasinRecipe(<tconstruct:clear_glass>);
Casting.addBasinRecipe(<minecraft:glass>, null, <liquid:glass>, 1000);

// Replace vanilla recipes with TConstruct recipes
recipes.addShaped(<minecraft:leather_boots>, [[<minecraft:leather>, <conarm:armor_trim>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"}), <minecraft:leather>],[<minecraft:leather>, null, <minecraft:leather>], [null, null, null]]);
recipes.addShaped(<minecraft:leather_helmet>, [[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],[<minecraft:leather>, <conarm:armor_trim>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"}), <minecraft:leather>], [null, null, null]]);
recipes.addShaped(<minecraft:leather_leggings>, [[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],[<minecraft:leather>, <conarm:armor_trim>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"}), <minecraft:leather>], [<minecraft:leather>, null, <minecraft:leather>]]);
recipes.addShaped(<minecraft:leather_chestplate>, [[<minecraft:leather>, <conarm:armor_trim>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"}), <minecraft:leather>],[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>], [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);
recipes.addShaped(<minecraft:stone_sword>, [[<tconstruct:wide_guard>.withTag({Material: "stone"}).onlyWithTag({Material: "stone"}), <tconstruct:sword_blade>.withTag({Material: "stone"}).onlyWithTag({Material: "stone"}), null],[<tconstruct:tool_rod>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"}), null, null], [null, null, null]]);
recipes.addShapeless(<minecraft:stone_pickaxe>, [<tconstruct:binding>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"}),<tconstruct:pick_head>.withTag({Material: "stone"}).onlyWithTag({Material: "stone"}),<tconstruct:tool_rod>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"})]);
recipes.addShapeless(<minecraft:diamond_hoe>, [<tconstruct:axe_head>.withTag({Material: "cobalt"}).onlyWithTag({Material: "cobalt"}),<tconstruct:shovel_head>.withTag({Material: "cobalt"}).onlyWithTag({Material: "cobalt"}),<tconstruct:tool_rod>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"})]);
recipes.addShapeless(<minecraft:iron_sword>, [<tconstruct:wide_guard>.withTag({Material: "iron"}).onlyWithTag({Material: "iron"}),<tconstruct:sword_blade>.withTag({Material: "iron"}).onlyWithTag({Material: "iron"}),<tconstruct:tool_rod>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"})]);
recipes.addShapeless(<minecraft:diamond_sword>, [<tconstruct:wide_guard>.withTag({Material: "cobalt"}).onlyWithTag({Material: "cobalt"}),<tconstruct:sword_blade>.withTag({Material: "cobalt"}).onlyWithTag({Material: "cobalt"}),<tconstruct:tool_rod>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"})]);
recipes.addShapeless(<minecraft:diamond_axe>, [<tconstruct:binding>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"}),<tconstruct:axe_head>.withTag({Material: "cobalt"}).onlyWithTag({Material: "cobalt"}),<tconstruct:tool_rod>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"})]);
recipes.addShapeless(<minecraft:iron_axe>, [<tconstruct:binding>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"}),<tconstruct:axe_head>.withTag({Material: "iron"}).onlyWithTag({Material: "iron"}),<tconstruct:tool_rod>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"})]);
recipes.addShapeless(<minecraft:iron_shovel>, [<tconstruct:binding>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"}),<tconstruct:shovel_head>.withTag({Material: "iron"}).onlyWithTag({Material: "iron"}),<tconstruct:tool_rod>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"})]);
recipes.addShapeless(<minecraft:diamond_shovel>, [<tconstruct:binding>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"}),<tconstruct:shovel_head>.withTag({Material: "cobalt"}).onlyWithTag({Material: "cobalt"}),<tconstruct:tool_rod>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"})]);
recipes.addShapeless(<minecraft:golden_pickaxe>, [<tconstruct:binding>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"}),<tconstruct:pick_head>.withTag({Material: "electrum"}).onlyWithTag({Material: "electrum"}),<tconstruct:tool_rod>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"})]);
recipes.addShapeless(<minecraft:diamond_pickaxe>, [<tconstruct:binding>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"}),<tconstruct:pick_head>.withTag({Material: "cobalt"}).onlyWithTag({Material: "cobalt"}),<tconstruct:tool_rod>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"})]);
recipes.addShapeless(<minecraft:iron_pickaxe>, [<tconstruct:binding>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"}),<tconstruct:pick_head>.withTag({Material: "iron"}).onlyWithTag({Material: "iron"}),<tconstruct:tool_rod>.withTag({Material: "wood"}).onlyWithTag({Material: "wood"})]);
recipes.addShaped(<minecraft:diamond_boots>, [[<minecraft:diamond>, <conarm:armor_trim>.withTag({Material: "cobalt"}).onlyWithTag({Material: "cobalt"}), <minecraft:diamond>],[<minecraft:diamond>, null, <minecraft:diamond>], [null, null, null]]);
recipes.addShaped(<minecraft:diamond_leggings>, [[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],[<minecraft:diamond>, <conarm:armor_trim>.withTag({Material: "cobalt"}).onlyWithTag({Material: "cobalt"}), <minecraft:diamond>], [<minecraft:diamond>, null, <minecraft:diamond>]]);
recipes.addShaped(<minecraft:diamond_chestplate>, [[<minecraft:diamond>, <conarm:armor_trim>.withTag({Material: "cobalt"}).onlyWithTag({Material: "cobalt"}), <minecraft:diamond>],[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]]);
recipes.addShaped(<minecraft:diamond_helmet>, [[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],[<minecraft:diamond>, <conarm:armor_trim>.withTag({Material: "cobalt"}).onlyWithTag({Material: "cobalt"}), <minecraft:diamond>], [null, null, null]]);
