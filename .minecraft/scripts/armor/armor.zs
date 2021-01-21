import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;
import mods.zentoolforge.Toolforge;
import modtweaker.tconstruct.ITICMaterial;

// Script that gives minecraft mobs some drip

// Procedurally generates all combinations of parts to assign to mobs.

// ===== Config ====================================================================================================
static armor_chance as double = 1.0;

// ===== Maps ======================================================================================================

// --- Weapon materials
// Key is the material, Value is the weight
static headMap as int[ITICMaterial] = {
     <ticmat:alumite>                        : 1
};

static handleMap as int[ITICMaterial] = {
     <ticmat:alumite>                        : 1
};

static extraMap as int[ITICMaterial] = {
     <ticmat:alumite>                        : 1
};

// --- Armor materials
static armorCoreMap as int[ITICMaterial] = {
     <ticmat:iron>                           : 1
};

static armorTrimMap as int[ITICMaterial] = {
     <ticmat:iron>                           : 1
};

static armorPlateMap as int[ITICMaterial] = {
     <ticmat:iron>                           : 1
};

// static materialMap = {
//     <ticmat:alumite>                        : 0,
//     <ticmat:amethyst>                       : 0,
//     <ticmat:ardite>                         : 0,
//     <ticmat:blood_infused_iron>             : 0,
//     <ticmat:blood_infused_wood>             : 0,
//     <ticmat:blueslime>                      : 0,
//     <ticmat:bone>                           : 0,
//     <ticmat:boron>                          : 0,
//     <ticmat:boron_nitride>                  : 0,
//     <ticmat:bronze>                         : 0,
//     <ticmat:cactus>                         : 0,
//     <ticmat:certusquartz_plustic>           : 0,
//     <ticmat:chocolate>                      : 0,
//     <ticmat:cobalt>                         : 0,
//     <ticmat:conductive_iron>                : 0,
//     <ticmat:construction_alloy>             : 0,
//     <ticmat:copper>                         : 0,
//     <ticmat:crude_steel>                    : 0,
//     <ticmat:crystalline_pink_slime>         : 0,
//     <ticmat:dark_steel>                     : 0,
//     <ticmat:desert_myrmex>                  : 0,
//     <ticmat:dragonbone>                     : 0,
//     <ticmat:dragonsteel_fire>               : 0,
//     <ticmat:dragonsteel_ice>                : 0,
//     <ticmat:electrical_steel>               : 0,
//     <ticmat:electrum>                       : 0,
//     <ticmat:elementium>                     : 0,
//     <ticmat:emerald_plustic>                : 0,
//     <ticmat:end_steel>                      : 0,
//     <ticmat:enderium_plustic>               : 0,
//     <ticmat:endstone>                       : 0,
//     <ticmat:energetic_alloy>                : 0,
//     <ticmat:extrabotany:ingotorichalcos>    : 0,
//     <ticmat:extrabotany:ingotshadowium>     : 0,
//     <ticmat:firewood>                       : 0,
//     <ticmat:flint>                          : 0,
//     <ticmat:fluixcrystal_plustic>           : 0,
//     <ticmat:hard_carbon>                    : 0,
//     <ticmat:infinity_avaritia_plustic>      : 0,
//     <ticmat:invar>                          : 0,
//     <ticmat:iridium>                        : 0,
//     <ticmat:iron>                           : 0,
//     <ticmat:jungle_myrmex>                  : 0,
//     <ticmat:knightslime>                    : 0,
//     <ticmat:lead>                           : 0,
//     <ticmat:livingwood_plustic>             : 0,
//     <ticmat:lumium_plustic>                 : 0,
//     <ticmat:magmaslime>                     : 0,
//     <ticmat:magnesium>                      : 0,
//     <ticmat:manasteel>                      : 0,
//     <ticmat:manyullyn>                      : 0,
//     <ticmat:melodic_alloy>                  : 0,
//     <ticmat:netherrack>                     : 0,
//     <ticmat:nickel>                         : 0,
//     <ticmat:obsidian>                       : 0,
//     <ticmat:osgloglas>                      : 0,
//     <ticmat:osmiridium>                     : 0,
//     <ticmat:osmium>                         : 0,
//     <ticmat:paper>                          : 0,
//     <ticmat:pigiron>                        : 0,
//     <ticmat:platinum_plustic>               : 0,
//     <ticmat:prismarine>                     : 0,
//     <ticmat:psigem>                         : 0,
//     <ticmat:psimetal>                       : 0,
//     <ticmat:pulsating_iron>                 : 0,
//     <ticmat:redstone_alloy>                 : 0,
//     <ticmat:refinedglowstone>               : 0,
//     <ticmat:refinedobsidian>                : 0,
//     <ticmat:signalum_plustic>               : 0,
//     <ticmat:silver>                         : 0,
//     <ticmat:slime>                          : 0,
//     <ticmat:soularium>                      : 0,
//     <ticmat:sponge>                         : 0,
//     <ticmat:starmetal>                      : 0,
//     <ticmat:steel>                          : 0,
//     <ticmat:stone>                          : 0,
//     <ticmat:terrasteel>                     : 0,
//     <ticmat:thorium>                        : 0,
//     <ticmat:titanium>                       : 0,
//     <ticmat:tough>                          : 0,
//     <ticmat:uranium>                        : 0,
//     <ticmat:vibrant_alloy>                  : 0,
//     <ticmat:vivid_alloy>                    : 0,
//     <ticmat:weezer>                         : 0,
//     <ticmat:wood>                           : 0,
//     <ticmat:xu_demonic_metal>               : 0,
//     <ticmat:xu_enchanted_metal>             : 0,
//     <ticmat:xu_evil_metal>                  : 0,
//     <ticmat:xu_magical_wood>                : 0
// } as int[IItemStack];

