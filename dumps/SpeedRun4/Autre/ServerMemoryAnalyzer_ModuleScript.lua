-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:06
-- Luau version 6, Types version 3
-- Time taken: 0.003213 seconds

local CoreGui = game:GetService("CoreGui")
local BaseMemoryAnalyzer_upvr = require(CoreGui.RobloxGui.Modules.Stats.BaseMemoryAnalyzer)
local function __ReadAndSumValues_upvr(arg1, arg2) -- Line 25, Named "__ReadAndSumValues"
	local var7 = 0
	for i, v in pairs(arg2) do
		local var11 = v / 1048576
		var7 += var11
		arg1:getOrMakeChildById(i):setLabelAndValue(i, var11)
	end
	return var7
end
local module_upvr = {}
setmetatable(module_upvr, BaseMemoryAnalyzer_upvr)
module_upvr.__index = module_upvr
function module_upvr.new(arg1) -- Line 52
	--[[ Upvalues[2]:
		[1]: BaseMemoryAnalyzer_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local any_new_result1 = BaseMemoryAnalyzer_upvr.new(arg1)
	setmetatable(any_new_result1, module_upvr)
	any_new_result1._cachedRootTreeViewItem = nil
	any_new_result1._coreTreeViewItem = nil
	any_new_result1._placeTreeViewItem = nil
	any_new_result1._untrackedTreeViewItem = nil
	any_new_result1._isVisible = false
	return any_new_result1
end
function module_upvr.filterServerMemoryTreeStats(arg1, arg2) -- Line 78
	if arg2.ServerMemoryTree == nil then
		return {}
	end
	return arg2.ServerMemoryTree
end
local TreeViewItem_upvr = require(CoreGui.RobloxGui.Modules.Stats.TreeViewItem)
function module_upvr.updateWithTreeStats(arg1, arg2) -- Line 86
	--[[ Upvalues[2]:
		[1]: TreeViewItem_upvr (readonly)
		[2]: __ReadAndSumValues_upvr (readonly)
	]]
	local var19
	if arg1._cachedRootTreeViewItem == nil then
		arg1._cachedRootTreeViewItem = TreeViewItem_upvr.new("root", nil)
		arg1._coreTreeViewItem = arg1._cachedRootTreeViewItem:getOrMakeChildById("CoreMemory")
		arg1._placeTreeViewItem = arg1._cachedRootTreeViewItem:getOrMakeChildById("PlaceMemory")
		arg1._untrackedTreeViewItem = arg1._cachedRootTreeViewItem:getOrMakeChildById("UntrackedMemory")
	end
	for i_2, v_2 in pairs(arg2) do
		if i_2 == "totalServerMemory" then
			var19 = v_2 / 1048576
		elseif i_2 == "developerTags" then
			arg1._placeTreeViewItem:setLabelAndValue("PlaceMemory", __ReadAndSumValues_upvr(arg1._placeTreeViewItem, v_2))
		elseif i_2 == "internalCategories" then
			arg1._coreTreeViewItem:setLabelAndValue("CoreMemory", __ReadAndSumValues_upvr(arg1._coreTreeViewItem, v_2))
		end
	end
	arg1._cachedRootTreeViewItem:setLabelAndValue("Memory", var19)
	arg1._untrackedTreeViewItem:setLabelAndValue("UntrackedMemory", (var19) - (arg1._coreTreeViewItem:getValue() + arg1._placeTreeViewItem:getValue()))
	arg1:renderUpdates()
end
function module_upvr.getMemoryUsageTree(arg1) -- Line 123
	return arg1._cachedRootTreeViewItem
end
function module_upvr.setVisible(arg1, arg2) -- Line 127
	arg1._isVisible = arg2
	if arg1._isVisible then
		arg1:renderUpdates()
	end
end
return module_upvr