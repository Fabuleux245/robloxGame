-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:25
-- Luau version 6, Types version 3
-- Time taken: 0.007185 seconds

local ChartHeaderNames_upvr = require(script.Parent.Parent.Parent.Constants).MemoryFormatting.ChartHeaderNames
local tbl_5_upvr = {
	[ChartHeaderNames_upvr[1]] = function(arg1, arg2) -- Line 11
		local var4
		if arg1.name >= arg2.name then
			var4 = false
		else
			var4 = true
		end
		return var4
	end;
	[ChartHeaderNames_upvr[2]] = function(arg1, arg2) -- Line 14
		local var6
		if arg1.dataStats.dataSet:back().data >= arg2.dataStats.dataSet:back().data then
			var6 = false
		else
			var6 = true
		end
		return var6
	end;
}
local getClientReplicator_upvr = require(script.Parent.Parent.Parent.Util.getClientReplicator)
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local Signal_upvr = require(script.Parent.Parent.Parent.Signal)
function module_2_upvr.new() -- Line 24
	--[[ Upvalues[3]:
		[1]: module_2_upvr (readonly)
		[2]: Signal_upvr (readonly)
		[3]: ChartHeaderNames_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_2_upvr)
	module._init = false
	module._isRunning = false
	module._totalMemory = 0
	module._memoryData = {}
	module._memoryDataSorted = {}
	module._coreTreeData = {}
	module._coreTreeDataSorted = {}
	module._placeTreeData = {}
	module._placeTreeDataSorted = {}
	module._placeScriptTreeData = {}
	module._placeScriptTreeDataSorted = {}
	module._coreScriptTreeData = {}
	module._coreScriptTreeDataSorted = {}
	module._treeViewUpdated = Signal_upvr.new()
	module._sortType = ChartHeaderNames_upvr[1]
	return module
end
local CircularBuffer_upvr = require(script.Parent.Parent.Parent.CircularBuffer)
local tonumber_result1_upvr = tonumber(settings():GetFVariable("NewDevConsoleMaxGraphCount"))
function module_2_upvr.updateEntry(arg1, arg2, arg3, arg4, arg5) -- Line 53
	--[[ Upvalues[2]:
		[1]: CircularBuffer_upvr (readonly)
		[2]: tonumber_result1_upvr (readonly)
	]]
	local var13
	if not arg2[arg4] then
		local any_new_result1 = CircularBuffer_upvr.new(tonumber_result1_upvr)
		local tbl_3 = {}
		tbl_3.data = arg5
		tbl_3.time = arg1._lastUpdate
		any_new_result1:push_back(tbl_3)
		local tbl = {}
		tbl.min = arg5
		tbl.max = arg5
		tbl.dataSet = any_new_result1
		arg2[arg4] = tbl
		local tbl_2 = {}
		tbl_2.name = arg4
		tbl_2.dataStats = arg2[arg4]
		table.insert(arg3, tbl_2)
	else
		any_new_result1 = arg2[arg4].max
		local var18 = any_new_result1
		local min = arg2[arg4].min
		local tbl_7 = {}
		tbl_7.data = arg5
		tbl_7.time = arg1._lastUpdate
		var13 = tbl_7
		local any_push_back_result1 = arg2[arg4].dataSet:push_back(var13)
		if any_push_back_result1 then
			var13 = arg2[arg4]
			local _ = var13.dataSet:iterator()
			var13 = _:next()
			if var18 == any_push_back_result1.data then
				var18 = min
				local var23
				while var13 do
					local function INLINED() -- Internal function, doesn't exist in bytecode
						var23 = var18
						return var23
					end
					if var13.data >= var18 or not INLINED() then
						var23 = var13.data
					end
					var18 = var23
					var23 = _:next()
					var13 = var23
				end
			end
			if min == any_push_back_result1.data then
				min = var18
				local var24
				while var13 do
					local function INLINED_2() -- Internal function, doesn't exist in bytecode
						var24 = min
						return var24
					end
					if min >= var13.data or not INLINED_2() then
						var24 = var13.data
					end
					min = var24
					var24 = _:next()
					var13 = var24
				end
			end
		end
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var13 = arg5
			return var13
		end
		if var18 >= arg5 or not INLINED_3() then
			var13 = var18
		end
		arg2[arg4].max = var13
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var13 = min
			return var13
		end
		if min >= arg5 or not INLINED_4() then
			var13 = arg5
		end
		arg2[arg4].min = var13
	end
end
function module_2_upvr.updateEntryList(arg1, arg2, arg3, arg4) -- Line 109
	-- KONSTANTERROR: [0] 1. Error Block 13 start (CF ANALYSIS FAILED)
	local var29 = 0
	for i, v in pairs(arg4) do
		local var33 = v / 1048576
		var29 += var33
		arg1:updateEntry(arg2, arg3, i, var33)
	end
	local pairs_result1, pairs_result2_2, pairs_result3_3 = pairs(arg2)
	-- KONSTANTERROR: [0] 1. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [44] 35. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [44] 35. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 19. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 19. Error Block 4 end (CF ANALYSIS FAILED)
end
function module_2_upvr.updateWithTreeStats(arg1, arg2) -- Line 138
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_6 = {
		PlaceMemory = 0;
		CoreMemory = 0;
		UntrackedMemory = 0;
		PlaceScriptMemory = 0;
		CoreScriptMemory = 0;
	}
	for i_2, v_2 in pairs(arg2) do
		if i_2 == "totalServerMemory" then
			arg1._totalMemory = v_2 / 1048576
		elseif i_2 == "developerTags" then
			tbl_6.PlaceMemory = arg1:updateEntryList(arg1._placeTreeData, arg1._placeTreeDataSorted, v_2)
		elseif i_2 == "internalCategories" then
			tbl_6.CoreMemory = arg1:updateEntryList(arg1._coreTreeData, arg1._coreTreeDataSorted, v_2)
		elseif i_2 == "placeScriptMemoryCategories" then
			tbl_6.PlaceScriptMemory = arg1:updateEntryList(arg1._placeScriptTreeData, arg1._placeScriptTreeDataSorted, v_2)
		elseif i_2 == "coreScriptMemoryCategories" then
			tbl_6.CoreScriptMemory = arg1:updateEntryList(arg1._coreScriptTreeData, arg1._coreScriptTreeDataSorted, v_2)
		end
	end
	tbl_6.UntrackedMemory = arg1._totalMemory - tbl_6.PlaceMemory - tbl_6.CoreMemory
	if arg1._init then
		for i_3, v_3 in pairs(tbl_6) do
			arg1:updateEntry(arg1._memoryData.Memory.children, arg1._memoryData.Memory.sortedChildren, i_3, v_3)
		end
		arg1:updateEntry(arg1._memoryData, arg1._memoryDataSorted, "Memory", arg1._totalMemory)
	else
		local tbl_4 = {}
		for i_5, v_5 in pairs(tbl_6) do
			arg1:updateEntry({}, tbl_4, i_5, v_5)
			local var73
		end
		arg1:updateEntry(arg1._memoryData, arg1._memoryDataSorted, "Memory", arg1._totalMemory)
		var73.PlaceMemory.children = arg1._placeTreeData
		var73.PlaceMemory.sortedChildren = arg1._placeTreeDataSorted
		var73.CoreMemory.children = arg1._coreTreeData
		var73.CoreMemory.sortedChildren = arg1._coreTreeDataSorted
		var73.PlaceScriptMemory.children = arg1._placeScriptTreeData
		var73.PlaceScriptMemory.sortedChildren = arg1._placeScriptTreeDataSorted
		var73.CoreScriptMemory.children = arg1._coreScriptTreeData
		var73.CoreScriptMemory.sortedChildren = arg1._coreScriptTreeDataSorted
		arg1._memoryData.Memory.children = var73
		arg1._memoryData.Memory.sortedChildren = tbl_4
		arg1._init = true
	end
end
function module_2_upvr.totalMemSignal(arg1) -- Line 204
	return arg1._totalMemoryUpdated
end
function module_2_upvr.treeUpdatedSignal(arg1) -- Line 208
	return arg1._treeViewUpdated
end
function module_2_upvr.getSortType(arg1) -- Line 212
	return arg1._sortType
end
local function recursiveSort_upvr(arg1, arg2) -- Line 216, Named "recursiveSort"
	--[[ Upvalues[1]:
		[1]: recursiveSort_upvr (readonly)
	]]
	table.sort(arg1, arg2)
	for _, v_4 in pairs(arg1) do
		if v_4.dataStats.sortedChildren then
			recursiveSort_upvr(v_4.dataStats.sortedChildren, arg2)
		end
	end
end
function module_2_upvr.setSortType(arg1, arg2) -- Line 225
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: recursiveSort_upvr (readonly)
	]]
	if tbl_5_upvr[arg2] then
		arg1._sortType = arg2
		recursiveSort_upvr(arg1._memoryDataSorted, tbl_5_upvr[arg1._sortType])
	else
		error(string.format("attempted to pass invalid sortType: %s", tostring(arg2)), 2)
	end
