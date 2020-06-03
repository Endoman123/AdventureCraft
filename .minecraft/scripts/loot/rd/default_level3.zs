import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;

// A Rougue like dungeon lootpool
var table = LootTables.getTable("neuroflow:chests/chestloot13");
var mainPool = table.getPool("main");
var dungeonLoot = table.addPool("loot_dungeon", 5, 10, 0, 5);
var kkMaterials = table.addPool("kk_materials", 0, 1, 0, 1);

// Clean up default main pool
mainPool.removeEntry("minecraft:apple");
mainPool.removeEntry("minecraft:coal"); 
mainPool.removeEntry("minecraft:gold_nugget"); 
mainPool.removeEntry("minecraft:rotten_flesh");
mainPool.removeEntry("minecraft:emerald");
mainPool.removeEntry("minecraft:wheat");
mainPool.removeEntry("minecraft:stone_axe");
mainPool.addEmptyEntry(10, 0);
mainPool.setRolls(1, 5);
mainPool.setBonusRolls(0, 5);

// Additions go here

// Kingdom Keys Synthesis Material
kkMaterials.addItemEntryHelper(<kk:synthesismaterial>, 1, 1, [
    Functions.setNBT({"material": "sm.lucidcrystal", "rank": "sm.rank.s"}),
    Functions.setCount(1, 5)
], [], "kk_lucidcrystal");

// Vanilla
dungeonLoot.addItemEntry(<minecraft:diamond>, 50);
dungeonLoot.addItemEntry(<minecraft:emerald_block>, 3);
dungeonLoot.addItemEntry(<minecraft:golden_apple:1>, 3);
dungeonLoot.addItemEntry(<minecraft:gold_ingot>, 200);
dungeonLoot.addItemEntry(<minecraft:iron_ingot>, 150);
dungeonLoot.addItemEntry(<minecraft:apple>, 35);
dungeonLoot.addItemEntry(<minecraft:book>, 145);
dungeonLoot.addItemEntry(<minecraft:mossy_cobblestone>, 35);
dungeonLoot.addItemEntry(<minecraft:cooked_chicken>, 35);
dungeonLoot.addItemEntry(<minecraft:bread>, 105);
dungeonLoot.addItemEntry(<minecraft:poisonous_potato>, 130);
dungeonLoot.addItemEntry(<minecraft:clock>, 2);
dungeonLoot.addItemEntry(<minecraft:compass>, 20);

// Astral
dungeonLoot.addItemEntry(<astralsorcery:itemcraftingcomponent>, 90);

// Baubles
dungeonLoot.addItemEntry(<bountifulbaubles:trinketmagiclenses>, 2);
dungeonLoot.addItemEntry(<bountifulbaubles:ringoverclocking>, 2);
dungeonLoot.addItemEntry(<bountifulbaubles:trinketshulkerheart>, 2);
dungeonLoot.addItemEntry(<bountifulbaubles:trinketbezoar>, 2);
dungeonLoot.addItemEntry(<bountifulbaubles:trinketblackdragonscale>, 2);
dungeonLoot.addItemEntry(<bountifulbaubles:trinketankhcharm>, 2);
dungeonLoot.addItemEntry(<bountifulbaubles:shieldankh>.withTag({HideFlags: 2}), 2);
dungeonLoot.addItemEntry(<bountifulbaubles:ringflywheeladvanced>, 2);


// Potion
dungeonLoot.addItemEntry(<minecraft:potion>.withTag({Potion: "cofhcore:healing3"}), 20);
dungeonLoot.addItemEntry(<minecraft:potion>.withTag({Potion: "extrautils2:xu2.doom"}), 20);
dungeonLoot.addItemEntry(<minecraft:potion>.withTag({Potion: "minecraft:long_water_breathing"}), 20);
dungeonLoot.addItemEntry(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), 20);

// Extra utils
dungeonLoot.addItemEntry(<extrautils2:boomerang>, 2);
dungeonLoot.addItemEntry(<extrautils2:magicapple>, 10);
dungeonLoot.addItemEntry(<extrautils2:ingredients:5>, 8);
dungeonLoot.addItemEntry(<extrautils2:suncrystal>, 8);

