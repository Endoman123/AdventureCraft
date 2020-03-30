// TO TEST
// /setblock ~ ~ ~ minecraft:chest 2 replace {LootTable:"chests/simple_dungeon"}

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

//Get the sheep loot table and store it for later use

var commonTable = LootTables.getTable("lootbags:lootbags/common");
var mainloot = sheep.addPool("mainloot", 1, 1, 1, 1);

mainloot.addItemEntryHelper(<minecraft:redstone_block>, 20, 1, [Functions.setCount(2, 5)], []);

