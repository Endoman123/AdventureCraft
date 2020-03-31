import mods.tconstruct.Alloy;

// Harder alloy recipe for Aluminum Brass
mods.tconstruct.Alloy.removeRecipe(<liquid:aluminumbrass>);
mods.tconstruct.Alloy.removeRecipe(<liquid:alubrass>);

mods.tconstruct.Alloy.addRecipe(<liquid:alubrass> * 9, [<liquid:aluminum>, <liquid:copper> * 6, <liquid:zinc> * 2]);
mods.tconstruct.Alloy.addRecipe(<liquid:alubrass> * 3, [<liquid:aluminum>, <liquid:brass> * 2]);

// Consistent Brass recipe
mods.tconstruct.Alloy.removeRecipe(<liquid:brass>);
mods.tconstruct.Alloy.addRecipe(<liquid:brass> * 4, [<liquid:copper> * 3, <liquid:zinc>]);