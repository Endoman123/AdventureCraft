import mods.thermalexpansion.InductionSmelter;

// Harder alloy recipe for Aluminum Brass
val dustAluminum = <modernmetals:aluminum_dust>;
val ingotAluminum = <modernmetals:aluminum_ingot>;
val dustBrass = <basemetals:brass_dust>;
val ingotBrass = <basemetals:brass_ingot>;
val dustCopper = <basemetals:copper_dust>;
val ingotCopper = <basemetals:copper_ingot>;
val alubrass = <tconstruct:ingots:5>;

InductionSmelter.removeRecipe(dustAluminum, dustCopper);
InductionSmelter.removeRecipe(ingotAluminum, dustCopper);
InductionSmelter.removeRecipe(ingotAluminum, ingotCopper);
InductionSmelter.removeRecipe(dustAluminum, ingotCopper);

// 2400 rf
InductionSmelter.addRecipe(alubrass * 3, dustAluminum, dustBrass * 2, 2400);

// 2800 rf
InductionSmelter.addRecipe(alubrass * 3, ingotAluminum, dustBrass * 2, 2800);

// 3600 rf
InductionSmelter.addRecipe(alubrass * 3, ingotAluminum, ingotBrass * 2, 3600);

// 3200 rf
InductionSmelter.addRecipe(alubrass * 3, dustAluminum, ingotBrass * 2, 3200);
