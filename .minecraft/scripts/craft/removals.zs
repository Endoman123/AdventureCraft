import mods.jei.JEI;

// 16 Stick to Log
recipes.removeShaped(<minecraft:stick> * 16, [[<ore:logWood>], [<ore:logWood>]]);
recipes.removeShaped(<minecraft:stick> * 16, [[<ore:logWood>], [<ore:logWood>]]);
recipes.removeShaped(<minecraft:stick>, [[<futuremc:bamboo>], [<futuremc:bamboo>]]);

// Remove vanilla ender chest
recipes.remove(<minecraft:ender_chest>);

// Remove gear recipes
recipes.removeByRegex("enderio:gear_stone.*");
recipes.remove(<thermalfoundation:material:26>);
recipes.remove(<thermalfoundation:material:27>);

// Remove notreepunching tools (other than flint tools)
recipes.remove(<notreepunching:mattock/iron>);
recipes.remove(<notreepunching:mattock/gold>);
recipes.remove(<notreepunching:mattock/diamond>);
recipes.remove(<notreepunching:knife/iron>);
recipes.remove(<notreepunching:knife/gold>);
recipes.remove(<notreepunching:knife/diamond>);
recipes.remove(<notreepunching:saw/iron>);
recipes.remove(<notreepunching:saw/gold>);
recipes.remove(<notreepunching:saw/diamond>);

// JEI removal
mods.jei.JEI.removeAndHide(<minecraft:ender_chest>);
