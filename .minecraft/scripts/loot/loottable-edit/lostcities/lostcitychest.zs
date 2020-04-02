val table = LootTables.getTable("lostcities:chests/lostcitychest");
val additional = table.addPool("tweaker", 0, 3, 0, 4);

// Additions go here
additional.addItemEntry(<jsonlootbags:common_bag>, 50);
additional.addItemEntry(<jsonlootbags:uncommon_bag>, 25);
additional.addItemEntry(<jsonlootbags:rare_bag>, 10);
additional.addItemEntry(<jsonlootbags:superrare_bag>, 5);
additional.addItemEntry(<jsonlootbags:elusive_bag>, 1);
