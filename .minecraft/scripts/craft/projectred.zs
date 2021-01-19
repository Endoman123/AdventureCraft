// Replace silicon item in projectred recipes with oreDict entry
recipes.replaceAllOccurences(<projectred-core:resource_item:301>, <ore:itemSilicon>);

// Replace circuit plate recipe
furnace.remove(<projectred-core:resource_item:0>);

mods.futuremc.Stonecutter.addOutput(<futuremc:smooth_stone>, <projectred-core:resource_item:0> * 8);
mods.futuremc.Stonecutter.addOutput(<minecraft:stone_slab>, <projectred-core:resource_item:0> * 4);

// Replace vanilla gates with PR gates
mods.jei.JEI.hide(<minecraft:repeater>);
mods.jei.JEI.hide(<minecraft:comparator>);

recipes.remove(<minecraft:repeater>);
recipes.remove(<minecraft:comparator>);

recipes.replaceAllOccurences(<minecraft:repeater>, <projectred-integration:gate:10>);
recipes.replaceAllOccurences(<minecraft:comparator>, <projectred-integration:gate:26>);

// Replace vanilla daylight sensor
mods.jei.JEI.hide(<minecraft:daylight_detector>);

recipes.remove(<minecraft:daylight_detector>);
furnace.setFuel(<minecraft:daylight_detector>, 0);

recipes.replaceAllOccurences(<minecraft:daylight_detector>, <projectred-integration:gate:15>);
