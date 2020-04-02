import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;

var table = LootTables.getTable("ebwizardry:chests/obelisk");
var additional = table.addPool("tweaker", 0, 3, 0, 4);

// Additions go here
additional.addItemEntry(<jsonlootbags:common_bag>, 50);
additional.addItemEntry(<jsonlootbags:uncommon_bag>, 50);
additional.addItemEntry(<jsonlootbags:rare_bag>, 30);
additional.addItemEntry(<jsonlootbags:superrare_bag>, 10);
additional.addItemEntry(<jsonlootbags:elusive_bag>, 1);
