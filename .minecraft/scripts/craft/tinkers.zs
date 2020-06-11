import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;

// Harder alloy recipe for Aluminum Brass
Alloy.removeRecipe(<liquid:aluminumbrass>);
Alloy.removeRecipe(<liquid:alubrass>);

Alloy.addRecipe(<liquid:alubrass> * 9, [<liquid:aluminum>, <liquid:copper> * 6, <liquid:zinc> * 2]);
Alloy.addRecipe(<liquid:alubrass> * 3, [<liquid:aluminum>, <liquid:brass> * 2]);

// Consistent Brass recipe
Alloy.removeRecipe(<liquid:brass>);
Alloy.addRecipe(<liquid:brass> * 4, [<liquid:copper> * 3, <liquid:zinc>]);

// Remove brass cast recipes
Casting.removeTableRecipe(<tconstruct:cast>, <liquid:brass>);
Casting.removeTableRecipe(<tconstruct:cast_custom:0>, <liquid:brass>);
Casting.removeTableRecipe(<tconstruct:cast_custom:1>, <liquid:brass>);
Casting.removeTableRecipe(<tconstruct:cast_custom:2>, <liquid:brass>);
Casting.removeTableRecipe(<tconstruct:cast_custom:4>, <liquid:brass>);

// Remove plate cast recipe
Casting.removeTableRecipe(<tconstruct:cast_custom:3>);

// Remove xu2 redstone gear recipe
Casting.removeTableRecipe(<extrautils2:ingredients:1>);