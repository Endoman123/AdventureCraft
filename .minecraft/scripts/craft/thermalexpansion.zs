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