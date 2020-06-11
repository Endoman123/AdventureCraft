import mods.thermalexpansion.InductionSmelter;

// Harder alloy recipe for Aluminum Brass
val dustAluminum = <modernmetals:aluminum_powder>;
val ingotAluminum = <modernmetals:aluminum_ingot>;
val dustBrass = <basemetals:brass_blend>;
val ingotBrass = <basemetals:brass_ingot>;
val dustCopper = <basemetals:copper_powder>;
val ingotCopper = <basemetals:copper_ingot>;
val alubrass = <tconstruct:ingots:5>;

InductionSmelter.removeRecipe(<thermalfoundation:material:128>, <thermalfoundation:material:68> * 3);
InductionSmelter.removeRecipe(<thermalfoundation:material:64>, <thermalfoundation:material:68> * 3);
InductionSmelter.removeRecipe(<thermalfoundation:material:128>, <thermalfoundation:material:132> * 3);
InductionSmelter.removeRecipe(<thermalfoundation:material:64>, <thermalfoundation:material:132> * 3);

// 2400 rf
InductionSmelter.addRecipe(alubrass * 3, dustAluminum, dustBrass * 2, 2400);

// 2800 rf
InductionSmelter.addRecipe(alubrass * 3, ingotAluminum, dustBrass * 2, 2800);

// 3200 rf
InductionSmelter.addRecipe(alubrass * 3, dustAluminum, ingotBrass * 2, 3200);

// 3600 rf
InductionSmelter.addRecipe(alubrass * 3, ingotAluminum, ingotBrass * 2, 3600);


// Fix oreDict recipes
InductionSmelter.addRecipe(<thermalfoundation:glass:3> * 2, <basemetals:lead_powder>, <basemetals:obsidian_powder> * 4, 6000);
InductionSmelter.addRecipe(<thermalfoundation:glass:0> * 2, <basemetals:copper_powder>, <ore:blockGlassHardened>.firstItem * 2, 6000, <ore:itemSlagRich>.firstItem, 15);
InductionSmelter.addRecipe(<thermalfoundation:glass:1> * 2, <basemetals:tin_powder>, <ore:blockGlassHardened>.firstItem * 2, 6000, <ore:itemSlagRich>.firstItem, 15);
InductionSmelter.addRecipe(<thermalfoundation:glass:2> * 2, <basemetals:silver_powder>, <ore:blockGlassHardened>.firstItem * 2, 6000, <ore:itemSlagRich>.firstItem, 15);
InductionSmelter.addRecipe(<thermalfoundation:glass:3> * 2, <basemetals:lead_powder>, <ore:blockGlassHardened>.firstItem * 2, 6000, <ore:itemSlagRich>.firstItem, 15);
InductionSmelter.addRecipe(<thermalfoundation:glass:4> * 2, <modernmetals:aluminum_powder>, <ore:blockGlassHardened>.firstItem * 2, 6000, <ore:itemSlagRich>.firstItem, 15);
InductionSmelter.addRecipe(<thermalfoundation:glass:5> * 2, <basemetals:nickel_powder>, <ore:blockGlassHardened>.firstItem * 2, 6000, <ore:itemSlagRich>.firstItem, 15);
InductionSmelter.addRecipe(<thermalfoundation:glass:6> * 2, <basemetals:platinum_powder>, <ore:blockGlassHardened>.firstItem * 2, 6000, <ore:itemSlagRich>.firstItem, 15);
InductionSmelter.addRecipe(<thermalfoundation:glass:7> * 2, <modernmetals:iridium_powder>, <ore:blockGlassHardened>.firstItem * 2, 6000, <ore:itemSlagRich>.firstItem, 15);
InductionSmelter.addRecipe(<thermalfoundation:glass_alloy:0> * 2, <basemetals:steel_blend>, <ore:blockGlassHardened>.firstItem * 2, 6000, <ore:itemSlagRich>.firstItem, 15);
InductionSmelter.addRecipe(<thermalfoundation:glass_alloy:1> * 2, <basemetals:electrum_blend>, <ore:blockGlassHardened>.firstItem * 2, 6000, <ore:itemSlagRich>.firstItem, 15);
InductionSmelter.addRecipe(<thermalfoundation:glass_alloy:2> * 2, <basemetals:invar_blend>, <ore:blockGlassHardened>.firstItem * 2, 6000, <ore:itemSlagRich>.firstItem, 15);
InductionSmelter.addRecipe(<thermalfoundation:glass_alloy:3> * 2, <basemetals:bronze_blend>, <ore:blockGlassHardened>.firstItem * 2, 6000, <ore:itemSlagRich>.firstItem, 15);