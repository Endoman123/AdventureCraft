val table = LootTables.getTable("minecraft:chests/end_city_treasure");
val additional = table.addPool("tweaker", 0, 2, 0, 4);

// Additions go here
additional.addItemEntry(<jsonlootbags:uncommon_bag>, 20);
additional.addItemEntry(<jsonlootbags:rare_bag>, 40);
additional.addItemEntry(<jsonlootbags:superrare_bag>, 10);
additional.addItemEntry(<jsonlootbags:elusive_bag>, 1);
