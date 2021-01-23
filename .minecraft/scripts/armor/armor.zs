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
     <ticmat:blood_infused_wood>             : 1,
     <ticmat:blueslime>                      : 1,
     <ticmat:bone>                           : 1,
     <ticmat:boron>                          : 1,
     <ticmat:boron_nitride>                  : 1,
     <ticmat:bronze>                         : 1,
     <ticmat:cactus>                         : 1,
     <ticmat:certusquartz_plustic>           : 1,
     <ticmat:chocolate>                      : 1,
     <ticmat:cobalt>                         : 1,
     <ticmat:conductive_iron>                : 1,
     <ticmat:construction_alloy>             : 1,
     <ticmat:copper>                         : 1,
     <ticmat:crude_steel>                    : 1,
     <ticmat:crystalline_pink_slime>         : 1,
     <ticmat:dark_steel>                     : 1,
     <ticmat:desert_myrmex>                  : 1,
     <ticmat:dragonbone>                     : 1,
     <ticmat:dragonsteel_fire>               : 1,
     <ticmat:dragonsteel_ice>                : 1,
     <ticmat:electrical_steel>               : 1,
     <ticmat:electrum>                       : 1,
     <ticmat:elementium>                     : 1,
     <ticmat:emerald_plustic>                : 1,
     <ticmat:end_steel>                      : 1,
     <ticmat:enderium_plustic>               : 1,
     <ticmat:endstone>                       : 1,
     <ticmat:energetic_alloy>                : 1,
     <ticmat:extrabotany:ingotorichalcos>    : 1,
     <ticmat:extrabotany:ingotshadowium>     : 1,
     <ticmat:firewood>                       : 1,
     <ticmat:flint>                          : 1,
     <ticmat:fluixcrystal_plustic>           : 1,
     <ticmat:hard_carbon>                    : 1,
     <ticmat:infinity_avaritia_plustic>      : 1,
     <ticmat:invar>                          : 1,
     <ticmat:iridium>                        : 1,
     <ticmat:iron>                           : 1,
     <ticmat:jungle_myrmex>                  : 1,
     <ticmat:knightslime>                    : 1,
     <ticmat:lead>                           : 1,
     <ticmat:livingwood_plustic>             : 1,
     <ticmat:lumium_plustic>                 : 1,
     <ticmat:magmaslime>                     : 1,
     <ticmat:magnesium>                      : 1,
     <ticmat:manasteel>                      : 1,
     <ticmat:manyullyn>                      : 1,
     <ticmat:melodic_alloy>                  : 1,
     <ticmat:netherrack>                     : 1,
     <ticmat:nickel>                         : 1,
     <ticmat:obsidian>                       : 1,
     <ticmat:osgloglas>                      : 1,
     <ticmat:osmiridium>                     : 1,
     <ticmat:osmium>                         : 1,
     <ticmat:paper>                          : 1,
     <ticmat:pigiron>                        : 1,
     <ticmat:platinum_plustic>               : 1,
     <ticmat:prismarine>                     : 1,
     <ticmat:psigem>                         : 1,
     <ticmat:psimetal>                       : 1,
     <ticmat:pulsating_iron>                 : 1,
     <ticmat:redstone_alloy>                 : 1,
     <ticmat:refinedglowstone>               : 1,
     <ticmat:refinedobsidian>                : 1,
     <ticmat:signalum_plustic>               : 1,
     <ticmat:silver>                         : 1,
     <ticmat:slime>                          : 1,
     <ticmat:soularium>                      : 1,
     <ticmat:sponge>                         : 1,
     <ticmat:starmetal>                      : 1,
     <ticmat:steel>                          : 1,
     <ticmat:stone>                          : 1,
     <ticmat:terrasteel>                     : 1,
     <ticmat:thorium>                        : 1,
     <ticmat:titanium>                       : 1,
     <ticmat:tough>                          : 1,
     <ticmat:uranium>                        : 1,
     <ticmat:vibrant_alloy>                  : 1,
     <ticmat:vivid_alloy>                    : 1,
     <ticmat:weezer>                         : 1,
     <ticmat:wood>                           : 1,
     <ticmat:xu_demonic_metal>               : 1,
     <ticmat:xu_enchanted_metal>             : 1,
     <ticmat:xu_evil_metal>                  : 1,
     <ticmat:xu_magical_wood>                : 1,
     <ticmat:xu_magical_wood>                : 1
} as int[ITICMaterial];

// Key is material, Value is the weight
// List is small as without armor traits the different is only in stats
val armorMaterialMap = {
    <ticmat:alumite>                        : 1,
    <ticmat:ardite>                         : 1,
    <ticmat:bone>                           : 1,
    <ticmat:iron>                           : 1,
    <ticmat:knightslime>                    : 1,
    <ticmat:manyullyn>                      : 1,
    <ticmat:obsidian>                       : 1,
    <ticmat:slime>                          : 1,
    <ticmat:stone>                          : 1,
    <ticmat:wood>                           : 1,
} as int[ITICMaterial];

