
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;


// A Rougue like dungeon lootpool
var table = LootTables.getTable("neuroflow:chests/chestloot8");
// Clean up default main pool
var mainPool = table.getPool("main");
mainPool.removeEntry("minecraft:apple");
mainPool.removeEntry("minecraft:coal");
mainPool.removeEntry("minecraft:gold_nugget");
mainPool.removeEntry("minecraft:rotten_flesh");
mainPool.removeEntry("minecraft:emerald");
mainPool.removeEntry("minecraft:wheat");
mainPool.removeEntry("minecraft:stone_axe");
mainPool.addEmptyEntry(10, 0);
mainPool.setRolls(0, 4);
mainPool.setBonusRolls(0, 10);
var additional = table.addPool("dungeon1", 1, 20, 0, 5);

// Additions go here

// Bags
additional.addItemEntry(<jsonlootbags:uncommon_bag>, 70);
additional.addItemEntry(<jsonlootbags:rare_bag>, 75);
additional.addItemEntry(<jsonlootbags:superrare_bag>, 40);
additional.addItemEntry(<jsonlootbags:elusive_bag>, 5);

// Vanilla
additional.addItemEntry(<minecraft:diamond>, 70);
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
additional.addItemEntry(<scalinghealth:crystalshard>, 230);
additional.addItemEntry(<scalinghealth:heartcontainer>, 60);

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

// Enchanted Books
additional.addItemEntryHelper(<minecraft:enchanted_book>, 100, 1, [Functions.enchantRandomly([
    42,     // ebwizardry:freezing_weapon - Frost Imbuement I
    61,     // minecraft:luck_of_the_sea - Luck of the Sea I
    37,     // enderio:repellent - Repellent I
    22,     // minecraft:sweeping - Sweeping Edge I
    7,      // minecraft:thorns - Thorns I
    50,     // minecraft:flame - Flame
    2,      // minecraft:feather_falling - Feather Falling I
    57,     // cofhcore:leech - Leech I
    56,     // cofhcore:insight - Insight I
    10,     // minecraft:binding_curse - Curse of Binding
    30,     // enderio:witherarrow - Withering
    46,     // minecraftfuture:channeling - Channeling
    65,     // astralsorcery:enchantment.as.nightvision - Night Vision
    4,      // minecraft:projectile_protection - Projectile Protection I
    17,     // minecraft:smite - Smite I
    9,      // minecraft:frost_walker - Frost Walker I
    49,     // minecraft:punch - Punch I
    47,     // minecraftfuture:impaling - Impaling I
    63,     // cofhcore:soulbound - Soulbound I
    16,     // minecraft:sharpness - Sharpness I
    32,     // minecraft:efficiency - Efficiency I
    43,     // ebwizardry:magic_protection - Magic Protection I
    36,     // enderio:witherweapon - Decay
    59,     // cofhcore:smashing - Smashing
    13,     // extrautils2:xu.burnerang - Burnerang
    62,     // minecraft:lure - Lure I
    20,     // minecraft:fire_aspect - Fire Aspect I
    39,     // ebwizardry:magic_sword - Imbuement I
    29,     // enderio:soulbound - Soulbound
    34,     // minecraft:unbreaking - Unbreaking I
    66,     // astralsorcery:enchantment.as.smelting - Scorching Heat
    58,     // cofhcore:multishot - Multishot I
    24,     // openblocks:last_stand - Last Stand I
    64,     // cofhcore:vorpal - Vorpal I
    44,     // ebwizardry:frost_protection - Frost Protection I
    15,     // extrautils2:xu.boomereaperang - Boomereaperang
    35,     // minecraft:fortune - Fortune I
    23,     // openblocks:explosive - Unstable I
    25,     // openblocks:flim_flam - Flim Flam I
    14,     // extrautils2:xu.bladerang - Bladerang I
    70,     // minecraft:mending - Mending
    19,     // minecraft:knockback - Knockback I
    1,      // minecraft:fire_protection - Fire Protection I
    48,     // minecraft:power - Power I
    11,     // extrautils2:xu.kaboomerang - Kaboomerang I
    54,     // woot:headhunter - Headhunter I
    45,     // ebwizardry:shock_protection - Shock Protection I
    6,      // minecraft:aqua_affinity - Aqua Affinity
    52,     // minecraftfuture:loyalty - Loyalty I
    38,     // bewitchment:magic_protection - Magic Protection I
    26,     // advancedrocketry:spacebreathing - Airtight Seal
    60,     // cofhcore:smelting - Smelting
    55,     // cofhcore:holding - Holding I
    53,     // minecraftfuture:riptide - Riptide I
    71,     // minecraft:vanishing_curse - Curse of Vanishing
    31,     // enderio:shimmer - Shimmer
    28,     // endercore:autosmelt - Auto-Smelt
    3,      // minecraft:blast_protection - Blast Protection I
    18,     // minecraft:bane_of_arthropods - Bane of Arthropods I
    27,     // endercore:xpboost - XP Boost I
    33,     // minecraft:silk_touch - Silk Touch
    21,     // minecraft:looting - Looting I
    12,     // extrautils2:xu.zoomerang - Zoomerang I
    8,      // minecraft:depth_strider - Depth Strider I
    5,      // minecraft:respiration - Respiration I
    40,     // ebwizardry:magic_bow - Imbuement I
    41,     // ebwizardry:flaming_weapon - Fire Imbuement I
    51,     // minecraft:infinity - Infinity
    0       // minecraft:protection - Protection I
])], []);
