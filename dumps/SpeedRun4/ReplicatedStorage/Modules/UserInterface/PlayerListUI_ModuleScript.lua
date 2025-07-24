-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:02
-- Luau version 6, Types version 3
-- Time taken: 0.009779 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
local tbl_7_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_2_upvr = require(Modules:WaitForChild("Utility"))
local module_upvr = require(Modules:WaitForChild("Worlds"))
tbl_7_upvr.StatType = table.freeze({
	Level = 1;
	Time = 2;
	Stars = 3;
	Currency = 4;
	EnemiesDefeated = 5;
})
tbl_7_upvr.StatTypeMap = table.freeze({
	[module.LeaderstatsType.Currency] = tbl_7_upvr.StatType.Currency;
	[module.LeaderstatsType.Stars] = tbl_7_upvr.StatType.Stars;
})
local tbl_2 = {
	BaseWidth = 150;
	PerEntry = 11;
	StatEntry = 66;
	Padding = 16;
	PaddingSide = 4;
}
local tbl_3_upvr = {
	NextCount = os.clock() + 1;
	VisibilityDirty = true;
	DirtyStats_ByType = {};
	PriorityStat = 0;
	VisibleStats_ByType = {
		[tbl_7_upvr.StatType.Level] = true;
		[tbl_7_upvr.StatType.Stars] = true;
		[tbl_7_upvr.StatType.Currency] = true;
	};
	Leaderstats_ByPlayer = {};
}
local var28_upvw
local var29
if require(ReplicatedStorage:WaitForChild("Settings")).IsHelicopterChase then
	var28_upvw = require(Modules:WaitForChild("Enemies")).Data_ById.Hel
end
local tbl_10_upvr = {
	[tbl_7_upvr.StatType.Level] = {
		Class = "StringValue";
		Value = {
			Name = "Level";
			Value = '-';
		};
	};
	[tbl_7_upvr.StatType.Time] = {
		Class = "IntValue";
		Default = 0;
		Value = {
			Name = "Time";
			Value = 0;
		};
	};
	[tbl_7_upvr.StatType.Stars] = {
		Class = "IntValue";
		Default = 0;
		Value = {
			Name = "Stars";
			Value = 0;
		};
	};
}
local tbl_6 = {
	Class = "StringValue";
	Default = 0;
}
local tbl_4 = {}
var29 = require(ReplicatedStorage:WaitForChild("Theme")).FrontEndNames.Currency_ByCurrencyType[module.PrimaryCurrencyType]
tbl_4.Name = var29.Plural.Proper
tbl_4.Value = '0'
tbl_6.Value = tbl_4
tbl_10_upvr[tbl_7_upvr.StatType.Currency] = tbl_6
local function SortDisplayName_Descending_upvr(arg1, arg2) -- Line 150, Named "SortDisplayName_Descending"
	local var39
	if string.lower(arg2.Player.DisplayName) >= string.lower(arg1.Player.DisplayName) then
		var39 = false
	else
		var39 = true
	end
	return var39
end
local function SimpleWrite_upvr(arg1, arg2) -- Line 158, Named "SortLevelData"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
	]]
	return module_upvr.SortLevelData.AscWorld_AscLevel(arg1.Stats_ByType[tbl_7_upvr.StatType.Level].RawValue, arg2.Stats_ByType[tbl_7_upvr.StatType.Level].RawValue)
end
;({})[tbl_7_upvr.StatType.Level] = function(arg1) -- Line 168
	--[[ Upvalues[3]:
		[1]: module_2_upvr (readonly)
		[2]: SimpleWrite_upvr (readonly)
		[3]: SortDisplayName_Descending_upvr (readonly)
	]]
	module_2_upvr.TableSortMultiStep(arg1, SimpleWrite_upvr, SortDisplayName_Descending_upvr)
end
SortDisplayName_Descending_upvr = {}
local var41 = SortDisplayName_Descending_upvr
function SimpleWrite_upvr(arg1) -- Line 177, Named "SimpleWrite"
	if arg1.RawValue ~= nil then
		arg1.Value.Value = arg1.RawValue
	end
end
local var42 = SimpleWrite_upvr
var41[tbl_7_upvr.StatType.Time] = var42
var41[tbl_7_upvr.StatType.Stars] = var42
var41[tbl_7_upvr.StatType.EnemiesDefeated] = var42
var29 = game:GetService("Players").MaxPlayers
var29 = 28
var29 = 0
for i, v in {{1, 8}, {11, 31}} do
	for i_2 = v[1], v[2] do
		table.create(var29)[var29] = string.char(i_2)
		var29 += 1
	end
