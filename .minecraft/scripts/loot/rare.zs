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
    <minecraft:sponge>,
    <minecraft:diamond_ore>,
    <minecraft:noteblock>,
    <minecraft:furnace_minecart>,
    <minecraft:magma>,
    <minecraft:cake>,
    <minecraft:prismarine:1>,
    <minecraft:prismarine:2>,
    <minecraft:emerald_ore>,
    <minecraft:hopper>,
    <minecraft:pumpkin>,
    <minecraft:gold_block>,
    <minecraft:iron_block>,
    <minecraft:diamond_block>,
    <minecraft:diamond_pickaxe>,
    <minecraft:poisonous_potato>,
    <minecraft:emerald_block>,
    <minecraft:totem_of_undying>,
    <minecraft:golden_axe>,
    <minecraft:ghast_tear>,
    <minecraft:quartz_block>,
    <minecraft:armor_stand>,
    <minecraft:tnt_minecart>,
    <minecraft:glowstone>,
    <minecraft:end_stone>,
    <minecraft:purpur_block>,
    <minecraft:ender_chest>,
    <minecraft:purple_shulker_box>,
    <minecraft:end_rod>,
    <minecraft:skull:1>,
    <minecraft:ender_pearl>,
    <minecraft:blaze_rod>,
    <minecraft:ender_eye>,
    <minecraft:diamond_horse_armor>,
    <minecraft:golden_apple:1>,
    <minecraft:fish:2>,
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 32}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 34}]}),
    <minecraft:potion>.withTag({Potion: "cofhcore:luck3+"}),
    <minecraft:potion>.withTag({Potion: "cofhcore:haste3+"}),
    <minecraft:potion>.withTag({Potion: "cofhcore:healing4"}),
    <minecraft:splash_potion>.withTag({Potion: "cofhcore:strength3+"}),
    <minecraft:splash_potion>.withTag({Potion: "cofhcore:healing4"}),
    <minecraft:splash_potion>.withTag({Potion: "extrautils2:xu2.doom"}),
    <minecraft:lingering_potion>.withTag({Potion: "cofhcore:absorption4"}),
    <minecraft:lingering_potion>.withTag({Potion: "cofhcore:levitation+"}),
    <minecraft:lingering_potion>.withTag({Potion: "cofhcore:luck4"}),
    <minecraft:cauldron>,
    <minecraft:magma_cream>,
    // Bountiful Baubles
    <bountifulbaubles:shieldobsidian>.withTag({HideFlags: 2}),
    <bountifulbaubles:trinketmagiclenses>,
    <bountifulbaubles:ringoverclocking>,
    <bountifulbaubles:trinketshulkerheart>,
    <bountifulbaubles:trinketbezoar>,
    <bountifulbaubles:trinketblackdragonscale>,
    <bountifulbaubles:trinketankhcharm>,
    <bountifulbaubles:shieldankh>.withTag({HideFlags: 2}),
    <bountifulbaubles:ringflywheeladvanced>,
    // ender storage
    <enderstorage:ender_pouch>,
    <enderstorage:ender_storage:1>,
    <enderstorage:ender_storage>,
    // ender io
    <enderio:item_material:12>,
    <enderio:item_material:11>,
    <enderio:item_alloy_ingot:2>,
    <enderio:item_alloy_ingot:5>,
    <enderio:item_material:18>,
    <enderio:item_material:20>,
    <enderio:block_dark_steel_anvil>,
    // electroblob
    <ebwizardry:grand_crystal>,
    <ebwizardry:identification_scroll>,
    <ebwizardry:ring_mind_control>,
    <ebwizardry:ring_earth_biome>,
    <ebwizardry:amulet_arcane_defence>,
    <ebwizardry:amulet_potential>,
    <ebwizardry:amulet_banishing>,
    <ebwizardry:amulet_ice_protection>,
    <ebwizardry:amulet_ice_protection>,
    <ebwizardry:firebomb>,
    <ebwizardry:poison_bomb>,
    <ebwizardry:smoke_bomb>,
    <ebwizardry:spark_bomb>,
    <ebwizardry:armour_upgrade>,
    <ebwizardry:arcane_tome:1>,
    <ebwizardry:arcane_tome:2>,
    <ebwizardry:arcane_tome:3>,
    <ebwizardry:scroll:171>,
    <ebwizardry:scroll:105>,
    <ebwizardry:scroll:108>,
    <ebwizardry:scroll:103>,
    <ebwizardry:scroll:94>,
    <ebwizardry:scroll:88>,
    <ebwizardry:scroll:73>,
    <ebwizardry:scroll:38>,
    <ebwizardry:scroll:154>,
    <ebwizardry:scroll:91>,
    // Psi
    <psi:material:1>,
    // Iron Chest
    <ironchest:iron_chest:5>,
    <ironchest:iron_shulker_box_black:5>,
    // Blood magic
    <bloodmagic:lava_crystal>,
    // Chococraft
    <chococraft:ability_fruit>,
    <chococraft:ability_fruit:1>,
    <chococraft:chocobo_spawn_egg>,
    <chococraft:ability_fruit:2>,
    <chococraft:ability_fruit:3>,
    // extrautils2
    <extrautils2:angelblock>,
    // Flux Networks
    <fluxnetworks:fluxstorage>,
    // Redstone FLux
    <redstonearsenal:tool.shield_flux>.withTag({Energy: 320000}),
    <redstonearsenal:tool.sword_flux>.withTag({Energy: 320000}),
    // RFTools
    <rftools:dimensional_shard>,
    // chisel
    <chisel:chisel_hitech>.withTag({chiseldata: {}}),
    // Thermal Foundation
    <thermalfoundation:tool.shield_diamond>,
    <thermalfoundation:storage_alloy:7>,
    <thermalfoundation:storage_alloy:1>,
    <thermalfoundation:storage_alloy:5>,
    <thermalfoundation:wrench>,
    <thermalinnovation:magnet>.withTag({Energy: 40000}),
    // Mekanism
    <mekanism:robit>.withTag({mekData: {energyStored: 100000.0}}),
    <mekanism:atomicalloy>,
    <mekanism:controlcircuit:3>,
    <mekanism:jetpack>.withTag({mekData: {stored: {amount: 100, gasName: "hydrogen"}}}),
    <mekanism:scubatank>.withTag({mekData: {stored: {amount: 14000, gasName: "oxygen"}}}),
    <mekanism:flamethrower>.withTag({mekData: {stored: {amount: 24000, gasName: "hydrogen"}}}),
    <mekanism:machineblock:5>.withTag({recipeType: 8}),
    <mekanism:machineblock:9>,
    <mekanism:machineblock:8>,
    <mekanism:machineblock:14>,
    // Project Red
    <projectred-integration:gate>,
    <projectred-integration:gate>,
    // Scaling Health
    <scalinghealth:heartcontainer>,
    // Tinkers construct
    <tconstruct:fancy_frame>,
    // PlusTic
    <plustic:alumiteingot>,
    <plustic:osgloglasingot>,
    <plustic:osmiridiumingot>,
    <plustic:mirioningot>,
    // YABBA
    <yabba:antibarrel>,
    // Compact Machines
    <compactmachines3:machine>,
    // Advanced Rocketry
    <libvulpes:holoprojector>,
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
