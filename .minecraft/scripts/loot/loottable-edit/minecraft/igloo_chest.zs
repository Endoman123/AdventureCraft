import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;

var table = LootTables.getTable("minecraft:chests/igloo_chest");
var additional = table.addPool("tweaker", 0, 2, 0, 4);

// Additions go here
additional.addItemEntry(<jsonlootbags:uncommon_bag>, 50);
additional.addItemEntry(<jsonlootbags:rare_bag>, 5);
additional.addItemEntry(<jsonlootbags:superrare_bag>, 1);
