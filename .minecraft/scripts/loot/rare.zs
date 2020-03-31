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
val loottable_id = "neuroflow:chests/chestloot3";
val pool = "main";

// Loot categories; naming is fairly self explanatory
val list = [
    <minecraft:gold_block>,
    <minecraft:iron_block>,
    <minecraft:diamond_block>,
    <minecraft:emerald_block>,
    <minecraft:end_stone>,
    <minecraft:purpur_block>,
    <minecraft:ender_chest>,
    <minecraft:purple_shulker_box>,
    <minecraft:end_rod>,
    <minecraft:skull:1>,
    <minecraft:end_crystal>,
    <minecraft:elytra>,
    <minecraft:beacon>,
    <minecraft:ender_pearl>,
    <minecraft:blaze_rod>,
    <minecraft:ender_eye>,
    <minecraft:diamond_horse_armor>,
    // ender storage
    <enderstorage:ender_pouch>,
    <enderstorage:ender_storage:1>,
    <enderstorage:ender_storage>,
    // Tinkers construct
    <tconstruct:fancy_frame>,
    <tconstruct:fancy_frame:4>,
    // Forge
    <forge:bucketfilled>.withTag({FluidName: "cryotheum", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "pyrotheum", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "mirion", Amount: 1000})
] as IItemStack[];

// Setup the loot pool we are interested in
var commonTable = LootTables.getTable(loottable_id);
commonTable.clear();
var main = commonTable.addPool(pool, 1, 1, 1, 1);
main.clearEntries();

// Add lists
for i in list {
    main.addItemEntryHelper(i, 10, 10, [Functions.setCount(1, 1)], []);
}
