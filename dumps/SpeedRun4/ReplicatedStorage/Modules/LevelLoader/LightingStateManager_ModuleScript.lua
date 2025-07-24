-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:05
-- Luau version 6, Types version 3
-- Time taken: 0.005983 seconds

-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
local tbl = {}
local Lighting_upvr = game:GetService("Lighting")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local tbl_3_upvr = {
	DefaultSky = Instance.new("Sky");
	LightingStateStack = {};
	LightingStateStackDirty = false;
}
local function DO_NOTHING_upvr(arg1, arg2) -- Line 35, Named "SortLightingStateStack"
	local _Type = arg1._Type
	if _Type ~= arg2._Type then
		if arg1._Type >= arg2._Type then
			_Type = false
		else
			_Type = true
		end
		return _Type
	end
	if (arg1._Priority or (-math.huge)) >= (arg2._Priority or (-math.huge)) then
		_Type = false
	else
		_Type = true
	end
	return _Type
end
local module_upvr = require(Modules:WaitForChild("Utility"))
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("CommonData"))
local function var9_upvw() -- Line 49
	--[[ Upvalues[5]:
		[1]: tbl_3_upvr (readonly)
		[2]: DO_NOTHING_upvr (readonly)
		[3]: Lighting_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: module_upvr_2 (readonly)
	]]
	table.sort(tbl_3_upvr.LightingStateStack, DO_NOTHING_upvr)
	local tbl_2 = {}
	for i, v in ipairs(tbl_3_upvr.LightingStateStack) do
		table.create(#tbl_3_upvr.LightingStateStack)[i] = v.Properties
		for _, v_2 in ipairs(v.Objects) do
			tbl_2[v_2.ClassName] = v_2
		end
	end
	if tbl_2.Sky == tbl_3_upvr.DefaultSky and tbl_2.Atmosphere ~= nil then
		tbl_2.Sky = nil
	end
	i = tbl_3_upvr
	for _, v_3 in ipairs(i.LightingStateStack) do
		for _, v_4 in ipairs(v_3.Objects) do
			if tbl_2[v_4.ClassName] ~= v_4 then
				v_4.Parent = v_3.Directory
			end
		end
	end
	for _, v_5 in ipairs(tbl_3_upvr.LightingStateStack) do
		for _, v_6 in ipairs(v_5.Objects) do
			if tbl_2[v_6.ClassName] == v_6 and v_6.Parent ~= Lighting_upvr then
				v_6.Parent = Lighting_upvr
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local any_PropsMerge_result1 = module_upvr.PropsMerge(table.unpack(table.create(#tbl_3_upvr.LightingStateStack)))
	local pcall_result1, pcall_result2 = pcall(module_upvr.PropsApply, Lighting_upvr, any_PropsMerge_result1)
	if not pcall_result1 then
		warn(module_upvr_2.FormatOutput("Failed to apply lighting for reason: %s", "LightingStateManager", nil, tostring(pcall_result2)))
	elseif any_PropsMerge_result1.ClockTime and any_PropsMerge_result1.ClockTime < 0 then
		Lighting_upvr:SetMinutesAfterMidnight(any_PropsMerge_result1.ClockTime * 60)
	end
	tbl_3_upvr.LightingStateStackDirty = false
end
function DO_NOTHING_upvr(arg1) -- Line 120, Named "Add"
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: var9_upvw (read and write)
	]]
	if not table.find(tbl_3_upvr.LightingStateStack, arg1) then
		tbl_3_upvr.LightingStateStack[#tbl_3_upvr.LightingStateStack + 1] = arg1
		if not tbl_3_upvr.LightingStateStackDirty then
			tbl_3_upvr.LightingStateStackDirty = true
			task.defer(var9_upvw)
		end
	end
end
tbl.Add = DO_NOTHING_upvr
function DO_NOTHING_upvr(arg1) -- Line 131, Named "Remove"
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: var9_upvw (read and write)
	]]
	local table_find_result1 = table.find(tbl_3_upvr.LightingStateStack, arg1)
	if table_find_result1 then
		table.remove(tbl_3_upvr.LightingStateStack, table_find_result1)
		for _, v_7 in ipairs(arg1.Objects) do
			v_7.Parent = arg1.Directory
		end
		if not tbl_3_upvr.LightingStateStackDirty then
			tbl_3_upvr.LightingStateStackDirty = true
			task.defer(var9_upvw)
		end
	end
end
tbl.Remove = DO_NOTHING_upvr
DO_NOTHING_upvr = require(ReplicatedStorage:WaitForChild("Settings")).LevelsDisableLighting
if DO_NOTHING_upvr then
	function DO_NOTHING_upvr() -- Line 154, Named "DO_NOTHING"
	end
	local var64 = DO_NOTHING_upvr
	function tbl.GetSanitizedLightingProperties() -- Line 156
		return {}
	end
	tbl.Add = var64
	tbl.Remove = var64
	-- KONSTANTWARNING: GOTO [172] #122
end
-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [125] 91. Error Block 18 start (CF ANALYSIS FAILED)
var64 = {}
for i_8 in require(Modules:WaitForChild("LevelAssets")).DefaultMapSettings.Lighting do
	var64[i_8] = Lighting_upvr[i_8]
	local var67
end
local _, _, _ = ipairs(({
	_Type = require(script:FindFirstAncestor("LevelLoader"):WaitForChild("LevelCommon")).LightingType.Static;
	Objects = Lighting_upvr:GetChildren();
	Properties = var67;
}).Objects)
-- KONSTANTERROR: [125] 91. Error Block 18 end (CF ANALYSIS FAILED)