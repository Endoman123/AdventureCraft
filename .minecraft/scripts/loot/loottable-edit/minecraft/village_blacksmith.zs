val table = LootTables.getTable("minecraft:chests/village_blacksmith");
val additional = table.addPool("tweaker", 0, 1, 0, 4);

// Additions go here
additional.addItemEntry(<jsonlootbags:common_bag>, 2);
additional.addItemEntry(<jsonlootbags:uncommon_bag>, 1);
