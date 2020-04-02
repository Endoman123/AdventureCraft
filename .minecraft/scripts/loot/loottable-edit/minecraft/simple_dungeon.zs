val table = LootTables.getTable("minecraft:chests/woodland_mansion");
val additional = table.addPool("tweaker", 0, 5, 0, 4);

// Additions go here
additional.addItemEntry(<jsonlootbags:common_bag>, 10);
additional.addItemEntry(<jsonlootbags:uncommon_bag>, 10);
