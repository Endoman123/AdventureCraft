import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

import crafttweaker.item.IItemStack;

// Clean loot table and add loot
var table = LootTables.getTable("neuroflow:chests/chestloot15");
var caps = table.addPool("caps", 1, 2, 0, 1);
var gacha = table.addPool("gacha", 1, 1, 0, 0);
var kkRecipe = table.addPool("kk_recipes", 1, 1, 0, 1);
var kkMaterials = table.addPool("kk_materials", 1, 1, 0, 0);

table.removePool("main");
table.removePool("kk_loot_rare_materials");

// Gacha Game
gacha.addItemEntry(<jsonlootbags:gacha_c>, 32, "gacha_c");
gacha.addItemEntry(<jsonlootbags:gacha_b>, 16, "gacha_b");
gacha.addItemEntry(<jsonlootbags:gacha_a>, 8, "gacha_a");
gacha.addItemEntry(<jsonlootbags:gacha_s>, 4, "gacha_s");
gacha.addItemEntry(<jsonlootbags:gacha_ss>, 2, "gacha_ss");
gacha.addItemEntry(<jsonlootbags:gacha_sss>, 1, "gacha_sss");

// Capacitor Reward Pool
caps.addItemEntryHelper(<enderio:item_basic_capacitor>, 5, 0, [
    Functions.parse({"function": "enderio:set_capacitor"}),
    Functions.setMetadata(3, 4)
], [], "capacitor");

// Kingdom Keys Recipe
kkRecipe.addItemEntry(<kk:recipe>, 1, "kk_recipe");

// Kingdom Keys Material
kkMaterials.addItemEntryHelper(<kk:synthesismaterial>, 4, 0, [
    Functions.setCount(1, 5),
    Functions.setNBT({"material": "sm.manifestillusion", "rank": "sm.rank.a"}),
], [], "kk_manifestillusion");
kkMaterials.addItemEntryHelper(<kk:synthesismaterial>, 4, 0, [
    Functions.setCount(1, 5),
    Functions.setNBT({"material": "sm.orichalcum", "rank": "sm.rank.a"}),
], [], "kk_orichalcum");
kkMaterials.addItemEntryHelper(<kk:synthesismaterial>, 1, 0, [
    Functions.setCount(1, 5),
    Functions.setNBT({"material": "sm.lostillusion", "rank": "sm.rank.s"}),
], [], "kk_lostillusion");
kkMaterials.addItemEntryHelper(<kk:synthesismaterial>, 1, 0, [
    Functions.setCount(1, 5),
    Functions.setNBT({"material": "sm.orichalcum+", "rank": "sm.rank.s"}),
], [], "kk_orichalcumplus");