-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:05
-- Luau version 6, Types version 3
-- Time taken: 0.003495 seconds

local Stats_upvr = game:GetService("Stats")
local CoreGui = game:GetService("CoreGui")
local BaseMemoryAnalyzer_upvr = require(CoreGui.RobloxGui.Modules.Stats.BaseMemoryAnalyzer)
local StatsUtils_upvr = require(CoreGui.RobloxGui.Modules.Stats.StatsUtils)
local function _() -- Line 19, Named "__GetMemoryPerformanceStatsItem"
	--[[ Upvalues[2]:
		[1]: Stats_upvr (readonly)
		[2]: StatsUtils_upvr (readonly)
	]]
	local var5 = Stats_upvr
	if var5 then
		var5 = Stats_upvr:FindFirstChild("PerformanceStats")
	end
	if var5 == nil then
		return nil
	end
	return var5:FindFirstChild(StatsUtils_upvr.StatNames[StatsUtils_upvr.StatType_Memory])
end
local CommonUtil_upvr = require(CoreGui.RobloxGui.Modules.Common.CommonUtil)
local function __FillInMemoryUsageTreeRecursive_upvr(arg1, arg2) -- Line 30, Named "__FillInMemoryUsageTreeRecursive"
	--[[ Upvalues[3]:
		[1]: StatsUtils_upvr (readonly)
		[2]: CommonUtil_upvr (readonly)
		[3]: __FillInMemoryUsageTreeRecursive_upvr (readonly)
	]]
	arg1:setLabelAndValue(StatsUtils_upvr.GetMemoryAnalyzerStatName(arg2.Name), arg2:GetValue())
	for _, v in ipairs(CommonUtil_upvr.SortByName(arg2:GetChildren())) do
		__FillInMemoryUsageTreeRecursive_upvr(arg1:getOrMakeChildById(v.Name), v)
	end
end
local module_upvr = {}
setmetatable(module_upvr, BaseMemoryAnalyzer_upvr)
module_upvr.__index = module_upvr
function module_upvr.new(arg1) -- Line 61
	--[[ Upvalues[2]:
		[1]: BaseMemoryAnalyzer_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local any_new_result1 = BaseMemoryAnalyzer_upvr.new(arg1)
	setmetatable(any_new_result1, module_upvr)
	any_new_result1._rootTreeViewItem = nil
	any_new_result1._shouldListenForUpdates = false
	any_new_result1._spawnedLoopScheduled = false
	return any_new_result1
end
function module_upvr.startListeningForUpdates(arg1) -- Line 86
	arg1._shouldListenForUpdates = true
	if arg1._spawnedLoopScheduled then
	else
		arg1._spawnedLoopScheduled = true
		spawn(function() -- Line 95
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			while arg1._shouldListenForUpdates do
				arg1:refreshMemoryUsageTree()
				arg1:renderUpdates()
				wait(1)
			end
			arg1._spawnedLoopScheduled = false
		end)
	end
end
function module_upvr.stopListeningForUpdates(arg1) -- Line 107
	arg1._shouldListenForUpdates = false
end
local TreeViewItem_upvr = require(CoreGui.RobloxGui.Modules.Stats.TreeViewItem)
function module_upvr.refreshMemoryUsageTree(arg1) -- Line 112
	--[[ Upvalues[4]:
		[1]: TreeViewItem_upvr (readonly)
		[2]: Stats_upvr (readonly)
		[3]: StatsUtils_upvr (readonly)
		[4]: __FillInMemoryUsageTreeRecursive_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var16
	if arg1._rootTreeViewItem == nil then
		var16 = TreeViewItem_upvr
		var16 = "root"
		arg1._rootTreeViewItem = var16.new(var16, nil)
	end
	var16 = Stats_upvr
	if var16 then
		var16 = Stats_upvr:FindFirstChild("PerformanceStats")
	end
	if var16 == nil then
		local _
	else
	end
	if var16:FindFirstChild(StatsUtils_upvr.StatNames[StatsUtils_upvr.StatType_Memory]) == nil then
		return nil
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	__FillInMemoryUsageTreeRecursive_upvr(arg1._rootTreeViewItem, var16:FindFirstChild(StatsUtils_upvr.StatNames[StatsUtils_upvr.StatType_Memory]))
end
function module_upvr.getMemoryUsageTree(arg1) -- Line 125
	return arg1._rootTreeViewItem
end
return module_upvr