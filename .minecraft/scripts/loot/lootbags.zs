// TO TEST
// /setblock ~ ~ ~ minecraft:chest 2 replace {LootTable:"neuroflow:chests/chestloot1"}

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;

// Using neuroflow:chests/chestloot1 for lootbags lootbags

// Loot table/pool ids
val loottable_id = "neuroflow:chests/chestloot1";
val pool = "main";

// Rarity Values
// Weight is rarity * 10
// Higher rarity == more rare/cool/op
val common_rarity = 10;
val uncommon_rarity = 20;
val rare_rarity = 50;
val superrare_rarity = 100;
val elusive_rarity = 200;

// Weighting Sytem
val upper_limit = 150;

// Loot categories; naming is fairly self explanatory
val common = [
    <minecraft:dirt>
] as IItemStack[];

val uncommon = [
    <minecraft:gravel>
] as IItemStack[];

val rare = [
    <minecraft:sand>
] as IItemStack[];

val superrare = [
    <minecraft:diamond>
] as IItemStack[];

val elusive = [
    <minecraft:emerald>
] as IItemStack[];


// Setup the loot pool we are interested in
var commonTable = LootTables.getTable(loottable_id);
var main = commonTable.getPool(pool);
main.clearEntries();

// Add lists
for i in common {
    val bias = common_rarity;
    main.addItemEntryHelper(i, ((upper_limit - bias) * 10) , bias, [Functions.setCount(1, 3)], []);
}

for i in uncommon {
    val bias = uncommon_rarity;
    main.addItemEntryHelper(i, ((upper_limit - bias) * 10) , bias, [Functions.setCount(1, 3)], []);
}

for i in rare {
    val bias = rare;
    main.addItemEntryHelper(i, ((upper_limit - bias) * 10) , bias, [Functions.setCount(1, 3)], []);
}

for i in superrare {
    val bias = superrare_rarity;
    main.addItemEntryHelper(i, ((upper_limit - bias) * 10) , bias, [Functions.setCount(1, 3)], []);
}
for i in elusive {
    val bias = elusive_rarity;
    main.addItemEntryHelper(i, ((upper_limit - bias) * 10) , bias, [Functions.setCount(1, 3)], []);
}


