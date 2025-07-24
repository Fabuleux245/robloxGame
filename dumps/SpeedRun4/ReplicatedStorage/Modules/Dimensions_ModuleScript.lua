-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:39
-- Luau version 6, Types version 3
-- Time taken: 0.010244 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module_2_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_upvr_3 = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_2 = require(Modules:WaitForChild("Worlds"))
local tbl_7 = {
	Mirror_Flat = "mf";
	Mirror_Slanted = "ms";
	Mirror_Thin = "mt";
	Mirror_ZoomedIn = "mz";
}
module_2_upvr.AlternativeModes = require(Modules:WaitForChild("Utility")).PropsMerge({}, tbl_7)
local tbl_6_upvr = {}
local tbl_4 = {
	Id = "Ridiculous";
	Name = "Ridiculous";
	Price = 0;
	CreatedAt = (-math.huge);
	Unownable = true;
	EnergyMultiplier = 0.4;
	GemsPerLevel = 8;
	LegacyBadgeId = 2124451980;
}
local var46 = 180
tbl_4.StarRequirment = var46
tbl_6_upvr[1] = {
	Id = "Zombie";
	Name = "Zombie";
	Price = 0;
	CreatedAt = (-math.huge);
	Unownable = true;
	EnergyMultiplier = 0.1;
	GemsPerLevel = 2;
	LegacyBadgeId = 2124451974;
	StarRequirment = 30;
}
tbl_6_upvr[2] = {
	Id = "Mirror";
	Name = "Mirror";
	Price = 0;
	CreatedAt = (-math.huge);
	Unownable = true;
	AlternativeModes = tbl_7;
	CarrierOverrides = true;
	EnergyMultiplier = 0.1;
	GemsPerLevel = 2;
	LegacyBadgeId = 2124451976;
	StarRequirment = 60;
}
tbl_6_upvr[3] = {
	Id = "Ragequit";
	Name = "Ragequit";
	Price = 0;
	CreatedAt = (-math.huge);
	Unownable = true;
	EnergyMultiplier = 0.15;
	GemsPerLevel = 3;
	LegacyBadgeId = 2124451978;
	StarRequirment = 90;
}
tbl_6_upvr[4] = {
	Id = "Impossible";
	Name = "Impossible";
	Price = 0;
	CreatedAt = (-math.huge);
	Unownable = true;
	EnergyMultiplier = 0.25;
	GemsPerLevel = 5;
	LegacyBadgeId = 2124451979;
	StarRequirment = 120;
}
tbl_6_upvr[5] = tbl_4
local os_time_result1_upvr = os.time()
local function _(arg1, arg2, arg3) -- Line 164, Named "AddDimension"
	--[[ Upvalues[2]:
		[1]: tbl_6_upvr (readonly)
		[2]: os_time_result1_upvr (readonly)
	]]
	local var48 = tbl_6_upvr
	local tbl = {}
	if arg1 then
		var48 = nil
	else
		var48 = true
	end
	tbl.Disabled = var48
	tbl.Id = arg2
	tbl.Name = arg3
	tbl.CreatedAt = os_time_result1_upvr
	tbl.Unownable = true
	tbl.DeveloperSet = true
	tbl_6_upvr[#var48 + 1] = tbl
end
local tbl_5 = {}
if module_upvr_3.IsHelicopterChase then
	var46 = nil
else
	var46 = true
end
tbl_5.Disabled = var46
var46 = "Heli"
tbl_5.Id = var46
var46 = "Toiletcopter Chase"
tbl_5.Name = var46
tbl_5.CreatedAt = os_time_result1_upvr
var46 = true
tbl_5.Unownable = var46
var46 = true
tbl_5.DeveloperSet = var46
tbl_6_upvr[#tbl_6_upvr + 1] = tbl_5
local tbl_2 = {}
if module_upvr_3.IsScaryRun then
	var46 = nil
else
	var46 = true
end
tbl_2.Disabled = var46
var46 = "Scary"
tbl_2.Id = var46
var46 = "NIGHTMORE Mode"
tbl_2.Name = var46
tbl_2.CreatedAt = os_time_result1_upvr
var46 = true
tbl_2.Unownable = var46
var46 = true
tbl_2.DeveloperSet = var46
tbl_6_upvr[#tbl_6_upvr + 1] = tbl_2
module_2_upvr.DataArray = tbl_6_upvr
os_time_result1_upvr = {}
module_2_upvr.Data_ById = os_time_result1_upvr
os_time_result1_upvr = {}
module_2_upvr.Data_ByBit = os_time_result1_upvr
os_time_result1_upvr = {}
module_2_upvr.DimensionBit_ById = os_time_result1_upvr
os_time_result1_upvr = {}
module_2_upvr.AlternativeDimensionBits_ByLevelAssetId = os_time_result1_upvr
os_time_result1_upvr = {}
module_2_upvr.EnabledDimensionBits_ByLevelAssetId = os_time_result1_upvr
os_time_result1_upvr = tbl_6_upvr
for i, v in os_time_result1_upvr do
	var46 = module_2_upvr.Data_ById[v.Id]
	if var46 then
		var46 = error
		var46(module_upvr.FormatOutput("Duplicate DimensionId '%s'", "Dimensions", nil, v.Id))
	end
	var46 = module_2_upvr.Data_ById
	var46[v.Id] = v
	var46 = bit32.lshift(1, i - 1)
	module_2_upvr.DimensionBit_ById[v.Id] = var46
	module_2_upvr.Data_ByBit[var46] = v
	if v.StarRequirment then
		v.Unownable = true
		v.Price = 0
	end
end
os_time_result1_upvr = bit32.lshift(1, #tbl_6_upvr) - 1
module_2_upvr.AllDimensionsMask = os_time_result1_upvr
os_time_result1_upvr = require(Modules:WaitForChild("LevelAssets")).DataArray
for _, v_2 in os_time_result1_upvr do
	var46 = 0
	local AllDimensionsMask = module_2_upvr.AllDimensionsMask
	if v_2.DimensionsDisallowed then
		for _, v_3 in v_2.DimensionsDisallowed do
			AllDimensionsMask = bit32.bxor(AllDimensionsMask, assert(module_2_upvr.DimensionBit_ById[v_3], "Invalid DimensionId"))
		end
	end
	if v_2.DimensionsUseAlternative then
		for _, v_4 in v_2.DimensionsUseAlternative do
			var46 = bit32.bor(var46, assert(module_2_upvr.DimensionBit_ById[v_4], "Invalid DimensionId"))
		end
		var46 = bit32.band(var46, AllDimensionsMask)
	end
	module_2_upvr.AlternativeDimensionBits_ByLevelAssetId[v_2.Id] = var46
	module_2_upvr.EnabledDimensionBits_ByLevelAssetId[v_2.Id] = AllDimensionsMask
end
function os_time_result1_upvr(arg1, arg2) -- Line 248, Named "DimensionRequirementsMet"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var53
	if arg1.StarRequirment == nil then
		var53 = false
	else
		var53 = true
	end
	if var53 and arg2 then
		if arg1.StarRequirment then
			local var54 = true
			if var54 then
				if arg1.StarRequirment > module_upvr.SaveDataGetTotalStars(arg2) then
					var54 = false
				else
					var54 = true
				end
			end
			-- KONSTANTWARNING: GOTO [29] #24
		end
	else
	end
	if module_upvr_3.IsStudio then
	end
	return true
end
module_2_upvr.DimensionRequirementsMet = os_time_result1_upvr
function os_time_result1_upvr(arg1, arg2) -- Line 279, Named "DimensionCanApply"
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return bit32.btest(module_2_upvr.DimensionBit_ById[arg1.Id], module_2_upvr.EnabledDimensionBits_ByLevelAssetId[arg2.Id])
end
module_2_upvr.DimensionCanApply = os_time_result1_upvr
function os_time_result1_upvr(arg1, arg2) -- Line 291, Named "DimensionUsesAlternative"
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return bit32.btest(module_2_upvr.DimensionBit_ById[arg1.Id], module_2_upvr.AlternativeDimensionBits_ByLevelAssetId[arg2.Id])
end
module_2_upvr.DimensionUsesAlternative = os_time_result1_upvr
function os_time_result1_upvr(arg1) -- Line 309, Named "DimensionsFromBitMask"
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	for i_5, v_5 in module_2_upvr.Data_ByBit do
		if bit32.band(i_5, arg1) ~= 0 then
			module[#module + 1] = v_5
		end
	end
	return module
end
module_2_upvr.DimensionsFromBitMask = os_time_result1_upvr
function os_time_result1_upvr() -- Line 333, Named "DimensionStateCreate"
	return {
		Dirty = true;
		Resolved = false;
		Active_ById = {};
		Applied_ById = {};
		Contributed_ById = {};
		Equipped_ById = {};
	}
end
module_2_upvr.DimensionStateCreate = os_time_result1_upvr
function os_time_result1_upvr(arg1, arg2) -- Line 348, Named "MultiplyRewardFromLevel"
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local var59
	if arg1.ResolvedLevelId then
		local var60 = module_upvr_2.Level_ById[arg1.ResolvedLevelId]
		var59 *= (module_upvr_2.Data_ByLevel[var60].DimensionsRewardModifier or 1) * (var60.DimensionsRewardModifier or 1)
	end
	return var59
end
function module_2_upvr.DimensionStateGetGemBonus(arg1) -- Line 366
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	local var63
	for i_6 in arg1.Active_ById do
		local var64 = module_2_upvr.Data_ById[i_6]
		if var64.GemsPerLevel then
			var63 += var64.GemsPerLevel
		end
	end
	local var65 = var63
	if arg1.ResolvedLevelId then
		i_6 = module_upvr_2.Level_ById
		local var66 = i_6[arg1.ResolvedLevelId]
		i_6 = module_upvr_2.Data_ByLevel[var66]
		var65 *= (i_6.DimensionsRewardModifier or 1) * (var66.DimensionsRewardModifier or 1)
	end
	var63 = var65 // 1
	return var63
end
function module_2_upvr.DimensionStateGetEnergyMultiplierBonus(arg1) -- Line 387
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	local var69
	for i_7 in arg1.Active_ById do
		local var70 = module_2_upvr.Data_ById[i_7]
		if var70.EnergyMultiplier then
			var69 += var70.EnergyMultiplier
		end
	end
	local var71 = var69
	if arg1.ResolvedLevelId then
		i_7 = module_upvr_2
		i_7 = arg1.ResolvedLevelId
		local var72 = i_7.Level_ById[i_7]
		i_7 = module_upvr_2.Data_ByLevel
		i_7 = (i_7[var72].DimensionsRewardModifier or 1) * (var72.DimensionsRewardModifier or 1)
		var71 *= i_7
	end
	var69 = var71
	return var69
end
function module_2_upvr.DimensionStateResolve(arg1, arg2, arg3, arg4) -- Line 408
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg4 and arg4.Dirty then
		error(module_upvr.FormatOutput("Must resolve CarrierDimensionState before resolving DimensionState", "Dimensions"), 2)
	end
	if arg1.ResolvedLevelId ~= arg3.Id then
		arg1.Dirty = true
	end
	if arg1.Dirty or arg4 and arg4.Resolved then
		local tbl_3 = {}
		local clone_2 = table.clone(arg1.Active_ById)
		local clone = table.clone(arg1.Applied_ById)
		table.clear(arg1.Contributed_ById)
		table.clear(arg1.Equipped_ById)
		for _, v_6 in arg2.Inventory.Dimensions.Equipped do
			({})[v_6] = true
			arg1.Equipped_ById[v_6] = true
			local var105
		end
		if arg4 then
			for i_9 in arg4.Applied_ById do
				if module_2_upvr.Data_ById[i_9].CarrierOverrides then
					var105[i_9] = true
				end
				arg1.Contributed_ById[i_9] = true
			end
			for i_10 in var105 do
				if module_2_upvr.Data_ById[i_10].CarrierOverrides and not arg1.Contributed_ById[i_10] then
					var105[i_10] = nil
				end
			end
		end
		for i_11 in var105 do
			if clone[i_11] then
				clone[i_11] = nil
			else
				arg1.Applied_ById[i_11] = true
				tbl_3[i_11] = true
			end
			if bit32.btest(module_2_upvr.EnabledDimensionBits_ByLevelAssetId[arg3.LevelAsset.Id], module_2_upvr.DimensionBit_ById[i_11]) then
				if clone_2[i_11] then
					clone_2[i_11] = nil
				else
					arg1.Active_ById[i_11] = true
				end
			end
		end
		for i_12 in clone do
			arg1.Applied_ById[i_12] = nil
			tbl_3[i_12] = false
			local var106
		end
		for i_13 in clone_2 do
			arg1.Active_ById[i_13] = nil
		end
		arg1.Dirty = false
		arg1.Resolved = true
		arg1.ResolvedLevelId = arg3.Id
		return var106
	end
	arg1.Resolved = false
	return var106
end
return module_2_upvr