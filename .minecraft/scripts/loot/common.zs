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

// Loot categories; naming is fairly self explanatory
val list = [
    // Vanilla
    <minecraft:dirt>,
    <minecraft:stone>,
    <minecraft:stone:1>,
    <minecraft:stone:3>,
    <minecraft:stone:5>,
    <minecraft:grass>,
    <minecraft:grass:2>,
    <minecraft:cobblestone>,
    <minecraft:planks>,
    <minecraft:sand>,
    <minecraft:sapling>,
    <minecraft:sapling:1>,
    <minecraft:sapling:2>,
    <minecraft:sapling:3>,
    <minecraft:sapling:4>,
    <minecraft:sapling:5>,
    <minecraft:gravel>,
    <minecraft:gold_ore>,
    <minecraft:iron_ore>,
    <minecraft:coal_ore>,
    <minecraft:log>,
    <minecraft:log:1>,
    <minecraft:log:2>,
    <minecraft:log:3>,
    <minecraft:leaves>,
    <minecraft:sponge:1>,
    <minecraft:glass>,
    <minecraft:lapis_ore>,
    <minecraft:sandstone>,
    <minecraft:web>,
    <minecraft:deadbush>,
    <minecraft:wool>,
    <minecraft:mossy_cobblestone>,
    <minecraft:ice>,
    <minecraft:snow>,
    <minecraft:clay>,
    <minecraft:stonebrick>,
    <minecraft:stonebrick:1>,
    <minecraft:wool:1>,
    <minecraft:wool:2>,
    <minecraft:wool:3>,
    <minecraft:wool:4>,
    <minecraft:wool:6>,
    <minecraft:wool:14>,
    <minecraft:stained_hardened_clay:15>,
    <minecraft:hay_block>,
    <minecraft:concrete>,
    <minecraft:chest>,
    <minecraft:crafting_table>,
    <minecraft:torch>,
    <minecraft:slime>,
    <minecraft:waterlily>,
    <minecraft:item_frame>,
    <minecraft:bed:6>,
    <minecraft:tnt>,
    <minecraft:iron_ingot>,
    <minecraft:gold_ingot>,
    <minecraft:string>,
    <minecraft:lava_bucket>,
    <minecraft:water_bucket>,
    <minecraft:milk_bucket>,
    <minecraft:wheat_seeds>,
    <minecraft:book>,
    <minecraft:record_13>,
    // advancedrocketry
    <advancedrocketry:vitrifiedsand>,
    // Forge
    <forge:bucketfilled>.withTag({FluidName: "iron", Amount: 1000})
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
