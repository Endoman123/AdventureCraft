import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;
import mods.zentoolforge.Toolforge;
import modtweaker.tconstruct.ITICMaterial;

// Script that gives minecraft mobs some drip

// Materials
val materialMap = {
    <ticmat:alumite>                        : 0,
    <ticmat:amethyst>                       : 0,
    <ticmat:ardite>                         : 0,
    <ticmat:blood_infused_iron>             : 0,
    <ticmat:blood_infused_wood>             : 0,
    <ticmat:blueslime>                      : 0,
    <ticmat:bone>                           : 0,
    <ticmat:boron>                          : 0,
    <ticmat:boron_nitride>                  : 0,
    <ticmat:bronze>                         : 0,
    <ticmat:cactus>                         : 0,
    <ticmat:certusquartz_plustic>           : 0,
    <ticmat:chocolate>                      : 0,
    <ticmat:cobalt>                         : 0,
    <ticmat:conductive_iron>                : 0,
    <ticmat:construction_alloy>             : 0,
    <ticmat:copper>                         : 0,
    <ticmat:crude_steel>                    : 0,
    <ticmat:crystalline_pink_slime>         : 0,
    <ticmat:dark_steel>                     : 0,
    <ticmat:desert_myrmex>                  : 0,
    <ticmat:dragonbone>                     : 0,
    <ticmat:dragonsteel_fire>               : 0,
    <ticmat:dragonsteel_ice>                : 0,
    <ticmat:electrical_steel>               : 0,
    <ticmat:electrum>                       : 0,
    <ticmat:elementium>                     : 0,
    <ticmat:emerald_plustic>                : 0,
    <ticmat:end_steel>                      : 0,
    <ticmat:enderium_plustic>               : 0,
    <ticmat:endstone>                       : 0,
    <ticmat:energetic_alloy>                : 0,
    <ticmat:extrabotany:ingotorichalcos>    : 0,
    <ticmat:extrabotany:ingotshadowium>     : 0,
    <ticmat:firewood>                       : 0,
    <ticmat:flint>                          : 0,
    <ticmat:fluixcrystal_plustic>           : 0,
    <ticmat:hard_carbon>                    : 0,
    <ticmat:infinity_avaritia_plustic>      : 0,
    <ticmat:invar>                          : 0,
    <ticmat:iridium>                        : 0,
    <ticmat:iron>                           : 0,
    <ticmat:jungle_myrmex>                  : 0,
    <ticmat:knightslime>                    : 0,
    <ticmat:lead>                           : 0,
    <ticmat:livingwood_plustic>             : 0,
    <ticmat:lumium_plustic>                 : 0,
    <ticmat:magmaslime>                     : 0,
    <ticmat:magnesium>                      : 0,
    <ticmat:manasteel>                      : 0,
    <ticmat:manyullyn>                      : 0,
    <ticmat:melodic_alloy>                  : 0,
    <ticmat:netherrack>                     : 0,
    <ticmat:nickel>                         : 0,
    <ticmat:obsidian>                       : 0,
    <ticmat:osgloglas>                      : 0,
    <ticmat:osmiridium>                     : 0,
    <ticmat:osmium>                         : 0,
    <ticmat:paper>                          : 0,
    <ticmat:pigiron>                        : 0,
    <ticmat:platinum_plustic>               : 0,
    <ticmat:prismarine>                     : 0,
    <ticmat:psigem>                         : 0,
    <ticmat:psimetal>                       : 0,
    <ticmat:pulsating_iron>                 : 0,
    <ticmat:redstone_alloy>                 : 0,
    <ticmat:refinedglowstone>               : 0,
    <ticmat:refinedobsidian>                : 0,
    <ticmat:signalum_plustic>               : 0,
    <ticmat:silver>                         : 0,
    <ticmat:slime>                          : 0,
    <ticmat:soularium>                      : 0,
    <ticmat:sponge>                         : 0,
    <ticmat:starmetal>                      : 0,
    <ticmat:steel>                          : 0,
    <ticmat:stone>                          : 0,
    <ticmat:terrasteel>                     : 0,
    <ticmat:thorium>                        : 0,
    <ticmat:titanium>                       : 0,
    <ticmat:tough>                          : 0,
    <ticmat:uranium>                        : 0,
    <ticmat:vibrant_alloy>                  : 0,
    <ticmat:vivid_alloy>                    : 0,
    <ticmat:weezer>                         : 0,
    <ticmat:wood>                           : 0,
    <ticmat:xu_demonic_metal>               : 0,
    <ticmat:xu_enchanted_metal>             : 0,
    <ticmat:xu_evil_metal>                  : 0,
    <ticmat:xu_magical_wood>                : 0
} as IItemStack[int];

// - list of tool types to generate with
// Create all possibilities of tools in general categories
// - assign to a list of entities
// - need customizable weights and dorp chance based on some bool/game stage/somethin

// Idea:
// Have a MAP of materials to weightings
// - weighting is how common to use said material
// Have a MAP of tool parts to weightings
// - weighting is how tool parts should influence the commonness of part
//
// Have constructors for each tool type, which handles creating all combinations and assignigng it a value
// General: high weighting: common, low weighting rare
