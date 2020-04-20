import crafttweaker.oredict.IOreDict;
import mods.appliedenergistics2.Inscriber;

// Add Certus Quartz to gemQuartz and dustQuartz oreDict
val gem = <ore:gemQuartz>;
val dust = <ore:dustQuartz>;

gem.add(<appliedenergistics2:material:0>);
dust.add(<appliedenergistics2:material:2>);

// Use basemetals silicon ingot as the ingredient for printed silicon
Inscriber.removeRecipe(<appliedenergistics2:material:20>);
Inscriber.addRecipe(<appliedenergistics2:material:20>, <baseminerals:silicon_ingot>, true, <appliedenergistics2:material:19>);