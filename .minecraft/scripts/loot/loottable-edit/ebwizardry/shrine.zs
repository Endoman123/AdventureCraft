val table = LootTables.getTable("ebwizardry:chests/shrine");
val additional = table.addPool("tweaker", 0, 3, 0, 4);

// Additions go here
additional.addItemEntry(<jsonlootbags:common_bag>, 60);
additional.addItemEntry(<jsonlootbags:uncommon_bag>, 30);
additional.addItemEntry(<jsonlootbags:rare_bag>, 15);
additional.addItemEntry(<jsonlootbags:superrare_bag>, 1);
