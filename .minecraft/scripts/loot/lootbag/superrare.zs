// TO TEST
// /setblock ~ ~ ~ minecraft:chest 2 replace {LootTable:"neuroflow:chests/chestloot1"}

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;

// Loot table/pool ids
val loottable_id = "neuroflow:chests/chestloot4";
val pool = "main";

val list = [
    <minecraft:sponge>,
    <minecraft:diamond_ore>,
    <minecraft:cake>,
    <minecraft:diamond_pickaxe>,
    <minecraft:skull:5>,
    <minecraft:anvil>,
    <minecraft:cake>,
    <minecraft:end_stone>,
    <minecraft:purpur_block>,
    <minecraft:skull:1>,
    <minecraft:end_crystal>,
    <minecraft:gold_block>,
    <minecraft:diamond>,
    <minecraft:poisonous_potato>,
    <minecraft:elytra>,
    <minecraft:beacon>,
    <minecraft:observer>,
    <minecraft:painting>,
    <minecraft:nether_star>,
    <minecraft:dragon_breath>,
    <minecraft:potion>.withTag({Potion: "cofhcore:haste3+"}),
    <minecraft:emerald_block>,
    <minecraft:diamond_block>,
    <minecraft:lingering_potion>.withTag({Potion: "extrautils2:xu2.doom"}),
    <minecraft:lingering_potion>.withTag({Potion: "extrautils2:oily"}),
    <minecraft:splash_potion>.withTag({Potion: "enderio:long_confusion"}),
    <minecraft:splash_potion>.withTag({Potion: "enderio:strong_floating"}),
    <minecraft:splash_potion>.withTag({Potion: "cofhcore:swiftness4"}),
    // Avaritia
    <avaritia:cosmic_meatballs>,
    <avaritia:resource:7>,
    // extrautils2
    <extrautils2:compressedcobblestone:7>,
    <extrautils2:cursedearth>,
    // Flux Networks
    <fluxnetworks:herculeanfluxstorage>,
    // Witchery
    <bewitchment:gold_lilith_statue>,
    // Bountiful Baubles
    <bountifulbaubles:trinketobsidianskull>,
    <bountifulbaubles:trinketmixeddragonscale>,
    <bountifulbaubles:trinketvitamins>,
    <bountifulbaubles:ringfreeaction>,
    <bountifulbaubles:trinketankhcharm>,
    <bountifulbaubles:ringflywheeladvanced>,
    <bountifulbaubles:wormholemirror>,
    <bountifulbaubles:trinketluckyhorseshoe>,
    <bountifulbaubles:amuletsingluttony>,
    <bountifulbaubles:crowngold>,
    <bountifulbaubles:amuletsinpride>,
    <bountifulbaubles:amuletsinwrath>,
    <bountifulbaubles:amuletcross>,
    <bountifulbaubles:phantomprism>,
    <bountifulbaubles:flaregun>,
    // Applied Energistic
    <appliedenergistics2:network_tool>,
    <appliedenergistics2:storage_cell_1k>.withTag({}),
    <appliedenergistics2:fluid_storage_cell_64k>.withTag({}),
    <appliedenergistics2:spatial_storage_cell_128_cubed>,
    <appliedenergistics2:crafting_storage_4k>,
    // Mekanism
    <mekanism:electricbow>.withTag({mekData: {energyStored: 120.0}}),
    // Tinkers construct
    <plustic:osgloglasblock>,
    <plustic:alumiteblock>,
    <plustic:osmiridiumblock>,
    <tconstruct:metal:2>,
    // Thermal Foundation
    <thermalinnovation:magnet:4>.withTag({Energy: 600000}),
    // YABBA
    <yabba:upgrade_star_tier>,
    // Scaling Health
    <scalinghealth:heartcontainer>,
    // Harvest Craft
    <harvestcraft:rainbowcurryitem>,
    <harvestcraft:jellyfishrawitem>,
    // Compact Machines
    <compactmachines3:machine:5>,
    // Chococraft
    <chococraft:chocobo_spawn_egg:4>,
    <chococraft:chocobo_spawn_egg:5>,
    // Better builders wand
    <betterbuilderswands:wandunbreakable>,
    // ender io
    <enderio:item_stellar_alloy_sword>,
    <enderio:item_material:16>,
    <enderio:item_alloy_ingot:8>,
    <enderio:item_material:20>,
    <enderio:block_dark_steel_anvil>,
    <enderio:block_confusion_charge>,
    <enderio:block_concussion_charge>,
    // electroblob
    <ebwizardry:grand_crystal>,
    <ebwizardry:arcane_tome:1>,
    <ebwizardry:arcane_tome:2>,
    <ebwizardry:arcane_tome:3>,
    <ebwizardry:identification_scroll>,
    <ebwizardry:armour_upgrade>,
    <ebwizardry:amulet_wither_immunity>,
    <ebwizardry:amulet_glide>,
    <ebwizardry:amulet_ice_immunity>,
    <ebwizardry:amulet_ice_protection>,
    <ebwizardry:amulet_transience>,
    <ebwizardry:amulet_potential>,
    <ebwizardry:amulet_banishing>,
    <ebwizardry:amulet_recovery>,
    <ebwizardry:charm_flight>,
    <ebwizardry:scroll:171>,
    <ebwizardry:scroll:105>,
    <ebwizardry:scroll:170>,
    <ebwizardry:scroll:103>,
    <ebwizardry:scroll:94>,
    <ebwizardry:scroll:73>,
    <ebwizardry:scroll:100>,
    <ebwizardry:scroll:118>,
    <ebwizardry:scroll:91>,
    // Iron Chest
    <ironchest:iron_shulker_box_black:5>,
    // ICBM
    <icbmclassic:explosives:5>,
    // NucleurCraft
    <nuclearcraft:radaway>,
    // Grimiore of Gaia
    <grimoireofgaia:misc_experience:2>,
    <grimoireofgaia:misc_book>,
    <grimoireofgaia:food_pie_apple_gold>,
    // kk
    <kk:rareprizeblox>,
    // Forge
    <forge:bucketfilled>.withTag({FluidName: "glowstone", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "dirt", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "ender_distillation", Amount: 1000})
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

