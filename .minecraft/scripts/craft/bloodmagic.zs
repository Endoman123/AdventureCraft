// parts
val ironSword = <tconstruct:sword_blade>.withTag({Material: "iron"});
val ironAxe = <tconstruct:axe_head>.withTag({Material: "iron"});
val ironPick = <tconstruct:pick_head>.withTag({Material: "iron"});
val ironShovel = <tconstruct:shovel_head>.withTag({Material: "iron"});
val bloodDiamond = <bloodarsenal:blood_diamond>;
val will = <bloodmagic:monster_soul>;

// sentient
val sentientSword = <bloodmagic:sentient_sword>.withTag({});
val sentientAxe = <bloodmagic:sentient_axe>.withTag({});
val sentientPick = <bloodmagic:sentient_pickaxe>.withTag({});
val sentientShovel = <bloodmagic:sentient_shovel>.withTag({});

// bound
val boundSword = <bloodmagic:bound_sword>.withTag({Unbreakable: 1 as byte,activated: 0 as byte});
val boundAxe = <bloodmagic:bound_axe>.withTag({Unbreakable: 1 as byte,activated: 0 as byte});
val boundPick = <bloodmagic:bound_pickaxe>.withTag({Unbreakable: 1 as byte,activated: 0 as byte});
val boundShovel = <bloodmagic:bound_shovel>.withTag({Unbreakable: 1 as byte,activated: 0 as byte});

// Add recipes
recipes.addShapeless(sentientSword, [ironSword, will]);
recipes.addShapeless(sentientAxe, [ironAxe, will]);
recipes.addShapeless(sentientShovel, [ironShovel, will]);
recipes.addShapeless(sentientPick, [ironPick, will]);

recipes.addShapeless(boundSword, [sentientSword, bloodDiamond]);
recipes.addShapeless(boundAxe, [sentientAxe, bloodDiamond]);
recipes.addShapeless(boundShovel, [sentientShovel, bloodDiamond]);
recipes.addShapeless(boundPick, [sentientPick, bloodDiamond]);