// Entities allowed
// TODO use Value for game stages
val entities = {
    "minecraft:zombie"          : "standard",
    "minecraft:zombie_pigman"   : "standard"
} as string[string];

// ===== Functions ==================================================================================================

function addEntitiesToArmorGroup(group as ArmorGroup, entities as string[string]) {
    for entity in entities {
        var armorEntity = ArmorHandler.createArmorEntity(entity);
        group.addEntity(armorEntity);
    }
}

function addWeaponSlots(group as ArmorGroup, weaponMaterialMap as int[ITICMaterial]) {
    addEmptySlots(group, weaponMaterialMap);
    addBroadswordArmorSlots(group, weaponMaterialMap);
    addCleaverArmorSlots(group, weaponMaterialMap);
    addLumberaxeArmorSlots(group, weaponMaterialMap);
    addScytheArmorSlots(group, weaponMaterialMap);
    addFrypanArmorSlots(group, weaponMaterialMap);
    addHammerArmorSlots(group, weaponMaterialMap);
    addShovelArmorSlots(group, weaponMaterialMap);
}

function addArmorSlots(
    group as ArmorGroup,
    armorMaterialMap as int[ITICMaterial]
) {
    addHelmetArmorSlots(group, armorMaterialMap);
    addChestplateArmorSlots(group, armorMaterialMap);
    addLeggingsArmorSlots(group, armorMaterialMap);
    addBootsArmorSlots(group, armorMaterialMap);
}

// ===== Weapon Constructors ========================================================================================
// TODO it'd be nice to combine these, but some of the weapon types take > 3 materials to build them...

// Adds a chance for a mob to spawn with no weapon
function addEmptySlots(group as ArmorGroup, weaponMaterialMap as int[ITICMaterial]) {
    var weaponMatSize = weaponMaterialMap.entrySet.length;
    weaponMatSize *= 5;

    group.addArmor(ArmorHandler.createArmorSlot("mainhand", null, weaponMatSize, 0.0));
}

function addBroadswordArmorSlots(
    group as ArmorGroup,
    weaponMaterialMap as int[ITICMaterial]
) {
    val definition = <tconstruct:broadsword>.definition;

    for mat, matWeight in weaponMaterialMap {
        val weapon = Toolforge.buildTool(definition, [
            mat as ITICMaterial,
            mat as ITICMaterial,
            mat as ITICMaterial
        ]);
        group.addArmor(ArmorHandler.createArmorSlot(
            "mainhand",
            weapon,
            matWeight,
            1.0 // TODO drop chance should NOT be 100 %
        ));
    }
}

function addCleaverArmorSlots(
    group as ArmorGroup,
    weaponMaterialMap as int[ITICMaterial]
) {
    val definition = <tconstruct:cleaver>.definition;

    for mat, matWeight in weaponMaterialMap {
        val weapon = Toolforge.buildTool(definition, [
            mat as ITICMaterial,
            mat as ITICMaterial,
            mat as ITICMaterial,
            mat as ITICMaterial
        ]);
        group.addArmor(ArmorHandler.createArmorSlot(
            "mainhand",
            weapon,
            matWeight,
            1.0 // TODO drop chance should NOT be 100 %
        ));
    }
}

function addLumberaxeArmorSlots(
    group as ArmorGroup,
    weaponMaterialMap as int[ITICMaterial]
) {
    val definition = <tconstruct:lumberaxe>.definition;

    for mat, matWeight in weaponMaterialMap {
        val weapon = Toolforge.buildTool(definition, [
            mat as ITICMaterial,
            mat as ITICMaterial,
            mat as ITICMaterial,
            mat as ITICMaterial
        ]);
        group.addArmor(ArmorHandler.createArmorSlot(
            "mainhand",
            weapon,
            matWeight,
            1.0 // TODO drop chance should NOT be 100 %
        ));
    }
}

function addScytheArmorSlots(
    group as ArmorGroup,
    weaponMaterialMap as int[ITICMaterial]
) {
    val definition = <tconstruct:scythe>.definition;

    for mat, matWeight in weaponMaterialMap {
        val weapon = Toolforge.buildTool(definition, [
            mat as ITICMaterial,
            mat as ITICMaterial,
            mat as ITICMaterial,
            mat as ITICMaterial
        ]);
        group.addArmor(ArmorHandler.createArmorSlot(
            "mainhand",
            weapon,
            matWeight,
            1.0 // TODO drop chance should NOT be 100 %
        ));
    }
}

function addFrypanArmorSlots(
    group as ArmorGroup,
    weaponMaterialMap as int[ITICMaterial]
) {
    val definition = <tconstruct:frypan>.definition;

    for mat, matWeight in weaponMaterialMap {
        val weapon = Toolforge.buildTool(definition, [
            mat as ITICMaterial,
            mat as ITICMaterial
        ]);
        group.addArmor(ArmorHandler.createArmorSlot(
            "mainhand",
            weapon,
            matWeight,
            1.0 // TODO drop chance should NOT be 100 %
        ));
    }
}