// Weapons mobs generate with
static weaponsDefinitions as int[IItemDefinition] = {
    <tconstruct:broadsword>.definition      : 0
};

// Tool part strings
static partMap as string[int] = {
    "handle"    : 0,
    "head"      : 0,
    "extra"     : 0,
    "core"      : 0,
    "plates"    : 0,
    "trim"      : 0
};

// Entities allowed
// Key is entity string, Value is game stage allowed
static entities as string[string] = {
    "minecraft:zombie"  : "standard"
};

// ===== Functions ==================================================================================================

// Adds all entities in `entities` to the ArmorGroup
function addEntitiesToArmorGroup(group as ArmorGroup) {
    print("in addEntitiesToArmorGroup");
    for entity in entities {
        var armorEntity = ArmorHandler.createArmorEntity(entity);
        group.addEntity(armorEntity);
    }
}

// Adds combinations of weapons created from `headMap`, `handleMap`, and
// `extraMap` to the ArmorGroup
function addWeaponArmorSlots(group as ArmorGroup) {
    print("in addWeaponArmorSlots");
    addBroadswordArmorSlots(group);
}

// ===== Weapon Constructors ========================================================================================

function addBroadswordArmorSlots(group as ArmorGroup) {
    val definition = <tconstruct:broadsword>.definition;
    print("in addBroadswordArmorSlots");

    for head, headWeight in headMap {
        for handle, handleWeight in handleMap {
            for extra, extraWeight in extraMap {
                print("making broadsword");
                val weapon = Toolforge.buildTool(definition, [
                    head,
                    handle,
                    extra
                ]);
                group.addArmor(ArmorHandler.createArmorSlot(
                    "mainhand",
                    weapon,
                    100, // TODO replace
                    1.0 // TODO replace
                ));
            }
        }
    }
}

// Gets all combinations of helmet armor slots to be added to a group
function helmetArmorSlots() as ArmorSlot [] {

}

// Gets all combinations of chestplate armor slots to be added to a group
function chestplateArmorSlots() as ArmorSlot [] {

}

// Gets all combinations of leggings armor slots to be added to a group
function leggingsArmorSlots() as ArmorSlot [] {

}

// Gets all combinations of boots armor slots to be added to a group
function bootsArmorSlots() as ArmorSlot [] {

}

// ===== Main ======================================================================================================
// var group = ArmorHandler.createArmorGroup("drip", 1.0);
// print("made the group");
// addEntitiesToArmorGroup(group);
// print("added entities");
// addWeaponArmorSlots(group);
// print("done");
