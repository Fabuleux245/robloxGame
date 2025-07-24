-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:53
-- Luau version 6, Types version 3
-- Time taken: 0.015850 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_4 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_upvr_3 = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_3_upvr = require(Modules:WaitForChild("Utility"))
module_upvr.EggsHatched_ByPermissionType = {
	[module_upvr_4.PermissionType.EggsOpen3] = 3;
	[module_upvr_4.PermissionType.EggsOpen8] = 8;
}
module_upvr.PetSizeMod = {
	Small = 1;
	Medium = 2;
	Large = 3;
}
module_upvr.PetSizeModOrder = {}
for _, v in module_upvr.PetSizeMod do
	module_upvr.PetSizeModOrder[#module_upvr.PetSizeModOrder + 1] = v
end
table.sort(module_upvr.PetSizeModOrder)
module_upvr.Colors = {
	PetSizeMod_ByMod = {
		[module_upvr.PetSizeMod.Small] = Color3.fromRGB(255, 255, 255);
		[module_upvr.PetSizeMod.Medium] = Color3.fromRGB(255, 255, 0);
		[module_upvr.PetSizeMod.Large] = Color3.fromRGB(0, 255, 0);
	};
}
module_upvr.FrontEndNames = {
	PetSizeMod_ByMod = {
		[module_upvr.PetSizeMod.Small] = "SMALL";
		[module_upvr.PetSizeMod.Medium] = "MEDIUM";
		[module_upvr.PetSizeMod.Large] = "LARGE";
	};
}
module_upvr.Scale_BySizeMod = {
	[module_upvr.PetSizeMod.Small] = 1;
	[module_upvr.PetSizeMod.Medium] = 1.25;
	[module_upvr.PetSizeMod.Large] = 1.5;
}
local tbl_upvr_3 = {}
local tbl_2_upvr = {}
local tbl_upvr_2 = {
	LevelEgg = "%s%s%i";
	LevelPet = "%s%s%i";
	SizeModPet = "%s%s";
}
local tbl_upvr = {
	[module_upvr.PetSizeMod.Small] = '1';
	[module_upvr.PetSizeMod.Medium] = '2';
	[module_upvr.PetSizeMod.Large] = '3';
}
local tbl_5_upvr = {
	LevelEgg = string.format("%%s %%s %s", require(ReplicatedStorage:WaitForChild("Theme")).FrontEndNames.Items_ByItemType[module_upvr_4.ItemType.Egg].Singular.Proper);
	LevelPet = "%s %s";
	SizeModPet = "%s %s";
}
module_upvr.PetCombinationArrays_ByPetData = {}
local len_upvr = #module_upvr.PetSizeModOrder
local var52_upvr = module_upvr_3.PetsCombineCount * module_upvr_3.PetsCombineValueContribution
local function GenerateSizeModdedPets_upvr(arg1) -- Line 182, Named "GenerateSizeModdedPets"
	--[[ Upvalues[6]:
		[1]: len_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: tbl_upvr_2 (readonly)
		[6]: var52_upvr (readonly)
	]]
	local table_create_result1 = table.create(len_upvr)
	table_create_result1[1] = arg1
	for i_2 = 2, len_upvr do
		local clone = table.clone(arg1)
		table_create_result1[i_2] = clone
		tbl_2_upvr[#tbl_2_upvr + 1] = clone
	end
	for i_3, v_2 in module_upvr.PetSizeModOrder do
		local var61 = table_create_result1[i_3]
		local var62 = tbl_upvr[v_2]
		if var61 and var62 then
			var61.Id = string.format(tbl_upvr_2.SizeModPet, arg1.Id, var62)
			var61.SizeMod = v_2
			var61.EnergyMultiplier = (arg1.EnergyMultiplier or 0) * var52_upvr ^ (i_3 - 1)
			module_upvr.PetCombinationArrays_ByPetData[var61] = table_create_result1
		end
	end
	return table_create_result1
end
module_upvr.EggsSold_ByLevelData = {}
local tbl_3_upvr = {{
	Id = "Bas";
	Name = "Basic";
	ModelId = "Basic";
	PetSpecs = {{
		Id = "Cat";
		Name = "Cat";
		ModelId = "Cat";
	}, {
		Id = "Dog";
		Name = "Dog";
		ModelId = "Dog";
	}, {
		Id = "Shp";
		Name = "Sheep";
		ModelId = "Sheep";
	}, {
		Id = "Cor";
		Name = "Corgi";
		ModelId = "Corgi";
	}, {
		Id = "Axo";
		Name = "Axolotl";
		ModelId = "Axolotl";
	}};
}, {
	Id = "Crk";
	Name = "Cracked";
	ModelId = "Cracked";
	PetSpecs = {{
		Id = "Cow";
		Name = "Cow";
		ModelId = "Cow";
	}, {
		Id = "Chk";
		Name = "Chick";
		ModelId = "Chick";
	}, {
		Id = "Dck";
		Name = "Duck";
		ModelId = "Duck";
	}, {
		Id = "Snk";
		Name = "Snake";
		ModelId = "Snake";
	}, {
		Id = "Elt";
		Name = "Elephant";
		ModelId = "Elephant";
	}};
}, {
	Id = "Spt";
	Name = "Spotted";
	ModelId = "Spotted";
	PetSpecs = {{
		Id = "Dnk";
		Name = "Donkey";
		ModelId = "Donkey";
	}, {
		Id = "Ber";
		Name = "Bear";
		ModelId = "Bear";
	}, {
		Id = "Chn";
		Name = "Chicken";
		ModelId = "Chicken";
	}, {
		Id = "Sqr";
		Name = "Squirrel";
		ModelId = "Squirrel";
	}, {
		Id = "Bee";
		Name = "Bee";
		ModelId = "Bee";
	}};
}, {
	Id = "Wvy";
	Name = "Wavy";
	ModelId = "Wavy";
	PetSpecs = {{
		Id = "Trk";
		Name = "Turkey";
		ModelId = "Turkey";
	}, {
		Id = "Mky";
		Name = "Monkey";
		ModelId = "Monkey";
	}, {
		Id = "Pen";
		Name = "Penguin";
		ModelId = "Penguin";
	}, {
		Id = "Ldb";
		Name = "Ladybug";
		ModelId = "Ladybug";
	}, {
		Id = "Drg";
		Name = "Dragon";
		ModelId = "Dragon";
	}};
}, {
	Id = "Exo";
	Name = "Exotic";
	ModelId = "Exotic";
	PetSpecs = {{
		Id = "Bun";
		Name = "Bunny";
		ModelId = "Bunny";
	}, {
		Id = "Fox";
		Name = "Fox";
		ModelId = "Fox";
	}, {
		Id = "Der";
		Name = "Deer";
		ModelId = "Deer";
	}, {
		Id = "Pnd";
		Name = "Panda";
		ModelId = "Panda";
	}, {
		Id = "Heg";
		Name = "Hedgehog";
		ModelId = "Hedgehog";
	}};
}, {
	Id = "Ani";
	Name = "Anime";
	ModelId = "Anime";
	PetSpecs = {{
		Id = "Des";
		Name = "Destroyer";
		ModelId = "Destroyer";
	}, {
		Id = "Mnk";
		Name = "Monk";
		ModelId = "Monk";
	}, {
		Id = "Nja";
		Name = "Ninja";
		ModelId = "Ninja";
	}, {
		Id = "Pir";
		Name = "Pirate";
		ModelId = "Pirate";
	}, {
		Id = "Hro";
		Name = "Hero";
		ModelId = "Hero";
	}};
}, {
	Id = "Leg";
	Name = "Legendary";
	ModelId = "Legendary";
	PetSpecs = {{
		Id = "Uni";
		Name = "Unicorn";
		ModelId = "Unicorn";
	}, {
		Id = "Dom";
		Name = "Dominus";
		ModelId = "Dominus";
	}};
}}
local module_upvr_2 = require(Modules:WaitForChild("GameBalanceUtility"))
local function GeneratePetsFromLevelData_upvr(arg1, arg2, arg3) -- Line 340, Named "GeneratePetsFromLevelData"
	--[[ Upvalues[10]:
		[1]: module_upvr_2 (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: tbl_5_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: tbl_2_upvr (readonly)
		[7]: GenerateSizeModdedPets_upvr (readonly)
		[8]: module_3_upvr (readonly)
		[9]: module_upvr_4 (readonly)
		[10]: tbl_upvr_3 (readonly)
	]]
	local ItemTheme = arg1.ItemTheme
	local var124
	if var124 then
		var124 = ItemTheme.Adjective
	end
	local tbl = {}
	for i_4, v_3 in tbl_3_upvr do
		local var126 = module_upvr_2.GenerateEggValueSpecs(arg3)[i_4]
		local Name = v_3.Name
		if var124 then
			Name = string.format(tbl_5_upvr.LevelEgg, Name, var124)
		end
		local tbl_8 = {}
		for i_5, v_4 in v_3.PetSpecs do
			local var129 = var126.Values.List.Elements[i_5]
			local Name_2 = v_4.Name
			if var124 then
				Name_2 = string.format(tbl_5_upvr.LevelPet, var124, Name_2)
			end
			local tbl_7 = {
				Id = string.format(tbl_upvr_2.LevelPet, v_4.Id, arg1.Id, arg3);
				Name = Name_2;
			}
			tbl_7.CreatedAt = arg2
			tbl_7.EnergyMultiplier = var129.Value
			tbl_7.ItemTheme = ItemTheme
			tbl_7.Unrollable = true
			tbl_7.ModelId = v_4.ModelId
			tbl_7.SizeMod = module_upvr.PetSizeMod.Small
			tbl_8[#tbl_8 + 1] = {
				Pet = tbl_7;
				Weight = var129.Weight;
			}
			tbl_2_upvr[#tbl_2_upvr + 1] = tbl_7
			GenerateSizeModdedPets_upvr(tbl_7)
		end
		local tbl_6 = {
			Id = string.format(tbl_upvr_2.LevelEgg, v_3.Id, arg1.Id, arg3);
			Name = Name;
			Price = var126.EggPrice;
		}
		tbl_6.CreatedAt = arg2
		tbl_6.ItemTheme = ItemTheme
		tbl_6.Pets = module_3_upvr.WeightedListCreate(tbl_8)
		tbl_6.ModelId = v_3.ModelId
		local Completions = var126.Values.Completions
		if 0 < Completions then
			local tbl_4 = {}
			v_4 = module_upvr_4.UnlockRequirementType
			i_5 = v_4.LevelCompletions
			tbl_4.Type = i_5
			i_5 = {}
			v_4 = arg1.Id
			i_5[1] = v_4
			i_5[2] = Completions
			tbl_4.Args = i_5
			i_5 = {}
			v_4 = tbl_4
			i_5[1] = v_4
			tbl_6.UnlockRequirements = i_5
		end
		tbl[#tbl + 1] = tbl_6
		tbl_upvr_3[#tbl_upvr_3 + 1] = tbl_6
	end
	local var136 = module_upvr.EggsSold_ByLevelData[arg1]
	if var136 then
		i_4 = nil
		for _, v_5 in var136, nil, i_4 do
			v_5.Disabled = true
			v_5.Price = nil
		end
	end
	module_upvr.EggsSold_ByLevelData[arg1] = tbl
end
local function _(arg1, arg2, arg3) -- Line 460, Named "GeneratePetsFromLevelDataArray"
	--[[ Upvalues[1]:
		[1]: GeneratePetsFromLevelData_upvr (readonly)
	]]
	for i_7, v_6 in arg3 do
		GeneratePetsFromLevelData_upvr(v_6, arg1, i_7 - 1 + arg2)
	end
end
local module_2_upvr = require(Modules:WaitForChild("Worlds"))
for i_10, v_7 in (function(arg1, ...) -- Line 474, Named "FetchLevelRanges"
	--[[ Upvalues[2]:
		[1]: module_upvr_4 (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local module = {}
	for i_8 = 1, select('#', ...), 2 do
		local selected_arg, NONE = select(i_8, ...)
		local var147
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var147 = type(NONE)
			return var147 ~= "number"
		end
		if var147 ~= "number" or INLINED() then
			var147 = error
			var147(module_upvr_4.FormatOutput("Invalid level index range '%*' to '%*'", "Pets", nil, selected_arg, NONE), 2)
		end
		if selected_arg < NONE then
			var147 = 1
		else
			var147 = -1
		end
		for i_9 = selected_arg, NONE, var147 do
			local var148 = arg1..i_9
			local var149 = module_2_upvr.Level_ById[var148]
			if not var149 then
				error(module_upvr_4.FormatOutput("Invalid LevelId '%s' for pet generation", "Pets", nil, var148), 2)
			end
			module[#module + 1] = var149
		end
	end
	return module
end)("Re", 1, 29, 31, 45, 30, 30), nil do
	GeneratePetsFromLevelData_upvr(v_7, 1719948766, i_10 - 1 + 1)
	local _
end
function tbl_3_upvr(arg1, arg2) -- Line 533, Named "SortPetData"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var151 = arg1.EnergyMultiplier or (-math.huge)
	local EnergyMultiplier = arg2.EnergyMultiplier
	local var153 = EnergyMultiplier or (-math.huge)
	if var151 ~= var153 then
		if var153 >= var151 then
			EnergyMultiplier = false
		else
			EnergyMultiplier = true
		end
		return EnergyMultiplier
	end
	local var154 = table.find(module_upvr.PetSizeModOrder, arg1.SizeMod) or (-math.huge)
	local var155 = table.find(module_upvr.PetSizeModOrder, arg2.SizeMod) or (-math.huge)
	if var154 ~= var155 then
		if var155 >= var154 then
		else
		end
		return true
	end
	if string.lower(arg1.Name) >= string.lower(arg2.Name) then
	else
	end
	return true
end
module_upvr.SortPetData = tbl_3_upvr
tbl_3_upvr = table.sort
tbl_3_upvr(tbl_upvr_3, module_upvr_4.SortItemData)
tbl_3_upvr = table.sort
tbl_3_upvr(tbl_2_upvr, module_upvr.SortPetData)
module_upvr.EggDataArray = tbl_upvr_3
tbl_3_upvr = {}
module_upvr.EggData_ById = tbl_3_upvr
module_upvr.PetDataArray = tbl_2_upvr
tbl_3_upvr = {}
module_upvr.PetData_ById = tbl_3_upvr
tbl_3_upvr = tbl_upvr_3
for _, v_8 in tbl_3_upvr do
	if module_upvr.EggData_ById[v_8.Id] then
		i_10 = "Pets"
		v_7 = nil
		error(module_upvr_4.FormatOutput("Duplicate EggId '%s'", i_10, v_7, v_8.Id))
	end
	if #v_8.Pets.Elements == 0 then
		i_10 = "Pets"
		v_7 = nil
		warn(module_upvr_4.FormatOutput("EggId '%s' has no pets", i_10, v_7, v_8.Id))
	end
	if v_8.MustOwn == nil then
		v_8.MustOwn = true
	end
	module_3_upvr.WeightedListSort(v_8.Pets, true)
	module_upvr.EggData_ById[v_8.Id] = v_8
end
tbl_3_upvr = tbl_2_upvr
for _, v_9 in tbl_3_upvr do
	if module_upvr.PetData_ById[v_9.Id] then
		i_10 = "Pets"
		v_7 = nil
		error(module_upvr_4.FormatOutput("Duplicate PetId '%s'", i_10, v_7, v_9.Id))
	end
	if v_9.MustOwn == nil then
		v_9.MustOwn = true
	end
	module_upvr.PetData_ById[v_9.Id] = v_9
end
local module_upvr_5 = require(Modules:WaitForChild("Products"))
function tbl_3_upvr(arg1, arg2) -- Line 602, Named "EggGetUnlockProduct"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_5 (readonly)
	]]
	local var160
	local var161 = module_upvr.EggsSold_ByLevelData[arg2]
	if var161 then
		local table_find_result1_3 = table.find(var161, arg1)
		if table_find_result1_3 then
			var160 = module_upvr_5.ProductUnlockEgg_ByUnlockIndex[table_find_result1_3]
		end
	end
	return var160
end
module_upvr.EggGetUnlockProduct = tbl_3_upvr
function tbl_3_upvr(arg1, arg2) -- Line 627, Named "PetCanCombine"
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_4 (readonly)
		[3]: module_upvr_3 (readonly)
	]]
	local var169 = false
	local var170
	local var171 = module_upvr.PetCombinationArrays_ByPetData[arg1]
	if var171 then
		local table_find_result1_2 = table.find(var171, arg1)
		if table_find_result1_2 then
			local var173
			if table_find_result1_2 ~= var173 then
				var173 = table_find_result1_2 + 1
				var170 = var171[var173]
				var173 = 0
				local any_PlayerStateGetSaveData_result1 = module_upvr_4.PlayerStateGetSaveData(arg2)
				if any_PlayerStateGetSaveData_result1 then
					var173 += module_upvr_4.SaveDataGetPetStockCount(any_PlayerStateGetSaveData_result1, arg1.Id)
				end
				if var173 < module_upvr_3.PetsCombineCount then
				end
				if module_upvr_3.PetsCombineCount > var173 + module_upvr_4.PetStateGetEquippedCount(arg2.PetState, arg1.Id) then
					var169 = false
				else
					var169 = true
				end
			end
		end
	end
	return var169, var170
end
module_upvr.PetCanCombine = tbl_3_upvr
tbl_3_upvr = module_3_upvr.TableFreezeAll
tbl_3_upvr(module_upvr)
return module_upvr