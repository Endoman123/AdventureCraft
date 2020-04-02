val table = LootTables.getTable("minecraft:chests/nether_bridge");
val additional = table.addPool("tweaker", 0, 2, 0, 4);

// Additions go here
additional.addItemEntry(<jsonlootbags:common_bag>, 20);
additional.addItemEntry(<jsonlootbags:uncommon_bag>, 10);
additional.addItemEntry(<jsonlootbags:rare_bag>, 5);
additional.addItemEntry(<jsonlootbags:superrare_bag>, 1);
