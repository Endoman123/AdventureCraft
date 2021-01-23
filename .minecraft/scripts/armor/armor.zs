import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;
import mods.zentoolforge.Toolforge;
import modtweaker.tconstruct.ITICMaterial;

// Script that gives minecraft mobs some drip

// Procedurally generates combinations of parts to assign to mobs.

// TODO Factory functions for equipement is pretty copy-pastey but I don't want to use any more zenscript then I have to
// TODO equipment appears to not spawn with traits (bug???)

// ===== Config ====================================================================================================
val armor_chance as double = 1.0;

// ===== Maps ======================================================================================================

// --- Weapon materials
// Key is the material, Value is the weight
val weaponMaterialMap = {
     <ticmat:alumite>                        : 2,
     <ticmat:amethyst>                       : 5,
     <ticmat:ardite>                         : 3,
     <ticmat:blood_infused_iron>             : 10,
     <ticmat:blueslime>                      : 20,
     <ticmat:bone>                           : 25,
     <ticmat:boron>                          : 10,
     <ticmat:bronze>                         : 30,
     <ticmat:cactus>                         : 28,
     <ticmat:certusquartz_plustic>           : 17,
     <ticmat:chocolate>                      : 3,
     <ticmat:cobalt>                         : 5,
     <ticmat:construction_alloy>             : 10,
     <ticmat:copper>                         : 28,
     <ticmat:crude_steel>                    : 20,
     <ticmat:crystalline_pink_slime>         : 15,
     <ticmat:desert_myrmex>                  : 3,
     <ticmat:dragonbone>                     : 3,
     <ticmat:dragonsteel_fire>               : 2,
     <ticmat:dragonsteel_ice>                : 2,
     <ticmat:electrum>                       : 10,
     <ticmat:emerald_plustic>                : 8,
     <ticmat:extrabotany:ingotorichalcos>    : 1,
     <ticmat:firewood>                       : 20,
     <ticmat:flint>                          : 27,
     <ticmat:fluixcrystal_plustic>           : 20,
     <ticmat:invar>                          : 22,
     <ticmat:iron>                           : 30,
     <ticmat:jungle_myrmex>                  : 2,
     <ticmat:knightslime>                    : 10,
     <ticmat:magmaslime>                     : 10,
     <ticmat:manyullyn>                      : 3,
     <ticmat:obsidian>                       : 12,
     <ticmat:osgloglas>                      : 6,
     <ticmat:osmiridium>                     : 6,
     <ticmat:osmium>                         : 22,
     <ticmat:paper>                          : 25,
     <ticmat:pigiron>                        : 15,
     <ticmat:platinum_plustic>               : 15,
     <ticmat:prismarine>                     : 15,
     <ticmat:silver>                         : 18,
     <ticmat:slime>                          : 26,
     <ticmat:sponge>                         : 22,
     <ticmat:steel>                          : 20,
     <ticmat:stone>                          : 30,
     <ticmat:titanium>                       : 9,
     <ticmat:uranium>                        : 2,
     <ticmat:weezer>                         : 1,
     <ticmat:wood>                           : 30,
     <ticmat:xu_demonic_metal>               : 10,
     <ticmat:xu_enchanted_metal>             : 10,
     <ticmat:xu_evil_metal>                  : 5,
     <ticmat:xu_magical_wood>                : 20
} as int[ITICMaterial];

// Key is material, Value is the weight
// List is small as without armor traits the different is only in stats
val armorMaterialMap = {
    <ticmat:alumite>                        : 1,
    <ticmat:ardite>                         : 2,
    <ticmat:bone>                           : 8,
    <ticmat:iron>                           : 9,
    <ticmat:knightslime>                    : 5,
    <ticmat:manyullyn>                      : 2,
    <ticmat:obsidian>                       : 5,
    <ticmat:slime>                          : 8,
    <ticmat:stone>                          : 10,
    <ticmat:wood>                           : 10,
} as int[ITICMaterial];

// ===== Weapon Constructors ========================================================================================

