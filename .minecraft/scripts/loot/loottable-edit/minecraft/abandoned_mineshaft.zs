val table = LootTables.getTable("minecraft:chests/abandoned_mineshaft");
val additional = table.addPool("tweaker", 0, 3, 0, 4);

// Additions go here
additional.addItemEntry(<jsonlootbags:common_bag>, 10);
additional.addItemEntry(<jsonlootbags:uncommon_bag>, 5);
additional.addItemEntry(<jsonlootbags:rare_bag>, 3);
