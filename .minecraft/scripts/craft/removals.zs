import mods.jei.JEI;

// 16 Stick to Log
recipes.removeShaped(<minecraft:stick> * 16, [[<ore:logWood>], [<ore:logWood>]]);
recipes.removeShaped(<minecraft:stick> * 16, [[<ore:logWood>], [<ore:logWood>]]);
recipes.removeShaped(<minecraft:stick>, [[<minecraftfuture:bamboo>], [<minecraftfuture:bamboo>]]);

// Remove vanilla ender chest
recipes.remove(<minecraft:ender_chest>);
mods.jei.JEI.removeAndHide(<minecraft:ender_chest>);