// harvestcraft
dungeonLoot.addItemEntry(<harvestcraft:toastedwesternitem>, 90);
dungeonLoot.addItemEntry(<harvestcraft:plumjellysandwichitem>, 90);
dungeonLoot.addItemEntry(<harvestcraft:orangejellysandwichitem>, 90);
dungeonLoot.addItemEntry(<harvestcraft:cranberryjellysandwichitem>, 90);

// electroblob
dungeonLoot.addItemEntry(<ebwizardry:scroll:74>, 20);
dungeonLoot.addItemEntry(<ebwizardry:identification_scroll>, 50);
dungeonLoot.addItemEntry(<ebwizardry:ring_mind_control>, 2);
dungeonLoot.addItemEntry(<ebwizardry:ring_earth_biome>, 2);
dungeonLoot.addItemEntry(<ebwizardry:amulet_arcane_defence>, 2);
dungeonLoot.addItemEntry(<ebwizardry:amulet_potential>, 2);
dungeonLoot.addItemEntry(<ebwizardry:amulet_banishing>, 2);
dungeonLoot.addItemEntry(<ebwizardry:amulet_ice_protection>, 2);
dungeonLoot.addItemEntry(<ebwizardry:amulet_ice_protection>, 2);
dungeonLoot.addItemEntry(<ebwizardry:arcane_tome:2>, 10);
dungeonLoot.addItemEntry(<ebwizardry:arcane_tome:3>, 8);
dungeonLoot.addItemEntry(<ebwizardry:firebomb>, 10);
dungeonLoot.addItemEntry(<ebwizardry:poison_bomb>, 10);
dungeonLoot.addItemEntry(<ebwizardry:smoke_bomb>, 10);
dungeonLoot.addItemEntry(<ebwizardry:spark_bomb>, 10);

// Chococraft
dungeonLoot.addItemEntry(<chococraft:ability_fruit>, 3);
dungeonLoot.addItemEntry(<chococraft:ability_fruit:1>, 3);
dungeonLoot.addItemEntry(<chococraft:chocobo_spawn_egg>, 3);
dungeonLoot.addItemEntry(<chococraft:ability_fruit:2>, 3);
dungeonLoot.addItemEntry(<chococraft:ability_fruit:3>, 3);

// Base Metals
dungeonLoot.addItemEntry(<basemetals:emerald_horse_armor>, 10);
dungeonLoot.addItemEntry(<basemetals:gold_shield>, 10);

// Tinkers
dungeonLoot.addItemEntry(<tconstruct:slimesling:4>, 5);

// Enchanted Books

dungeonLoot.addItemEntryHelper(<minecraft:enchanted_book>, 80, 1, [Functions.enchantRandomly([
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
    "extrautils2:xu.zoomerang",                 //  - Zoomerang I
    "extrautils2:xu.bladerang",                 //  - Bladerang I
    "extrautils2:xu.boomereaperang",            //  - Boomereaperang
    "extrautils2:xu.burnerang",                 //  - Burnerang
    "extrautils2:xu.kaboomerang",               //  - Kaboomerang I
    "minecraft:aqua_affinity",                  //  - Aqua Affinity
    "minecraft:bane_of_arthropods",             //  - Bane of Arthropods I
    "minecraft:binding_curse",                  //  - Curse of Binding
    "minecraft:blast_protection",               //  - Blast Protection I
    "minecraft:depth_strider",                  //  - Depth Strider I
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
    "futuremc:channeling",               //  - Channeling
    "futuremc:impaling",                 //  - Impaling I
    "futuremc:loyalty",                  //  - Loyalty I
    "futuremc:riptide",                  //  - Riptide I
    "openblocks:explosive",                     //  - Unstable I
    "openblocks:flim_flam",                     //  - Flim Flam I
    "openblocks:last_stand",                    //  - Last Stand I
    "woot:headhunter"                           //  - Headhunter I
])], []);

