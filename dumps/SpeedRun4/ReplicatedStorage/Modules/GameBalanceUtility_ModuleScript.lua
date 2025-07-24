-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:55
-- Luau version 6, Types version 3
-- Time taken: 0.008847 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module_2_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_4_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_3_upvr = require(Modules:WaitForChild("Utility"))
local tbl_upvr = {}
local tbl = {
	Level = 1;
	Runs = 0.75;
	PetInfluence = 0;
}
tbl_upvr[1] = tbl
tbl_upvr[2] = {
	Level = 3;
	Runs = 0.8;
	PetInfluence = 0;
}
tbl_upvr[3] = {
	Level = 15;
	Runs = 0.9;
	PetInfluence = 1 / module_4_upvr.PetsMinEquippable;
}
tbl_upvr[4] = {
	Level = 30;
	Runs = 1;
	PetInfluence = 1;
}
tbl_upvr[5] = {
	Level = 40;
	Runs = 8;
	PetInfluence = 1;
}
tbl_upvr[6] = {
	Level = 50;
	Runs = 19;
	PetInfluence = 1;
}
tbl_upvr[7] = {
	Level = 60;
	Runs = 32;
	PetInfluence = 1;
}
tbl = 0
local var30_upvw = tbl
local var31_upvw
for _, v in require(Modules:WaitForChild("Gamepasses")).Gamepasses.Luck, var31_upvw do
	var30_upvw += v.Factor
end
var31_upvw = math.huge
for _, v_2 in tbl_upvr do
	local Level_3_upvw = v_2.Level
	if Level_3_upvw < var31_upvw then
		var31_upvw = Level_3_upvw
	end
	if (-math.huge) < Level_3_upvw then
	end
end
local function WeightedListApplyLuckBoost_upvr(arg1, arg2) -- Line 110, Named "WeightedListApplyLuckBoost"
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_WeightedListClone_result1 = module_3_upvr.WeightedListClone(arg1)
	local var88 = false
	if 1 < arg2 then
		local var89
		if var89 <= #arg1.Elements then
			var89 = math.huge
			for _, v_3 in arg1.Elements do
				local Weight_2 = v_3.Weight
				if (-math.huge) < Weight_2 then
				end
				if Weight_2 < var89 then
					var89 = Weight_2
				end
			end
			for i_4, v_4 in any_WeightedListClone_result1.Elements do
				local Weight_3 = v_4.Weight
				if var89 < Weight_3 then
					({})[i_4] = v_4
				end
				local var92 = ((1 - (Weight_3 - var89) / (Weight_2 - var89)) ^ 2) * ((arg2 - 1) * var89)
				v_4.Weight += var92
			end
			for i_5, v_5 in {} do
				v_5.Weight -= (0 + var92) * (arg1.Elements[i_5].Weight / (0 + Weight_3))
				if v_5.Weight < 0 then
					var88 = true
					v_5.Weight = 0
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
			module_3_upvr.WeightedListResolve(any_WeightedListClone_result1)
		end
	end
	return any_WeightedListClone_result1, var88
end
local tbl_3_upvr = {}
function module_2_upvr.ApplyLuckBoost(arg1, arg2) -- Line 185
	--[[ Upvalues[3]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: WeightedListApplyLuckBoost_upvr (readonly)
	]]
	local var94
	if tbl_3_upvr[arg1] then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var94 = tbl_3_upvr[arg1][arg2]
		local var95
	end
	if not var94 then
		var94 = module_3_upvr.TableFreezeAll(WeightedListApplyLuckBoost_upvr(arg1, arg2))
		if not var95 then
			var95 = {}
			tbl_3_upvr[arg1] = var95
		end
		var95[arg2] = var94
	end
	return var94
end
local tbl_6_upvr = {}
local function DetermineProgressionMod_upvr(arg1) -- Line 217, Named "DetermineProgressionMod"
	--[[ Upvalues[5]:
		[1]: var31_upvw (read and write)
		[2]: Level_3_upvw (read and write)
		[3]: tbl_6_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: DetermineProgressionMod_upvr (readonly)
	]]
	-- KONSTANTERROR: [27] 24. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [27] 24. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 15 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [27.1]
	if nil then
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [27.4294049864]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [27.2]
	if nil < nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [27.3]
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil <= arg1 then
			-- KONSTANTWARNING: GOTO [15] #15
		end
		-- KONSTANTWARNING: GOTO [29] #26
	end
	-- KONSTANTERROR: [0] 1. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 26. Error Block 17 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var105 = tbl_upvr[nil - 1]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var106 = tbl_upvr[nil]
	local Level = var105.Level
	local minimum = math.min((arg1 - Level) / (var106.Level - Level + 1), 1)
	local var109 = var105.Runs * (1 - minimum) + var106.Runs * minimum
	local var110 = 0
	if var31_upvw < arg1 then
		var110 = DetermineProgressionMod_upvr(arg1 - 1).RunsCumulative
	end
	local table_freeze_result1_2 = table.freeze({
		Runs = var109;
		RunsCumulative = var110 + var109;
		PetInfluence = var105.PetInfluence * (1 - minimum) + var106.PetInfluence * minimum;
	})
	tbl_6_upvr[arg1] = table_freeze_result1_2
	do
		return table_freeze_result1_2
	end
	-- KONSTANTERROR: [29] 26. Error Block 17 end (CF ANALYSIS FAILED)