end
function module_2_upvr.getMemoryData(arg1) -- Line 234
	return arg1._memoryDataSorted
end
function module_2_upvr.isRunning(arg1) -- Line 238
	return arg1._isRunning
end
function module_2_upvr.start(arg1) -- Line 242
	--[[ Upvalues[1]:
		[1]: getClientReplicator_upvr (readonly)
	]]
	local var7_result1 = getClientReplicator_upvr()
	if var7_result1 and not arg1._statsListenerConnection then
		arg1._statsListenerConnection = var7_result1.StatsReceived:connect(function(arg1_2) -- Line 245
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if not arg1_2.ServerMemoryTree then
			else
				arg1._lastUpdate = os.time()
				local ServerMemoryTree = arg1_2.ServerMemoryTree
				if ServerMemoryTree then
					arg1:updateWithTreeStats(ServerMemoryTree)
					arg1._treeViewUpdated:Fire(arg1._memoryDataSorted)
				end
			end
		end)
		var7_result1:RequestServerStats(true)
		arg1._isRunning = true
	end
end
function module_2_upvr.stop(arg1) -- Line 263
	--[[ Upvalues[1]:
		[1]: getClientReplicator_upvr (readonly)
	]]
	local var7_result1_2 = getClientReplicator_upvr()
	if var7_result1_2 then
		var7_result1_2:RequestServerStats(false)
		arg1._statsListenerConnection:Disconnect()
		arg1._isRunning = false
	end
end
return module_2_upvr