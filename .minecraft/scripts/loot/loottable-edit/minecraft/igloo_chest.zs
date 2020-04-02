val table = LootTables.getTable("minecraft:chests/igloo_chest");
val additional = table.addPool("tweaker", 0, 2, 0, 4);

// Additions go here
additional.addItemEntry(<jsonlootbags:uncommon_bag>, 50);
additional.addItemEntry(<jsonlootbags:rare_bag>, 5);
additional.addItemEntry(<jsonlootbags:superrare_bag>, 1);