end
local function GenerateListValueSource(arg1, arg2, arg3, ...) -- Line 272
	--[[ Upvalues[3]:
		[1]: module_3_upvr (readonly)
		[2]: WeightedListApplyLuckBoost_upvr (readonly)
		[3]: var30_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var121 = ...
	local any_WeightedListFromExpectedValue_result1 = module_3_upvr.WeightedListFromExpectedValue(arg3, var121)
	if 0 >= #any_WeightedListFromExpectedValue_result1.Elements then
		var121 = false
	else
		var121 = true
	end
	assert(var121, "ValueSource cannot be empty.")
	if select(2, WeightedListApplyLuckBoost_upvr(any_WeightedListFromExpectedValue_result1, var30_upvw)) then
		warn("Highest luck boost exceeds probability space.", any_WeightedListFromExpectedValue_result1)
	end
	for _, v_6 in any_WeightedListFromExpectedValue_result1.Elements do
		v_6.Value *= (arg1 + 1) ^ arg2
		local _
	end
	module_3_upvr.WeightedListSort(any_WeightedListFromExpectedValue_result1, true)
	local module = {}
	module.Completions = arg1
	module.Value = module_3_upvr.WeightedListDetermineExpectedValue(any_WeightedListFromExpectedValue_result1, "Value")
	module.List = any_WeightedListFromExpectedValue_result1
	return module
end
local function GenerateCumulativeRunModdedListValueSources_upvr(arg1, arg2, arg3) -- Line 304, Named "GenerateCumulativeRunModdedListValueSources"
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: DetermineProgressionMod_upvr (readonly)
	]]
	local any_TableDeepCopy_result1 = module_3_upvr.TableDeepCopy(arg1)
	local var134 = DetermineProgressionMod_upvr(arg2).RunsCumulative ^ arg3
	for _, v_7 in any_TableDeepCopy_result1 do
		v_7.Value *= var134
		for _, v_8 in v_7.List.Elements do
			v_8.Value *= var134
		end
	end
	return any_TableDeepCopy_result1
end
local tbl_5_upvr = {GenerateListValueSource(0, 0.75, 1, 35, 35, 15, 10, 5), GenerateListValueSource(2, 0.75, 1.25, 40, 30, 17, 9, 4), GenerateListValueSource(10, 0.75, 1.5, 43, 28, 18, 8, 3), GenerateListValueSource(40, 0.75, 1.75, 45, 25, 21, 7, 2), GenerateListValueSource(100, 0.75, 2, 40, 30, 20, 9, 1), GenerateListValueSource(200, 0.75, 2.25, 35, 35, 15, 10, 5), GenerateListValueSource(1000, 0.75, 2.5, 99.5, 0.5)}
local tbl_4_upvr = {}
function module_2_upvr.GenerateEggValueSpecs(arg1) -- Line 410
	--[[ Upvalues[4]:
		[1]: tbl_4_upvr (readonly)
		[2]: GenerateCumulativeRunModdedListValueSources_upvr (readonly)
		[3]: tbl_5_upvr (readonly)
		[4]: module_3_upvr (readonly)
	]]
	if tbl_4_upvr[arg1] then
		return tbl_4_upvr[arg1]
	end
	local GenerateCumulativeRunModdedListValueSources_result1 = GenerateCumulativeRunModdedListValueSources_upvr(tbl_5_upvr, arg1, 0.75)
	for i_9, v_9 in GenerateCumulativeRunModdedListValueSources_result1 do
		table.create(#GenerateCumulativeRunModdedListValueSources_result1)[i_9] = {
			EggPrice = module_3_upvr.BeautifyNumber(37.5 * v_9.Value, 2, 0.5);
			Values = v_9;
		}
		local var144
	end
	module_3_upvr.TableFreezeAll(var144)
	tbl_4_upvr[arg1] = var144
	return var144
end
function tbl_5_upvr(arg1) -- Line 453, Named "GetNextLevelPrice"
	--[[ Upvalues[4]:
		[1]: DetermineProgressionMod_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: module_4_upvr (readonly)
		[4]: module_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local DetermineProgressionMod_result1 = DetermineProgressionMod_upvr(arg1)
	local Runs = DetermineProgressionMod_result1.Runs
	local PetInfluence = DetermineProgressionMod_result1.PetInfluence
	local const_number = 0
	local var149
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 26. Error Block 16 start (CF ANALYSIS FAILED)
	var149 = 0
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [34.6]
	local var150 = PetInfluence[nil - 1]
	if var150 then
		var149 = var150.Values.Value
	end
	local minimum_3 = math.min(Runs / const_number.Values.Completions, 1)
	-- KONSTANTERROR: [33] 26. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [70] 53. Error Block 13 start (CF ANALYSIS FAILED)
	var149 = 0.5
	do
		return module_3_upvr.BeautifyNumber(50 * Runs * (1 + (var149 * (1 - minimum_3) + const_number.Values.Value * minimum_3) * (DetermineProgressionMod_result1.PetInfluence * module_4_upvr.PetsMinEquippable)), 2, var149)
	end
	-- KONSTANTERROR: [70] 53. Error Block 13 end (CF ANALYSIS FAILED)
end
module_2_upvr.GetNextLevelPrice = tbl_5_upvr
return module_2_upvr