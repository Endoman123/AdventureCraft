import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;

var table = LootTables.getTable("minecraft:chests/village_blacksmith");
var additional = table.addPool("tweaker", 0, 1, 0, 4);

// Additions go here
additional.addItemEntry(<jsonlootbags:common_bag>, 2);
additional.addItemEntry(<jsonlootbags:uncommon_bag>, 1);
