import crafttweaker.item.IItemStack;

// Add ender chest oredict
val oChestEnd = <ore:chestEnd>;
val oChestAny = <ore:chest>;

oChestEnd.add(<minecraft:ender_chest>, <enderstorage:ender_storage>);
oChestAny.addAll(oChestEnd);

// Do recipe patchwork
recipes.replaceAllOccurences(<minecraft:ender_chest>, <ore:chestEnd>);

// Change info for vanilla armor, weapons, tools
val items = [
    <minecraft:bow>,
    <minecraft:wooden_pickaxe>,
    <minecraft:wooden_shovel>,
    <minecraft:wooden_axe>,
    <minecraft:wooden_hoe>,
    <minecraft:wooden_sword>,
    <minecraft:stone_pickaxe>,
    <minecraft:stone_shovel>,
    <minecraft:stone_axe>,
    <minecraft:stone_hoe>,
    <minecraft:stone_sword>,
    <minecraft:iron_pickaxe>,
    <minecraft:iron_shovel>,
    <minecraft:iron_axe>,
    <minecraft:iron_hoe>,
    <minecraft:iron_sword>,
    <minecraft:golden_pickaxe>,
    <minecraft:golden_shovel>,
    <minecraft:golden_axe>,
    <minecraft:golden_hoe>,
    <minecraft:golden_sword>,
    <minecraft:diamond_pickaxe>,
    <minecraft:diamond_shovel>,
    <minecraft:diamond_axe>,
    <minecraft:diamond_hoe>,
    <minecraft:diamond_sword>,
    <minecraft:leather_helmet>,
    <minecraft:leather_chestplate>,
    <minecraft:leather_leggings>,
    <minecraft:leather_boots>,
    <minecraft:chainmail_helmet>,
    <minecraft:chainmail_chestplate>,
    <minecraft:chainmail_leggings>,
    <minecraft:chainmail_boots>,
    <minecraft:iron_helmet>,
    <minecraft:iron_chestplate>,
    <minecraft:iron_leggings>,
    <minecraft:iron_boots>,
    <minecraft:golden_helmet>,
    <minecraft:golden_chestplate>,
    <minecraft:golden_leggings>,
    <minecraft:golden_boots>,
    <minecraft:diamond_helmet>,
    <minecraft:diamond_chestplate>,
    <minecraft:diamond_leggings>,
    <minecraft:diamond_boots>,
] as IItemStack[];

for item in items {
    game.setLocalization("item.minecraft." + item.definition.name, item.displayName + " Essence");
    item.displayName += " Essence";
    item.addTooltip(format.red(format.italic("This is only a crafting ingredient!\nIt won't last you very long in use.")));
} 
