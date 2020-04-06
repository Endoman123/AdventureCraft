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
    <minecraft:golden_apple>,
    <minecraft:golden_apple:1>,
    <minecraft:cake>,
    <minecraft:diamond_pickaxe>,
    <minecraft:golden_axe>,
    <minecraft:poisonous_potato>,
    <minecraft:tipped_arrow>.withTag({Potion: "cofhcore:wither4"}),
    <minecraft:ghast_tear>,
    <minecraft:potion>.withTag({Potion: "minecraft:long_night_vision"}),
    <minecraft:potion>.withTag({Potion: "minecraft:strong_leaping"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}),
    <minecraft:potion>.withTag({Potion: "minecraft:strong_healing"}),
    <minecraft:potion>.withTag({Potion: "minecraft:strong_poison"}),
    <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}),
    <minecraft:potion>.withTag({Potion: "enderio:strong_floating"}),
    <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}),
    <minecraft:potion>.withTag({Potion: "cofhcore:regeneration4"}),
    <minecraft:potion>.withTag({Potion: "cofhcore:unluck2"}),
    <minecraft:potion>.withTag({Potion: "cofhcore:healing4"}),
    <minecraft:potion>.withTag({Potion: "extrautils2:xu2.doom"}),
    <minecraft:splash_potion>.withTag({Potion: "enderio:long_confusion"}),
    <minecraft:splash_potion>.withTag({Potion: "enderio:strong_floating"}),
    <minecraft:splash_potion>.withTag({Potion: "cofhcore:swiftness4"}),
    <minecraft:splash_potion>.withTag({Potion: "cofhcore:healing4"}),
    <minecraft:splash_potion>.withTag({Potion: "extrautils2:xu2.doom"}),
    <minecraft:lingering_potion>.withTag({Potion: "cofhcore:levitation+"}),
    <minecraft:lingering_potion>.withTag({Potion: "extrautils2:oily"}),
    <minecraft:lingering_potion>.withTag({Potion: "cofhcore:resistance2+"}),
    <minecraft:potato>,
    // ender io
    <enderio:block_dark_steel_anvil:2>,
    // electroblob
    <ebwizardry:magic_crystal>,
    <ebwizardry:scroll:132>,
    <ebwizardry:ring_earth_biome>,
    <ebwizardry:amulet_arcane_defence>,
    <ebwizardry:firebomb>,
    <ebwizardry:poison_bomb>,
    <ebwizardry:smoke_bomb>,
    <ebwizardry:spark_bomb>,
    <ebwizardry:scroll:106>,
    <ebwizardry:scroll:159>,
    <ebwizardry:scroll:97>,
    <ebwizardry:scroll:136>,
    <ebwizardry:scroll:103>,
    <ebwizardry:scroll:88>,
    <ebwizardry:scroll:74>,
    <ebwizardry:scroll:118>,
    <ebwizardry:scroll:38>,
    <ebwizardry:scroll:154>,
    <ebwizardry:scroll:59>,
    <ebwizardry:scroll:39>,
    <ebwizardry:scroll:149>,
    // Iron Chest
    <ironchest:iron_chest>,
    // Grimiore of Gaia
    <grimoireofgaia:misc_experience:1>,
    <grimoireofgaia:misc_experience>,
    // Mekanism
    <mekanism:gasupgrade>,
    <mekanism:speedupgrade>,
    <mekanism:ingot>,
    <mekanism:compresseddiamond>,
    <mekanism:jetpack>,
    <mekanism:gasmask>,
    <mekanism:scubatank>,
    // YABBA
    <yabba:item_barrel>,
    <yabba:upgrade_smelting>,
    <yabba:upgrade_pickup>,
    <yabba:antibarrel>,
    // Scaling Health
    <scalinghealth:crystalshard>,
    // Harvest Craft
    <harvestcraft:grilledcheeseitem>,
    <harvestcraft:taffyitem>,
    <harvestcraft:bltitem>,
    <harvestcraft:fishtacoitem>,
    <harvestcraft:rainbowcurryitem>,
    <harvestcraft:eelrawitem>,
    <harvestcraft:persimmonjellysandwichitem>,
    // Applied Energistic
    <appliedenergistics2:material:7>,
    <appliedenergistics2:material:1>,
    // Astral Sorc
    <astralsorcery:itemcraftingcomponent>,
    // Biomes o Plenty
    <biomesoplenty:boat_magic>,
    <biomesoplenty:boat_magic>,
    // Tinkers construct
    <conarm:travel_night>,
    <conarm:travel_goggles>,
    // Bountiful Baubles
    <bountifulbaubles:trinketballoon>,
    <bountifulbaubles:trinketmagiclenses>,
    <bountifulbaubles:trinketapple>,
    <bountifulbaubles:trinketvitamins>,
    <bountifulbaubles:ringfreeaction>,
    <bountifulbaubles:trinketbezoar>,
    <bountifulbaubles:trinketblackdragonscale>,
    <bountifulbaubles:trinketmixeddragonscale>,
    <bountifulbaubles:trinketluckyhorseshoe>,
    // chisel
    <chisel:chisel_iron>,
    // extrautils2
    <extrautils2:compresseddirt:2>,
    // arcanearchives
    <arcanearchives:radiant_lantern>,
    // Mining Dim
    <aroma1997sdimension:miningmultitool>,
    // Seasons
    <sereneseasons:season_clock>,
    // Extra util
    <extrautils2:compressedcobblestone:2>,
    <extrautils2:ingredients:11>,
    <extrautils2:ingredients:12>,
    // Forge
    <forge:bucketfilled>.withTag({FluidName: "plutonium", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "dirt", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "glowstone", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "gold", Amount: 1000}),
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
