import mods.appliedenergistics2.Inscriber;
import mods.mekanism.enrichment;
import mods.mekanism.smelter;
import crafttweaker.oredict.IOreDictEntry;

val lProc = <appliedenergistics2:material:22>;
val fDust = <appliedenergistics2:material:8>;
val aCore = <appliedenergistics2:material:44>;
val fCore = <appliedenergistics2:material:43>;
val pCertus = <appliedenergistics2:material:10>;
val pNether = <appliedenergistics2:material:11>;

// Creaate distinction between quartz
val oGemQuartz = <ore:gemQuartz>;
val oGemAll = <ore:gemAll>;
val oChargedCertus = <ore:crystalChargedCertusQuartz>;
val oCertus = <ore:crystalCertusQuartz>;
val oNetherQuartz = <ore:crystalNetherQuartz>;
val oDustNether = <ore:dustNetherQuartz>;

oDustNether.add(<basemetals:quartz_powder>);
oCertus.add(<appliedenergistics2:material:1>);
oChargedCertus.add(<appliedenergistics2:material:1>);
oGemQuartz.add(<appliedenergistics2:material:0>, <appliedenergistics2:material:1>);
oNetherQuartz.add(<minecraft:quartz>);

// Replace recipe for annihlation and formation cores
recipes.removeByRegex("appliedenergistics2\\:materials\/.*core");
recipes.addShaped("advc_annihlation_core", aCore, [
    [null, null, null],
    [oNetherQuartz | pNether, fDust, lProc],
    [null, null, null]    
]);
recipes.addShaped("advc_formation_core", fCore, [
    [null, null, null],
    [oCertus | pCertus, fDust, lProc],
    [null, null, null]    
]);

// Use basemetals silicon ingot as the ingredient for printed silicon
Inscriber.removeRecipe(<appliedenergistics2:material:20>);
Inscriber.addRecipe(<appliedenergistics2:material:20>, <baseminerals:silicon_ingot>, true, <appliedenergistics2:material:19>);

// Remove furnace recipes for silicon
furnace.remove(<ore:dustQuartz>, <ore:itemSilicon>);
smelter.removeRecipe(<*>, <appliedenergistics2:material:5>);

// Remove enrichment chamber recipes for pure crystals
enrichment.removeRecipe(<*>, <appliedenergistics2:material:*>);

// Add recipes to return dust to crystal
enrichment.addRecipe(<ore:dustNetherQuartz>, <minecraft:quartz>);
enrichment.addRecipe(<ore:dustCertusQuartz>, <appliedenergistics2:material:0>);
enrichment.addRecipe(<ore:dustFluix>, <appliedenergistics2:material:7>);