import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

import crafttweaker.item.IItemStack;

// Clean loot table and add loot
var table = LootTables.getTable("neuroflow:chests/chestloot15");
var main = table.getPool("main");

main.clearEntries();
main.setRolls(0, 1);
main.setBonusRolls(0, 1);

// Capacitor Reward Pool
main.addItemEntryHelper(<enderio:item_basic_capacitor>, 1, 0, [
    Functions.parse({"function": "enderio:set_capacitor"}),
    Functions.setMetadata(3, 4)
], [], "capacitor");