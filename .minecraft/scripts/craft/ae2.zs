import mods.appliedenergistics2.Inscriber;

// Use basemetals silicon ingot as the ingredient for printed silicon
Inscriber.removeRecipe(<appliedenergistics2:material:20>);
Inscriber.addRecipe(<appliedenergistics2:material:20>, <baseminerals:silicon_ingot>, true, <appliedenergistics2:material:19>);