// Adds a chance for a mob to spawn with no weapon
// - multiplier: double multiplied to the length of weaponMaterialMap to weight the chance of spawning with no weapon.
// Higher number means lower chance of spawning with weapons
function addEmptySlots(multiplier as double, group as ArmorGroup, weaponMaterialMap as int[ITICMaterial]) {
    var weaponMatSize = weaponMaterialMap.entrySet.length;
    weaponMatSize = (multiplier * multiplier) as int;

    group.addArmor(ArmorHandler.createArmorSlot("mainhand", null, weaponMatSize, 0.0));
}

// Adds a chance for a mob to spawn with a weapon in their mainhand
// - multiplier: double multiplied to matWeight that affects spawn weight (higher = more likely)
// - dropChance: double representing percent chance of dropping item (0..1.0)
function addWeaponArmorSlot(
    weaponType as IItemStack,
    multiplier as double,
    dropChance as double,
    group as ArmorGroup,
    weaponMaterialMap as int[ITICMaterial]
) {
    val definition = weaponType.definition;

    for mat, matWeight in weaponMaterialMap {
        val modifiedMatWeight = (matWeight * multiplier) as int;

        val weapon = Toolforge.buildTool(definition, materialsForTool(weaponType, mat));
        group.addArmor(ArmorHandler.createArmorSlot(
            "mainhand",
            weapon,
            modifiedMatWeight,
            dropChance
        ));
    }
}

// Resolves the amount of materials needed to craft a `toolType`
function materialsForTool(toolType as IItemStack, mat as ITICMaterial) as ITICMaterial[] {
    if (toolType.name == <tconstruct:broadsword>.name) {
        return [mat, mat, mat];
    } else if (toolType.name == <tconstruct:cleaver>.name) {
        return [mat, mat, mat, mat];
    } else if (toolType.name == <tconstruct:hammer>.name) {
        return [mat, mat, mat, mat];
    } else if (toolType.name == <tconstruct:lumberaxe>.name) {
        return [mat, mat, mat, mat];
    } else if (toolType.name == <tconstruct:pickaxe>.name) {
        return [mat, mat, mat];
    } else if (toolType.name == <tconstruct:scythe>.name) {
        return [mat, mat, mat, mat];
    } else if (toolType.name == <tconstruct:shovel>.name) {
        return [mat, mat, mat];
    } else if (toolType.name == <tconstruct:frypan>.name) {
        return [mat, mat];
    }

    return [];
}

// ===== Armor Constructors =========================================================================================

// Adds a piece of equipement to a mob
// - armorType: type of armor being spawned (helmet, chestplate, etc.)
// - dropChance: double representing percent chance of dropping item (0..1.0)
// - noSpawnMultiplier: multiplier for whether mob will spawn WITHOUT piece of equipment (higher = more likely to be naked)
function addProtectiveArmorSlots(
    armorType as IItemStack,
    dropChance as double,
    noSpawnMultiplier as double,
    group as ArmorGroup,
    armorMaterialMap as int[ITICMaterial]
) {
    val definition = armorType.definition;
    val bodypartEquipped = bodypartForArmor(armorType) as string;

    // Add all armors
    for mat, matWeight in armorMaterialMap {
        val armor = Toolforge.buildTool(definition, [
            mat as ITICMaterial,
            mat as ITICMaterial,
            mat as ITICMaterial
        ]);
        armor.withLore(["§5Strange, no modifiers...§r"]);

        group.addArmor(ArmorHandler.createArmorSlot(
            bodypartEquipped,
            armor,
            matWeight as int,
            dropChance
        ));
    }

    // add chance to not spawn armor piece
    var armorMatSize = armorMaterialMap.entrySet.length;
    armorMatSize = (armorMatSize * noSpawnMultiplier) as int;

    group.addArmor(ArmorHandler.createArmorSlot(
        bodypartEquipped,
        null,
        armorMatSize,
        0.0
    ));
}

// Resolves an armorType to where it should be equipped
function bodypartForArmor(armorType as IItemStack) as string {
    if (armorType.name == <conarm:helmet>.name) {
        return "head";
    } else if (armorType.name == <conarm:chestplate>.name) {
        return "chest";
    } else if (armorType.name == <conarm:leggings>.name) {
        return "legs";
    } else if (armorType.name == <conarm:boots>.name) {
        return "feet";
    }

    return "???";
}

// ===== Setting up groups ==========================================================================================

