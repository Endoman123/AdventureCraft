
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;


// A Rougue like dungeon lootpool
var table = LootTables.getTable("neuroflow:chests/chestloot14");
var mainPool = table.getPool("main");
var additional = table.addPool("dungeon1", 1, 5, 0, 5);

// Remove kingdom keys loot
table.removePool("kk_loot_rare_materials");
mainPool.removeEntry("kk:recipe");
mainPool.removeEntry("kk:recipes_empty");

// Clean up default main pool
mainPool.removeEntry("minecraft:apple");
mainPool.removeEntry("minecraft:coal");
mainPool.removeEntry("minecraft:gold_nugget");
mainPool.removeEntry("minecraft:rotten_flesh");
mainPool.removeEntry("minecraft:emerald");
mainPool.removeEntry("minecraft:wheat");
mainPool.removeEntry("minecraft:stone_axe");
mainPool.addEmptyEntry(10, 0);
mainPool.setRolls(0, 4);
mainPool.setBonusRolls(0, 5);

// Additions go here

// Bags
// additional.addItemEntry(<jsonlootbags:uncommon_bag>, 80);
// additional.addItemEntry(<jsonlootbags:rare_bag>, 105);
// additional.addItemEntry(<jsonlootbags:superrare_bag>, 30);
// additional.addItemEntry(<jsonlootbags:elusive_bag>, 5);

// Vanilla
additional.addItemEntry(<minecraft:diamond>, 100);
additional.addItemEntry(<minecraft:emerald_block>, 1);
additional.addItemEntry(<minecraft:golden_apple:1>, 6);
additional.addItemEntry(<minecraft:gold_ingot>, 200);
additional.addItemEntry(<minecraft:iron_ingot>, 150);
additional.addItemEntry(<minecraft:cooked_chicken>, 35);
additional.addItemEntry(<minecraft:bread>, 105);
additional.addItemEntry(<minecraft:clock>, 2);
additional.addItemEntry(<minecraft:compass>, 20);


// Baubles
additional.addItemEntry(<bountifulbaubles:shieldobsidian>.withTag({HideFlags: 2}), 8);
additional.addItemEntry(<bountifulbaubles:trinketmagiclenses>, 8);
additional.addItemEntry(<bountifulbaubles:ringoverclocking>, 8);
additional.addItemEntry(<bountifulbaubles:trinketshulkerheart>, 8);
additional.addItemEntry(<bountifulbaubles:trinketbezoar>, 8);
additional.addItemEntry(<bountifulbaubles:trinketblackdragonscale>, 8);
additional.addItemEntry(<bountifulbaubles:trinketankhcharm>, 8);
additional.addItemEntry(<bountifulbaubles:ringflywheeladvanced>, 8);

// Astral
additional.addItemEntry(<astralsorcery:blockworldilluminator>, 50);

// Potion
additional.addItemEntry(<minecraft:potion>.withTag({Potion: "cofhcore:healing3"}), 50);
additional.addItemEntry(<minecraft:potion>.withTag({Potion: "extrautils2:xu2.doom"}), 20);
additional.addItemEntry(<minecraft:potion>.withTag({Potion: "minecraft:long_water_breathing"}), 20);

// Scaling Health
additional.addItemEntry(<scalinghealth:crystalshard>, 200);
additional.addItemEntry(<scalinghealth:heartcontainer>, 30);

// Extra utils
additional.addItemEntry(<extrautils2:boomerang>, 2);
additional.addItemEntry(<extrautils2:magicapple>, 10);

// harvestcraft
additional.addItemEntry(<harvestcraft:toastedwesternitem>, 90);
additional.addItemEntry(<harvestcraft:plumjellysandwichitem>, 90);
additional.addItemEntry(<harvestcraft:orangejellysandwichitem>, 90);
additional.addItemEntry(<harvestcraft:cranberryjellysandwichitem>, 90);

// electroblob
additional.addItemEntry(<ebwizardry:scroll:74>, 20);
additional.addItemEntry(<ebwizardry:identification_scroll>, 50);
additional.addItemEntry(<ebwizardry:ring_mind_control>, 2);
additional.addItemEntry(<ebwizardry:ring_earth_biome>, 2);
additional.addItemEntry(<ebwizardry:amulet_arcane_defence>, 2);
additional.addItemEntry(<ebwizardry:amulet_potential>, 2);
additional.addItemEntry(<ebwizardry:amulet_banishing>, 2);
additional.addItemEntry(<ebwizardry:amulet_ice_protection>, 2);
additional.addItemEntry(<ebwizardry:amulet_ice_protection>, 2);
additional.addItemEntry(<ebwizardry:arcane_tome:3>, 10);

// Base Metals
additional.addItemEntry(<basemetals:emerald_horse_armor>, 10);
additional.addItemEntry(<basemetals:gold_shield>, 10);

