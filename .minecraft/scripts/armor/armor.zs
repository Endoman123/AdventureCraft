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
     <ticmat:alumite>                        : 1,
     <ticmat:amethyst>                       : 1,
     <ticmat:ardite>                         : 1,
     <ticmat:blood_infused_iron>             : 1,
     <ticmat:blueslime>                      : 1,
     <ticmat:bone>                           : 1,
     <ticmat:boron>                          : 1,
     <ticmat:bronze>                         : 1,
     <ticmat:cactus>                         : 1,
     <ticmat:certusquartz_plustic>           : 1,
     <ticmat:chocolate>                      : 1,
     <ticmat:cobalt>                         : 1,
     <ticmat:construction_alloy>             : 1,
     <ticmat:copper>                         : 1,
     <ticmat:crude_steel>                    : 1,
     <ticmat:crystalline_pink_slime>         : 1,
     <ticmat:desert_myrmex>                  : 1,
     <ticmat:dragonbone>                     : 1,
     <ticmat:dragonsteel_fire>               : 1,
     <ticmat:dragonsteel_ice>                : 1,
     <ticmat:electrum>                       : 1,
     <ticmat:emerald_plustic>                : 1,
     <ticmat:extrabotany:ingotorichalcos>    : 1,
     <ticmat:firewood>                       : 1,
     <ticmat:flint>                          : 1,
     <ticmat:fluixcrystal_plustic>           : 1,
     <ticmat:invar>                          : 1,
     <ticmat:iron>                           : 1,
     <ticmat:jungle_myrmex>                  : 1,
     <ticmat:knightslime>                    : 1,
     <ticmat:magmaslime>                     : 1,
     <ticmat:manyullyn>                      : 1,
     <ticmat:obsidian>                       : 1,
     <ticmat:osgloglas>                      : 1,
     <ticmat:osmiridium>                     : 1,
     <ticmat:osmium>                         : 1,
     <ticmat:paper>                          : 1,
     <ticmat:pigiron>                        : 1,
     <ticmat:platinum_plustic>               : 1,
     <ticmat:prismarine>                     : 1,
     <ticmat:silver>                         : 1,
     <ticmat:slime>                          : 1,
     <ticmat:sponge>                         : 1,
     <ticmat:steel>                          : 1,
     <ticmat:stone>                          : 1,
     <ticmat:titanium>                       : 1,
     <ticmat:uranium>                        : 1,
     <ticmat:weezer>                         : 1,
     <ticmat:wood>                           : 1,
     <ticmat:xu_demonic_metal>               : 1,
     <ticmat:xu_enchanted_metal>             : 1,
     <ticmat:xu_evil_metal>                  : 1,
     <ticmat:xu_magical_wood>                : 1
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

// Entities allowed
// TODO use Value for game stages
val entities = {
    "minecraft:zombie"          : "standard",
    "ebwizardry:evil_wizard"          : "standard",
    "minecraft:enderman"   : "standard"
} as string[string];

// ===== Functions ==================================================================================================

function addEntitiesToArmorGroup(group as ArmorGroup, entities as string[string]) {
    for entity in entities {
        var armorEntity = ArmorHandler.createArmorEntity(entity);
        group.addEntity(armorEntity);
    }
}

function addWeaponSlots(group as ArmorGroup, weaponMaterialMap as int[ITICMaterial]) {
    addEmptySlots(7, group, weaponMaterialMap);

    // common
    addWeaponArmorSlot(<tconstruct:broadsword>, 6, 0.01, group, weaponMaterialMap);
    addWeaponArmorSlot(<tconstruct:shovel>, 4, 0.01, group, weaponMaterialMap);

    // medium
    addWeaponArmorSlot(<tconstruct: lumberaxe>, 2, 0.01, group, weaponMaterialMap);
    addWeaponArmorSlot(<tconstruct: frypan>, 1, 0.01, group, weaponMaterialMap);

    // rare
    addWeaponArmorSlot(<tconstruct: cleaver>, 0.25, 0.03, group, weaponMaterialMap);
    addWeaponArmorSlot(<tconstruct: scythe>, 0.4, 0.02, group, weaponMaterialMap);
    addWeaponArmorSlot(<tconstruct: hammer>, 0.5, 0.02, group, weaponMaterialMap);
}

function addArmorSlots(
    group as ArmorGroup,
    armorMaterialMap as int[ITICMaterial]
) {
    addProtectiveArmorSlots(<conarm:helmet>,        0.02, 1, group, armorMaterialMap);
    addProtectiveArmorSlots(<conarm:chestplate>,    0.02, 1, group, armorMaterialMap);
    addProtectiveArmorSlots(<conarm:leggings>,      0.02, 1, group, armorMaterialMap);
    addProtectiveArmorSlots(<conarm:boots>,         0.02, 1, group, armorMaterialMap);
}

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

// ===== Main ======================================================================================================
var group = ArmorHandler.createArmorGroup("drip", 1.0);
addEntitiesToArmorGroup(group, entities);
addWeaponSlots(group, weaponMaterialMap);
addArmorSlots(group, armorMaterialMap);
