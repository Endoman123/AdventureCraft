import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;


// A Rougue like dungeon lootpool
var table = LootTables.getTable("neuroflow:chests/chestloot6");
var additional = table.addPool("dungeon1", 1, 5, 0, 4);

// Additions go here

// Bags
additional.addItemEntry(<jsonlootbags:common_bag>, 30);
additional.addItemEntry(<jsonlootbags:uncommon_bag>, 50);
additional.addItemEntry(<jsonlootbags:rare_bag>, 25);
additional.addItemEntry(<jsonlootbags:superrare_bag>, 10);
additional.addItemEntry(<jsonlootbags:elusive_bag>, 5);

// Vanilla
additional.addItemEntry(<minecraft:diamond>, 35);
additional.addItemEntry(<minecraft:gold_ingot>, 35);
additional.addItemEntry(<minecraft:iron_ingot>, 35);
additional.addItemEntry(<minecraft:log>, 35);
additional.addItemEntry(<minecraft:hay_block>, 35);
additional.addItemEntry(<minecraft:apple>, 35);
additional.addItemEntry(<minecraft:book>, 35);
additional.addItemEntry(<minecraft:ice>, 35);
additional.addItemEntry(<minecraft:mossy_cobblestone>, 35);
additional.addItemEntry(<minecraft:cooked_chicken>, 35);
additional.addItemEntry(<minecraft:bread>, 35);
additional.addItemEntry(<minecraft:poisonous_potato>, 20);
additional.addItemEntry(<minecraft:clock>, 20);
additional.addItemEntry(<minecraft:compass>, 20);

// Baubles
additional.addItemEntry(<bountifulbaubles:shieldobsidian>.withTag({HideFlags: 2}), 15);
additional.addItemEntry(<bountifulbaubles:trinketmagiclenses>, 15);
additional.addItemEntry(<bountifulbaubles:ringoverclocking>, 15);
additional.addItemEntry(<bountifulbaubles:trinketshulkerheart>, 15);
additional.addItemEntry(<bountifulbaubles:trinketbezoar>, 15);
additional.addItemEntry(<bountifulbaubles:trinketblackdragonscale>, 15);
additional.addItemEntry(<bountifulbaubles:trinketankhcharm>, 15);
additional.addItemEntry(<bountifulbaubles:shieldankh>.withTag({HideFlags: 2}), 15);
additional.addItemEntry(<bountifulbaubles:ringflywheeladvanced>, 15);


// Potion
additional.addItemEntry(<minecraft:potion>.withTag({Potion: "cofhcore:healing3"}), 20);
additional.addItemEntry(<minecraft:potion>.withTag({Potion: "extrautils2:xu2.doom"}), 20);
additional.addItemEntry(<minecraft:potion>.withTag({Potion: "minecraft:long_water_breathing"}), 20);
additional.addItemEntry(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), 20);

// Scaling Health
additional.addItemEntry(<scalinghealth:crystalshard>, 40);
additional.addItemEntry(<scalinghealth:heartcontainer>, 40);

// Extra utils
additional.addItemEntry(<extrautils2:boomerang>, 20);
additional.addItemEntry(<extrautils2:magicapple>, 20);
additional.addItemEntry(<extrautils2:ingredients:5>, 20);
additional.addItemEntry(<extrautils2:suncrystal>, 20);

// harvestcraft
additional.addItemEntry(<harvestcraft:toastedwesternitem>, 20);
additional.addItemEntry(<harvestcraft:plumjellysandwichitem>, 20);
additional.addItemEntry(<harvestcraft:orangejellysandwichitem>, 20);
additional.addItemEntry(<harvestcraft:cranberryjellysandwichitem>, 20);

// electroblob
additional.addItemEntry(<ebwizardry:scroll:74>, 20);
additional.addItemEntry(<ebwizardry:identification_scroll>, 15);
additional.addItemEntry(<ebwizardry:ring_mind_control>, 15);
additional.addItemEntry(<ebwizardry:ring_earth_biome>, 15);
additional.addItemEntry(<ebwizardry:amulet_arcane_defence>, 15);
additional.addItemEntry(<ebwizardry:amulet_potential>, 15);
additional.addItemEntry(<ebwizardry:amulet_banishing>, 15);
additional.addItemEntry(<ebwizardry:amulet_ice_protection>, 15);
additional.addItemEntry(<ebwizardry:amulet_ice_protection>, 15);
additional.addItemEntry(<ebwizardry:arcane_tome:1>, 15);
additional.addItemEntry(<ebwizardry:arcane_tome:2>, 15);
additional.addItemEntry(<ebwizardry:arcane_tome:3>, 15);
additional.addItemEntry(<ebwizardry:firebomb>, 15);
additional.addItemEntry(<ebwizardry:poison_bomb>, 15);
additional.addItemEntry(<ebwizardry:smoke_bomb>, 15);
additional.addItemEntry(<ebwizardry:spark_bomb>, 15);


// Base Metals
additional.addItemEntry(<basemetals:emerald_shears>, 20);
additional.addItemEntry(<basemetals:diamond_shears>, 20);
additional.addItemEntry(<basemetals:emerald_horse_armor>, 20);
additional.addItemEntry(<basemetals:gold_shield>, 20);

// Tinkers
additional.addItemEntry(<tconstruct:slimesling:4>, 20);
