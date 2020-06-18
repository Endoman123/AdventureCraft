// Add ender chest oredict
val oChestEnd = <ore:chestEnd>;
val oChestAny = <ore:chest>;

oChestEnd.add(<minecraft:ender_chest>, <enderstorage:ender_storage>);
oChestAny.addAll(oChestEnd);

// Do recipe patchwork
recipes.replaceAllOccurences(<minecraft:ender_chest>, <ore:chestEnd>);