import mods.appliedenergistics2.Inscriber;
import mods.mekanism.smelter;

// Use basemetals silicon ingot as the ingredient for printed silicon
Inscriber.removeRecipe(<appliedenergistics2:material:20>);
Inscriber.addRecipe(<appliedenergistics2:material:20>, <baseminerals:silicon_ingot>, true, <appliedenergistics2:material:19>);

// Remove furnace recipes for silicon
mods.mekanism.smelter.removeRecipe(<nuclearcraft:gem_dust:2>, <appliedenergistics2:material:5>);
mods.mekanism.smelter.removeRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material:5>);
mods.mekanism.smelter.removeRecipe(<appliedenergistics2:material:3>, <appliedenergistics2:material:5>);
mods.mekanism.smelter.removeRecipe(<enderio:item_material:33>, <appliedenergistics2:material:5>);