// Tinkers
additional.addItemEntry(<tconstruct:slimesling:4>, 5);
additional.addItemEntry(<tconstruct:materials:16>, 9);
additional.addItemEntry(<tconstruct:materials:17>, 12);
additional.addItemEntry(<tconstruct:ingots:3>, 3);
additional.addItemEntry(<tconstruct:ingots>, 2);
additional.addItemEntry(<tconstruct:ingots:1>, 2);
additional.addItemEntry(<tconstruct:ingots:3>, 1);
additional.addItemEntry(<plustic:mirioningot>, 1);

// Enchanted Books
additional.addItemEntryHelper(<minecraft:enchanted_book>, 90, 1, [Functions.enchantRandomly([
    "advancedrocketry:spacebreathing",          //  - Airtight Seal
    "astralsorcery:enchantment.as.nightvision", //  - Night Vision
    "astralsorcery:enchantment.as.smelting",    //  - Scorching Heat
    "bewitchment:magic_protection",             //  - Magic Protection I
    "cofhcore:holding",                         //  - Holding I
    "cofhcore:insight",                         //  - Insight I
    "cofhcore:leech",                           //  - Leech I
    "cofhcore:multishot",                       //  - Multishot I
    "cofhcore:smashing",                        //  - Smashing
    "cofhcore:smelting",                        //  - Smelting
    "cofhcore:soulbound",                       //  - Soulbound I
    "cofhcore:vorpal",                          //  - Vorpal I
    "ebwizardry:flaming_weapon",                //  - Fire Imbuement I
    "ebwizardry:freezing_weapon",               //  - Frost Imbuement I
    "ebwizardry:frost_protection",              //  - Frost Protection I
    "ebwizardry:magic_bow",                     //  - Imbuement I
    "ebwizardry:magic_protection",              //  - Magic Protection I
    "ebwizardry:magic_sword",                   //  - Imbuement I
    "ebwizardry:shock_protection",              //  - Shock Protection I
    "endercore:autosmelt",                      //  - Auto-Smelt
    "endercore:xpboost",                        //  - XP Boost I
    "enderio:repellent",                        //  - Repellent I
    "enderio:shimmer",                          //  - Shimmer
    "enderio:soulbound",                        //  - Soulbound
    "enderio:witherarrow",                      //  - Withering
    "enderio:witherweapon",                     //  - Decay
    "extrautils2:xu",                           //  - Zoomerang I
    "extrautils2:xu.bladerang",                 //  - Bladerang I
    "extrautils2:xu.boomereaperang",            //  - Boomereaperang
    "extrautils2:xu.burnerang",                 //  - Burnerang
    "extrautils2:xu.kaboomerang",               //  - Kaboomerang I
    "minecraft:aqua_affinity",                  //  - Aqua Affinity
    "minecraft:bane_of_arthropods",             //  - Bane of Arthropods I
    "minecraft:binding_curse",                  //  - Curse of Binding
    "minecraft:blast_protection",               //  - Blast Protection I
    "minecraft:depth_strider.zoomerang",        //  - Depth Strider I
    "minecraft:efficiency",                     //  - Efficiency I
    "minecraft:feather_falling",                //  - Feather Falling I
    "minecraft:fire_aspect",                    //  - Fire Aspect I
    "minecraft:fire_protection",                //  - Fire Protection I
    "minecraft:flame",                          //  - Flame
    "minecraft:fortune",                        //  - Fortune I
    "minecraft:frost_walker",                   //  - Frost Walker I
    "minecraft:infinity",                       //  - Infinity
    "minecraft:knockback",                      //  - Knockback I
    "minecraft:looting",                        //  - Looting I
    "minecraft:luck_of_the_sea",                //  - Luck of the Sea I
    "minecraft:lure",                           //  - Lure I
    "minecraft:mending",                        //  - Mending
    "minecraft:power",                          //  - Power I
    "minecraft:projectile_protection",          //  - Projectile Protection I
    "minecraft:protection",                     //  - Protection I
    "minecraft:punch",                          //  - Punch I
    "minecraft:respiration",                    //  - Respiration I
    "minecraft:sharpness",                      //  - Sharpness I
    "minecraft:silk_touch",                     //  - Silk Touch
    "minecraft:smite",                          //  - Smite I
    "minecraft:sweeping",                       //  - Sweeping Edge I
    "minecraft:thorns",                         //  - Thorns I
    "minecraft:unbreaking",                     //  - Unbreaking I
    "minecraft:vanishing_curse",                //  - Curse of Vanishing
    "minecraftfuture:channeling",               //  - Channeling
    "minecraftfuture:impaling",                 //  - Impaling I
    "minecraftfuture:loyalty",                  //  - Loyalty I
    "minecraftfuture:riptide",                  //  - Riptide I
    "openblocks:explosive",                     //  - Unstable I
    "openblocks:flim_flam",                     //  - Flim Flam I
    "openblocks:last_stand",                    //  - Last Stand I
    "woot:headhunter"                           //  - Headhunter I
])], []);

