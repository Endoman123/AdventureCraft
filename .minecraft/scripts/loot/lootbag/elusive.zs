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
val loottable_id = "neuroflow:chests/chestloot5";
val pool = "main";

val list = [
    <minecraft:potion>.withTag({Potion: "cofhcore:haste3+"}),
    <minecraft:skull:5>,
    <minecraft:beacon>,
    <minecraft:elytra>,
    <minecraft:elytra>.withTag({ench: [{lvl: 3 as short, id: 34}, {lvl: 1 as short, id: 70}], RepairCost: 3}),
    <minecraft:dragon_breath>,
    <minecraft:purple_shulker_box>,
    <minecraft:nether_star>,
    <minecraft:emerald_block>,
    <minecraft:diamond_block>,
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 34}]}),
    // RFTools
    <rftools:dimensional_shard>,
    // Redstone FLux
    <redstonearsenal:tool.shield_flux>.withTag({Energy: 320000}),
    // Flux Networks
    <fluxnetworks:herculeanfluxstorage>,
    <fluxnetworks:gargantuanfluxstorage>,
    // Open Blocks
    <openblocks:technicolor_glasses>,
    // Tinkers construct
    <tconstruct:fancy_frame:4>,
    // Mekanism
    <mekanism:machineblock:8>,
    <redstonearsenal:tool.bow_flux>.withTag({ench: [{lvl: 3 as short, id: 21}, {lvl: 3 as short, id: 57}, {lvl: 4 as short, id: 58}, {lvl: 1 as short, id: 51}], RepairCost: 15, Energy: 320000}),
    <mekanism:controlcircuit:3>,
    <mekanism:electricbow>.withTag({mekData: {energyStored: 120000.0}}),
    <mekanismgenerators:generator:5>,
    <mekanism:atomicdisassembler>.withTag({mekData: {energyStored: 1000000.0}}),
    // electroblob
    <ebwizardry:astral_diamond>,
    <ebwizardry:ring_paladin>,
    <ebwizardry:ring_seeking>,
    <ebwizardry:ring_arcane_frost>,
    <ebwizardry:ring_combustion>,
    <ebwizardry:amulet_resurrection>,
    <ebwizardry:amulet_wither_immunity>,
    <ebwizardry:amulet_glide>,
    <ebwizardry:amulet_ice_immunity>,
    <ebwizardry:amulet_transience>,
    <ebwizardry:amulet_banishing>,
    <ebwizardry:charm_flight>,
    <ebwizardry:scroll:171>,
    <ebwizardry:scroll:94>,
    <ebwizardry:scroll:93>,
    // Harvest Craft
    <harvestcraft:rainbowcurryitem>,
    <harvestcraft:jellyfishrawitem>,
    // YABBA
    <yabba:upgrade_star_tier>,
    // Grimiore of Gaia
    <grimoireofgaia:doll_slime_girl>,
    <grimoireofgaia:doll_creeper_girl>,
    <grimoireofgaia:doll_mermaid>,
    <grimoireofgaia:deco_garden_gnome>,
    <grimoireofgaia:doll_ender_girl>,
    <grimoireofgaia:misc_book>,
    <grimoireofgaia:food_pie_apple_gold>,
    // kk
    <kk:birthbysleep-alinktothefuture->,
    <kk:the13thanthology>,
    <kk:sanctuary>,
    // ender io
    <enderio:item_stellar_alloy_sword>,
    <enderio:item_capacitor_melodic>,
    <enderio:item_capacitor_stellar>,
    <enderio:item_capacitor_grainy>,
    <enderio:item_capacitor_totemic>,
    // Scaling Health
    <scalinghealth:heartcontainer>,
    // Flux Networks
    <fluxnetworks:herculeanfluxstorage>,
    // Avaritia
    <avaritia:resource:1>,
    <avaritia:endest_pearl>,
    <avaritia:ultimate_stew>,
    <avaritia:cosmic_meatballs>,
    <avaritia:extreme_crafting_table>
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