end
if var29 ~= 29 then
	warn("Alphabet does not match base size.")
end
local ceiled_upvr = math.ceil(var29 / 29)
local table_create_result1_upvr = table.create(var29)
local function EncodeIndex_upvr(arg1, arg2) -- Line 218, Named "EncodeIndex"
	--[[ Upvalues[2]:
		[1]: ceiled_upvr (readonly)
		[2]: table_create_result1_upvr (readonly)
	]]
	local table_create_result1 = table.create(ceiled_upvr, table_create_result1_upvr[0])
	local SortIndex = arg1.SortIndex
	while 0 < SortIndex do
		table_create_result1[ceiled_upvr] = table_create_result1_upvr[SortIndex % 29]
	end
	return table.concat(table_create_result1)..arg2
end
var41[tbl_7_upvr.StatType.Level] = function(arg1) -- Line 234
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: EncodeIndex_upvr (readonly)
	]]
	local RawValue = arg1.RawValue
	if RawValue then
		arg1.Value.Value = EncodeIndex_upvr(arg1, module_upvr.LevelGetFormattedName(RawValue, module_upvr.FormattedNameType.Abbreviated, true))
	else
		arg1.Value.Value = '-'
	end
end
var41[tbl_7_upvr.StatType.Currency] = function(arg1) -- Line 251
	--[[ Upvalues[2]:
		[1]: EncodeIndex_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	arg1.Value.Value = EncodeIndex_upvr(arg1, module_2_upvr.FormatNumber(arg1.RawValue, module_2_upvr.FormatNumberOptions_BoostAbbreviation))
end
if var28_upvw then
	var42 = tbl_3_upvr.VisibleStats_ByType
	table_create_result1_upvr = tbl_7_upvr.StatType
	ceiled_upvr = table_create_result1_upvr.EnemiesDefeated
	table_create_result1_upvr = true
	var42[ceiled_upvr] = table_create_result1_upvr
	var42 = var28_upvw.Name
	local var55 = var42
	table_create_result1_upvr = string.lower
	EncodeIndex_upvr = var55
	table_create_result1_upvr = table_create_result1_upvr(EncodeIndex_upvr)
	EncodeIndex_upvr = -1
	ceiled_upvr = string.sub(table_create_result1_upvr, EncodeIndex_upvr, -1)
	local DeterminePriorityStat = ceiled_upvr
	if DeterminePriorityStat == 'y' then
		i = -2
		table_create_result1_upvr = string.sub(var55, 1, i)
		EncodeIndex_upvr = "ies"
		var55 = table_create_result1_upvr..EncodeIndex_upvr
	elseif DeterminePriorityStat == 's' then
		table_create_result1_upvr = var55
		EncodeIndex_upvr = "es"
		var55 = table_create_result1_upvr..EncodeIndex_upvr
	else
		table_create_result1_upvr = var55
		EncodeIndex_upvr = 's'
		var55 = table_create_result1_upvr..EncodeIndex_upvr
	end
	EncodeIndex_upvr = tbl_7_upvr.StatType
	table_create_result1_upvr = EncodeIndex_upvr.EnemiesDefeated
	EncodeIndex_upvr = {}
	EncodeIndex_upvr.Class = "IntValue"
	local tbl_9 = {}
	i = var55
	tbl_9.Name = string.format("%s Killed", i)
	tbl_9.Value = 0
	EncodeIndex_upvr.Value = tbl_9
	tbl_10_upvr[table_create_result1_upvr] = EncodeIndex_upvr
end
local tbl = {}
DeterminePriorityStat = tbl_10_upvr
table_create_result1_upvr = nil
EncodeIndex_upvr = nil
for i_3 in DeterminePriorityStat, table_create_result1_upvr, EncodeIndex_upvr do
	i = #tbl
	tbl[i + 1] = i_3
	local var60_upvr
end
DeterminePriorityStat = table.sort
table_create_result1_upvr = var60_upvr
DeterminePriorityStat(table_create_result1_upvr)
local module_3_upvr = require(Modules:WaitForChild("Enemies"))
function DeterminePriorityStat(arg1) -- Line 302, Named "PlayerAdded"
	--[[ Upvalues[6]:
		[1]: tbl_3_upvr (readonly)
		[2]: var60_upvr (readonly)
		[3]: tbl_10_upvr (readonly)
		[4]: tbl_7_upvr (readonly)
		[5]: var28_upvw (read and write)
		[6]: module_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Player_2 = arg1.Player
	if not tbl_3_upvr.Leaderstats_ByPlayer[Player_2] then
		local Folder = Instance.new("Folder")
		Folder.Name = "leaderstats"
		local tbl_5 = {
			Player = Player_2;
			Directory = Folder;
			Stats_ByType = {};
		}
		tbl_3_upvr.Leaderstats_ByPlayer[Player_2] = tbl_5
		for _, v_2 in var60_upvr do
			local var81 = tbl_10_upvr[v_2]
			if var81 then
				local tbl_8 = {
					Type = v_2;
					SortIndex = 0;
					Value = Instance.new(var81.Class);
					RawValue = var81.Default;
				}
				tbl_5.Stats_ByType[v_2] = tbl_8
				for i_5, v_3 in var81.Value do
					tbl_8.Value[i_5] = v_3
					local var83
				end
				if tbl_3_upvr.VisibleStats_ByType[v_2] then
					var83.Value.Parent = Folder
				end
			end
		end
		Folder.Parent = Player_2
	end
	tbl_7_upvr.SetStatValue(Player_2, tbl_7_upvr.StatType.Time, os.time() - arg1.SessionStart)
	tbl_7_upvr.SetStatValue(Player_2, tbl_7_upvr.StatType.Level, arg1.CurrentLevel)
	if var28_upvw then
		tbl_7_upvr.SetStatValue(Player_2, tbl_7_upvr.StatType.EnemiesDefeated, module_3_upvr.EnemyStateGetPoints(arg1.EnemyState, var28_upvw))
	end
end
tbl_7_upvr.PlayerAdded = DeterminePriorityStat
function DeterminePriorityStat(arg1) -- Line 358, Named "PlayerRemoving"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local Player = arg1.Player
	if tbl_3_upvr.Leaderstats_ByPlayer[Player] then
		tbl_3_upvr.Leaderstats_ByPlayer[Player] = nil
	end
end
tbl_7_upvr.PlayerRemoving = DeterminePriorityStat
function DeterminePriorityStat(arg1, arg2) -- Line 372, Named "SetStatVisibility"
	--[[ Upvalues[2]:
		[1]: tbl_10_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var87
	if not var87 then
	else
		if tbl_3_upvr.VisibleStats_ByType[arg1] ~= true then
			var87 = false
		else
			var87 = true
		end
		if arg2 ~= true then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
		if var87 ~= true then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_3_upvr.VisibleStats_ByType[arg1] = true
			tbl_3_upvr.VisibilityDirty = true
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if true then
				tbl_3_upvr.DirtyStats_ByType[arg1] = true
			end
		end
	end
end
tbl_7_upvr.SetStatVisibility = DeterminePriorityStat
function DeterminePriorityStat(arg1) -- Line 396, Named "GetStatVisibility"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local var89
	if tbl_3_upvr.VisibleStats_ByType[arg1] ~= true then
		var89 = false
	else
		var89 = true
	end
	return var89
end
tbl_7_upvr.GetStatVisibility = DeterminePriorityStat
function DeterminePriorityStat(arg1, arg2, arg3) -- Line 400, Named "SetStatValue"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local var92 = tbl_3_upvr.Leaderstats_ByPlayer[arg1]
	if var92 then
		local var93 = var92.Stats_ByType[arg2]
		if var93 and var93.RawValue ~= arg3 then
			var93.RawValue = arg3
			tbl_3_upvr.DirtyStats_ByType[arg2] = true
		end
	end
end
tbl_7_upvr.SetStatValue = DeterminePriorityStat
function DeterminePriorityStat() -- Line 420
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: var60_upvr (readonly)
	]]
	tbl_3_upvr.PriorityStat = math.huge
	for _, v_4 in var60_upvr do
		if tbl_3_upvr.VisibleStats_ByType[v_4] then
			tbl_3_upvr.PriorityStat = v_4
			return
		end
	end
end
table_create_result1_upvr = math.huge
tbl_3_upvr.PriorityStat = table_create_result1_upvr
table_create_result1_upvr = var60_upvr
EncodeIndex_upvr = nil
-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [508] 357. Error Block 22 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: [508] 357. Error Block 22 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [501] 352. Error Block 20 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: [501] 352. Error Block 20 end (CF ANALYSIS FAILED)