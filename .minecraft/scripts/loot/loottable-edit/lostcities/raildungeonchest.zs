val table = LootTables.getTable("lostcities:chests/raildungeonchest");
val additional = table.addPool("tweaker", 0, 4, 0, 4);

// Additions go here
additional.addItemEntry(<jsonlootbags:common_bag>, 20);
additional.addItemEntry(<jsonlootbags:uncommon_bag>, 40);
additional.addItemEntry(<jsonlootbags:rare_bag>, 7);
additional.addItemEntry(<jsonlootbags:superrare_bag>, 2);
additional.addItemEntry(<jsonlootbags:elusive_bag>, 1);
