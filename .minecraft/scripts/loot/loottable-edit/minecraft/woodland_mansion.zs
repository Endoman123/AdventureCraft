val table = LootTables.getTable("minecraft:chests/woodland_mansion");
val additional = table.addPool("tweaker", 1, 2, 0, 4);

// Additions go here
additional.addItemEntry(<jsonlootbags:common_bag>, 10);
additional.addItemEntry(<jsonlootbags:uncommon_bag>, 10);
additional.addItemEntry(<jsonlootbags:rare_bag>, 10);
additional.addItemEntry(<jsonlootbags:superrare_bag>, 1);
additional.addItemEntry(<jsonlootbags:elusive_bag>, 1);
