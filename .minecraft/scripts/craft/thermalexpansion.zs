import mods.thermalexpansion.InductionSmelter;

// Harder alloy recipe for Aluminum Brass
val dustAluminum = <ore:dustAluminum>;
val ingotAluminum = <ore:ingotAluminum>;
val dustBrass = <ore:dustBrass>;
val ingotBrass = <ore:ingotBrass>;
val dustCopper = <ore:dustCopper>;
val ingotCopper = <ore:ingotCopper>;
val alubrass = <tconstruct:ingots:5>;

for itemA in dustAluminum.items {
    for itemB in dustCopper.items {
        mods.thermalexpansion.InductionSmelter.removeRecipe(itemA, itemB);
    }
}

for itemA in ingotAluminum.items {
    for itemB in dustCopper.items {
        mods.thermalexpansion.InductionSmelter.removeRecipe(itemA, itemB);
    }
}

for itemA in ingotAluminum.items {
    for itemB in ingotCopper.items {
        mods.thermalexpansion.InductionSmelter.removeRecipe(itemA, itemB);
    }
}

for itemA in dustAluminum.items {
    for itemB in ingotCopper.items {
        mods.thermalexpansion.InductionSmelter.removeRecipe(itemA, itemB);
    }
}

// 2400 rf
for itemA in dustAluminum.items {
    for itemB in dustBrass.items {
        mods.thermalexpansion.InductionSmelter.addRecipe(alubrass * 3, itemA, itemB * 2, 2400);
    }
}

// 2800 rf
for itemA in ingotAluminum.items {
    for itemB in dustBrass.items {
        mods.thermalexpansion.InductionSmelter.addRecipe(alubrass * 3, itemA, itemB * 2, 2800);
    }
}

// 3600 rf
for itemA in ingotAluminum.items {
    for itemB in ingotBrass.items {
        mods.thermalexpansion.InductionSmelter.addRecipe(alubrass * 3, itemA, itemB * 2, 3600);
    }
}

// 3200 rf
for itemA in dustAluminum.items {
    for itemB in ingotBrass.items {
        mods.thermalexpansion.InductionSmelter.addRecipe(alubrass * 3, itemA, itemB * 2, 3200);
    }
}
