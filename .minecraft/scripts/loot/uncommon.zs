// TO TEST
// /setblock ~ ~ ~ minecraft:chest 2 replace {LootTable:"neuroflow:chests/chestloot2"}

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;

// Using neuroflow:chests/chestloot1 for lootbags lootbags

// Loot table/pool ids
val loottable_id = "neuroflow:chests/chestloot2";
val pool = "main";

// Loot categories; naming is fairly self explanatory
val list = [
    // Vanilla
    <minecraft:sponge>,
    <minecraft:lapis_block>,
    <minecraft:dispenser>,
    <minecraft:noteblock>,
    <minecraft:golden_rail>,
    <minecraft:detector_rail>,
    <minecraft:sticky_piston>,
    <minecraft:piston>,
    <minecraft:brick_block>,
    <minecraft:redstone_ore>,
    <minecraft:diamond_ore>,
    <minecraft:bookshelf>,
    <minecraft:obsidian>,
    <minecraft:pumpkin>,
    <minecraft:netherrack>,
    <minecraft:glowstone>,
    <minecraft:emerald_ore>,
    <minecraft:melon_block>,
    <minecraft:mycelium>,
    <minecraft:nether_brick>,
    <minecraft:quartz_block>,
    <minecraft:quartz_block>,
    <minecraft:prismarine>,
    <minecraft:prismarine:1>,
    <minecraft:prismarine:2>,
    <minecraft:magma>,
    <minecraft:furnace>,
    <minecraft:enchanting_table>,
    <minecraft:anvil:2>,
    <minecraft:anvil>,
    <minecraft:white_glazed_terracotta>,
    <minecraft:pink_glazed_terracotta>,
    <minecraft:painting>,
    <minecraft:armor_stand>,
    <minecraft:banner:15>,
    <minecraft:hopper>,
    <minecraft:observer>,
    <minecraft:redstone_torch>,
    <minecraft:minecart>,
    <minecraft:diamond>,
    // Forge
    <forge:bucketfilled>.withTag({FluidName: "plutonium", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "vapor_of_levity", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "xu_enchanted_metal", Amount: 1000})
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
