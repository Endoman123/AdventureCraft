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

// Rarity Values; Higher rarity == more rare/cool/op
val common_rarity = 20;
val uncommon_rarity = 40;
val rare_rarity = 60;
val superrare_rarity = 80;
val elusive_rarity = 100;

// Weighting Sytem
val upper_limit = 101;

// Loot categories; naming is fairly self explanatory
val common = [
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
    <forge:bucketfilled>.withTag({FluidName: "iron", Amount: 1000}),
] as IItemStack[];

val uncommon = [
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
    <forge:bucketfilled>.withTag({FluidName: "xu_enchanted_metal", Amount: 1000}),
] as IItemStack[];

val rare = [
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
    // ender io
    <enderstorage:ender_pouch>,
    <enderstorage:ender_storage:1>,
    <enderstorage:ender_storage>,
    // Tinkers construct
    <tconstruct:fancy_frame>,
    <tconstruct:fancy_frame:4>,
    // Forge
    <forge:bucketfilled>.withTag({FluidName: "cryotheum", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "pyrotheum", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "mirion", Amount: 1000}),
] as IItemStack[];

val superrare = [
    <minecraft:skull:5>,
    <minecraft:nether_star>,
    <forge:bucketfilled>.withTag({FluidName: "ender_distillation", Amount: 1000}),
] as IItemStack[];

val elusive = [
    <forge:bucketfilled>.withTag({FluidName: "infinity", Amount: 1000}),
] as IItemStack[];


// Setup the loot pool we are interested in
var commonTable = LootTables.getTable(loottable_id);
commonTable.clear();
var main = commonTable.addPool(pool, 1, 1, 1, 1);
main.clearEntries();

// Add lists
for i in common {
    val bias = common_rarity;
    main.addItemEntryHelper(i, ((upper_limit - bias) * 10) , bias, [Functions.setCount(2, 5)], []);
}

for i in uncommon {
    val bias = uncommon_rarity;
    main.addItemEntryHelper(i, ((upper_limit - bias) * 10) , bias, [Functions.setCount(2, 5)], []);
}

for i in rare {
    val bias = rare_rarity;
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
