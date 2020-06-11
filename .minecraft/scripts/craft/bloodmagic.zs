// parts
val ironSword = <tconstruct:sword_blade>.withTag({Material: "iron"});
val ironAxe = <tconstruct:axe_head>.withTag({Material: "iron"});
val ironPick = <tconstruct:pick_head>.withTag({Material: "iron"});
val ironShovel = <tconstruct:shovel_head>.withTag({Material: "iron"});
val armour = <conarm:chest_core>.withTag({Material: "iron"});
val boots = <conarm:boots_core>.withTag({Material: "iron"});
val helmet = <conarm:helmet_core>.withTag({Material: "iron"});
val leggings = <conarm:leggings_core>.withTag({Material: "iron"});

// Ingredients
val imbued = <bloodmagic:slate:2>;
val will = <bloodmagic:monster_soul>;
val binding = <bloodmagic:component:8>;

// sentient
val sentientSword = <bloodmagic:sentient_sword>.withTag({});
val sentientAxe = <bloodmagic:sentient_axe>.withTag({});
val sentientPick = <bloodmagic:sentient_pickaxe>.withTag({});
val sentientShovel = <bloodmagic:sentient_shovel>.withTag({});
val sentientArmour = <bloodmagic:sentient_armour_gem>;

// bound
val boundSword = <bloodmagic:bound_sword>.withTag({Unbreakable: 1 as byte,activated: 0 as byte});
val boundAxe = <bloodmagic:bound_axe>.withTag({Unbreakable: 1 as byte,activated: 0 as byte});
val boundPick = <bloodmagic:bound_pickaxe>.withTag({Unbreakable: 1 as byte,activated: 0 as byte});
val boundShovel = <bloodmagic:bound_shovel>.withTag({Unbreakable: 1 as byte,activated: 0 as byte});

// Living
val liveHelm = <bloodmagic:living_armour_helmet>;
val liveLeg = <bloodmagic:living_armour_leggings>;
val liveArm = <bloodmagic:living_armour_chest>.withTag({});
val liveBoot = <bloodmagic:living_armour_boots>;

// Add recipes
recipes.addShapeless(sentientSword, [ironSword, will]);
recipes.addShapeless(sentientAxe, [ironAxe, will]);
recipes.addShapeless(sentientShovel, [ironShovel, will]);
recipes.addShapeless(sentientPick, [ironPick, will]);
recipes.addShapeless(sentientArmour, [armour, will]);

recipes.addShapeless(boundSword, [sentientSword, imbued]);
recipes.addShapeless(boundAxe, [sentientAxe, imbued]);
recipes.addShapeless(boundShovel, [sentientShovel, imbued]);
recipes.addShapeless(boundPick, [sentientPick, imbued]);

recipes.addShapeless(liveHelm, [helmet, binding]);
recipes.addShapeless(liveLeg, [leggings, binding]);
recipes.addShapeless(liveArm, [armour, binding]);
recipes.addShapeless(liveBoot, [boots, binding]);