function addHammerArmorSlots(
    group as ArmorGroup,
    weaponMaterialMap as int[ITICMaterial]
) {
    val definition = <tconstruct:hammer>.definition;

    for mat, matWeight in weaponMaterialMap {
        val weapon = Toolforge.buildTool(definition, [
            mat as ITICMaterial,
            mat as ITICMaterial,
            mat as ITICMaterial,
            mat as ITICMaterial
        ]);
        group.addArmor(ArmorHandler.createArmorSlot(
            "mainhand",
            weapon,
            matWeight,
            1.0 // TODO drop chance should NOT be 100 %
        ));
    }
}

function addShovelArmorSlots(
    group as ArmorGroup,
    weaponMaterialMap as int[ITICMaterial]
) {
    val definition = <tconstruct:shovel>.definition;

    for mat, matWeight in weaponMaterialMap {
        val weapon = Toolforge.buildTool(definition, [
            mat as ITICMaterial,
            mat as ITICMaterial,
            mat as ITICMaterial
        ]);
        group.addArmor(ArmorHandler.createArmorSlot(
            "mainhand",
            weapon,
            matWeight,
            1.0 // TODO drop chance should NOT be 100 %
        ));
    }
}

// ===== Armor Constructors =========================================================================================

// Gets all combinations of helmet armor slots to be added to a group
function addHelmetArmorSlots(
    group as ArmorGroup,
    armorMaterialMap as int[ITICMaterial]
) as ArmorSlot [] {
    val definition = <conarm:helmet>.definition;

    for mat, matWeight in armorMaterialMap {
        val armor = Toolforge.buildTool(definition, [
            mat as ITICMaterial,
            mat as ITICMaterial,
            mat as ITICMaterial
        ]);
        group.addArmor(ArmorHandler.createArmorSlot(
            "head",
            armor,
            matWeight,
            1.0 // TODO drop chance should NOT be 100 %
        ));
    }

    // add chance to not spawn armor piece
    var armorMatSize = armorMaterialMap.entrySet.length;
    armorMatSize *= 5;

    group.addArmor(ArmorHandler.createArmorSlot(
        "head",
        null,
        armorMatSize,
        0.0 // TODO drop chance should NOT be 100 %
    ));
}

function addChestplateArmorSlots(
    group as ArmorGroup,
    armorMaterialMap as int[ITICMaterial]
) as ArmorSlot [] {
    val definition = <conarm:chestplate>.definition;

    for mat, matWeight in armorMaterialMap {
        val armor = Toolforge.buildTool(definition, [
            mat as ITICMaterial,
            mat as ITICMaterial,
            mat as ITICMaterial
        ]);
        group.addArmor(ArmorHandler.createArmorSlot(
            "chest",
            armor,
            matWeight,
            1.0 // TODO drop chance should NOT be 100 %
        ));
    }

    // add chance to not spawn armor piece
    var armorMatSize = armorMaterialMap.entrySet.length;
    armorMatSize *= 4;

    group.addArmor(ArmorHandler.createArmorSlot(
        "chest",
        null,
        armorMatSize,
        0.0 // TODO drop chance should NOT be 100 %
    ));
}

function addLeggingsArmorSlots(
    group as ArmorGroup,
    armorMaterialMap as int[ITICMaterial]
) as ArmorSlot [] {
    val definition = <conarm:leggings>.definition;

    for mat, matWeight in armorMaterialMap {
        val armor = Toolforge.buildTool(definition, [
            mat as ITICMaterial,
            mat as ITICMaterial,
            mat as ITICMaterial
        ]);
        group.addArmor(ArmorHandler.createArmorSlot(
            "legs",
            armor,
            matWeight,
            1.0 // TODO drop chance should NOT be 100 %
        ));
    }

    // add chance to not spawn armor piece
    var armorMatSize = armorMaterialMap.entrySet.length;
    armorMatSize *= 4;

    group.addArmor(ArmorHandler.createArmorSlot(
        "legs",
        null,
        armorMatSize,
        0.0 // TODO drop chance should NOT be 100 %
    ));
}

function addBootsArmorSlots(
    group as ArmorGroup,
    armorMaterialMap as int[ITICMaterial]
) as ArmorSlot [] {
    val definition = <conarm:boots>.definition;

    for mat, matWeight in armorMaterialMap {
        val armor = Toolforge.buildTool(definition, [
            mat as ITICMaterial,
            mat as ITICMaterial,
            mat as ITICMaterial
        ]);
        group.addArmor(ArmorHandler.createArmorSlot(
            "feet",
            armor,
            matWeight,
            1.0 // TODO drop chance should NOT be 100 %
        ));
    }

    // add chance to not spawn armor piece
    var armorMatSize = armorMaterialMap.entrySet.length;
    armorMatSize *= 5;

    group.addArmor(ArmorHandler.createArmorSlot(
        "feet",
        null,
        armorMatSize,
        0.0 // TODO drop chance should NOT be 100 %
    ));
}

// ===== Main ======================================================================================================
var group = ArmorHandler.createArmorGroup("drip", 1.0);
addEntitiesToArmorGroup(group, entities);
addWeaponSlots(group, weaponMaterialMap);
addArmorSlots(group, armorMaterialMap);