function addWeaponSlots(stage as string, group as ArmorGroup, weaponMaterialMap as int[ITICMaterial]) {
    if (stage == "start") {
        addEmptySlots(50, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:broadsword>,     2, 0.01, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:shovel>,         2, 0.01, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:hammer>,         1, 0.04, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:pickaxe>,        1, 0.04, group, weaponMaterialMap);
    } else if (stage == "middle") {
        addEmptySlots(15, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:broadsword>,     5, 0.01, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:shovel>,         4, 0.01, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:pickaxe>,        4, 0.04, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:cleaver>,        4, 0.05, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:lumberaxe>,      3, 0.01, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:frypan>,         2, 0.01, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:scythe>,         2, 0.03, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:hammer>,         1, 0.04, group, weaponMaterialMap);
    } else if (stage == "end") {
        addEmptySlots(5, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:broadsword>,     3, 0.01, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:cleaver>,        3, 0.05, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:hammer>,         3, 0.04, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:frypan>,         2, 0.01, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:lumberaxe>,      2, 0.01, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:pickaxe>,        2, 0.04, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:scythe>,         2, 0.03, group, weaponMaterialMap);
        addWeaponArmorSlot(<tconstruct:shovel>,         2, 0.01, group, weaponMaterialMap);
    }
}

function addArmorSlots(stage as string, group as ArmorGroup, armorMaterialMap as int[ITICMaterial]) {
    if (stage == "start") {
        addProtectiveArmorSlots(<conarm:helmet>,        0.01, 10, group, armorMaterialMap);
        addProtectiveArmorSlots(<conarm:chestplate>,    0.01, 10, group, armorMaterialMap);
        addProtectiveArmorSlots(<conarm:leggings>,      0.01, 10, group, armorMaterialMap);
        addProtectiveArmorSlots(<conarm:boots>,         0.01, 10, group, armorMaterialMap);
    } else if (stage == "middle") {
        addProtectiveArmorSlots(<conarm:helmet>,        0.01, 3, group, armorMaterialMap);
        addProtectiveArmorSlots(<conarm:chestplate>,    0.01, 3, group, armorMaterialMap);
        addProtectiveArmorSlots(<conarm:leggings>,      0.01, 3, group, armorMaterialMap);
        addProtectiveArmorSlots(<conarm:boots>,         0.01, 3, group, armorMaterialMap);
    } else if (stage == "end") {
        addProtectiveArmorSlots(<conarm:helmet>,        0.01, 1, group, armorMaterialMap);
        addProtectiveArmorSlots(<conarm:chestplate>,    0.01, 1, group, armorMaterialMap);
        addProtectiveArmorSlots(<conarm:leggings>,      0.01, 1, group, armorMaterialMap);
        addProtectiveArmorSlots(<conarm:boots>,         0.01, 1, group, armorMaterialMap);
    }
}
// ===== Main ======================================================================================================
// ----- start
var startGroup = ArmorHandler.createArmorGroup("start", 1.0);
startGroup.addGameStage("start");

val startEntities = [
    "minecraft:zombie"
] as string[];
for e in startEntities {
    ArmorHandler.createArmorEntity(e as string);
}

addWeaponSlots("start", startGroup, weaponMaterialMap);
addArmorSlots("start", startGroup, armorMaterialMap);

// ----- middle
var middleGroup = ArmorHandler.createArmorGroup("middle", 1.0);
middleGroup.addGameStage("middle");

val middleEntities = [
    "minecraft:zombie",
    "minecraft:skeleton"
] as string[];
for e in middleEntities {
    ArmorHandler.createArmorEntity(e as string);
}

addWeaponSlots("middle", middleGroup, weaponMaterialMap);
addArmorSlots("middle", middleGroup, armorMaterialMap);

// ----- end
var endGroup = ArmorHandler.createArmorGroup("end", 1.0);
endGroup.addGameStage("end");

val endEntities = [
    "minecraft:zombie",
    "minecraft:skeleton",
    "ebwizardry:evil_wizard"
] as string[];
for e in endEntities {
    ArmorHandler.createArmorEntity(e as string);
}

addWeaponSlots("end", endGroup, weaponMaterialMap);
addArmorSlots("end", endGroup, armorMaterialMap);
