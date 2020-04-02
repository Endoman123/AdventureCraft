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
    <minecraft:diamond>,
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
    <minecraft:golden_apple>,
    <minecraft:fish:2>,
    <minecraft:flint_and_steel>,
    <minecraft:poisonous_potato>,
    <minecraft:spider_eye>,
    <minecraft:rotten_flesh>,
    <minecraft:compass>,
    <minecraft:clock>,
    <minecraft:shears>,
    <minecraft:lead>,
    <minecraft:potion>.withTag({Potion: "extrautils2:xu2.doom"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_water_breathing"}),
    <minecraft:potion>.withTag({Potion: "cofhcore:healing3"}),
    <minecraft:potion>.withTag({Potion: "minecraft:swiftness"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:long_invisibility"}),
    <minecraft:splash_potion>.withTag({Potion: "cofhcore:resistance2"}),
    <minecraft:splash_potion>.withTag({Potion: "cofhcore:healing4"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:night_vision"}),
    <minecraft:apple>,
    <minecraft:bread>,
    <minecraft:cooked_chicken>,
    // Harvest Craft
    <harvestcraft:paperbark_sapling>,
    <harvestcraft:grapesaladitem>,
    <harvestcraft:pekingduckitem>,
    <harvestcraft:jellyfishrawitem>,
    // Thermal
    <thermalfoundation:tool.sickle_copper>,
    // naturescompass
    <naturescompass:naturescompass>.withTag({}),
    // spice of life
    <spiceoflife:lunchbox>,
    // advancedrocketry
    <advancedrocketry:vitrifiedsand>,
    // Tinkers construct
    <tconstruct:slimesling>,
    <tconstruct:slime_boots>,
    <conarm:travel_goggles>,
    <tinkersurvival:crude_knife>,
    <tinkersurvival:crude_hatchet>,
    // electroblob
    <ebwizardry:identification_scroll>,
    <ebwizardry:magic_crystal>,
    <ebwizardry:firebomb>,
    <ebwizardry:poison_bomb>,
    <ebwizardry:smoke_bomb>,
    <ebwizardry:spark_bomb>,
    <ebwizardry:scroll:74>,
    <ebwizardry:scroll:159>,
    <ebwizardry:scroll:118>,
    <ebwizardry:scroll:38>,
    <ebwizardry:scroll:154>,
    <ebwizardry:scroll:59>,
    <ebwizardry:scroll:39>,
    <ebwizardry:scroll:149>,
    <ebwizardry:scroll:35>,
    // ender io
    <enderio:block_simple_furnace>,
    // Bountiful Baubles
    <bountifulbaubles:ringiron>,
    // Scaling Health
    <scalinghealth:crystalshard>,
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
