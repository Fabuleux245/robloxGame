-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:22
-- Luau version 6, Types version 3
-- Time taken: 0.011137 seconds

local Stats_upvr = game:GetService("Stats")
local StatsUtils_upvr = require(script.Parent.Parent.Parent.Parent.Stats.StatsUtils)
local ChartHeaderNames_upvr = require(script.Parent.Parent.Parent.Constants).MemoryFormatting.ChartHeaderNames
local tbl_3_upvr = {
	[ChartHeaderNames_upvr[1]] = function(arg1, arg2) -- Line 21
		local var6
		if arg1.name >= arg2.name then
			var6 = false
		else
			var6 = true
		end
		return var6
	end;
	[ChartHeaderNames_upvr[2]] = function(arg1, arg2) -- Line 24
		local var8
		if arg1.dataStats.dataSet:back().data >= arg2.dataStats.dataSet:back().data then
			var8 = false
		else
			var8 = true
		end
		return var8
	end;
}
local module_5_upvr = {}
module_5_upvr.__index = module_5_upvr
local Signal_upvr = require(script.Parent.Parent.Parent.Signal)
function module_5_upvr.new() -- Line 32
	--[[ Upvalues[3]:
		[1]: module_5_upvr (readonly)
		[2]: Signal_upvr (readonly)
		[3]: ChartHeaderNames_upvr (readonly)
	]]
	local module_8 = {}
	setmetatable(module_8, module_5_upvr)
	module_8._pollingId = 0
	module_8._totalMemory = 0
	module_8._memoryData = {}
	module_8._memoryDataSorted = {}
	module_8._treeViewUpdatedSignal = Signal_upvr.new()
	module_8._totalMemoryUpdated = Signal_upvr.new()
	module_8._sortType = ChartHeaderNames_upvr[1]
	module_8._isRunning = false
	module_8._doGranularMemUpdate = {}
	module_8._granularMemTable = {}
	return module_8
end
local function _() -- Line 51, Named "GetMemoryPerformanceStatsItem"
	--[[ Upvalues[2]:
		[1]: Stats_upvr (readonly)
		[2]: StatsUtils_upvr (readonly)
	]]
	local var12 = Stats_upvr
	if var12 then
		var12 = Stats_upvr:FindFirstChild("PerformanceStats")
	end
	if not var12 then
		return nil
	end
	return var12:FindFirstChild(StatsUtils_upvr.StatNames[StatsUtils_upvr.StatType_Memory])
end
local SoundService_upvr = game:GetService("SoundService")
local function fetchSoundMemoryData_upvr() -- Line 62, Named "fetchSoundMemoryData"
	--[[ Upvalues[1]:
		[1]: SoundService_upvr (readonly)
	]]
	local module = {}
	for i, v in pairs(SoundService_upvr:GetSoundMemoryData()) do
		table.insert(module, {
			name = i;
			value = v;
		})
	end
	table.sort(module, function(arg1, arg2) -- Line 76
		local var24
		if arg2.value >= arg1.value then
			var24 = false
		else
			var24 = true
		end
		return var24
	end)
	return module
end
local function fetchGraphicsTextureMemoryData_upvr() -- Line 83, Named "fetchGraphicsTextureMemoryData"
	--[[ Upvalues[1]:
		[1]: Stats_upvr (readonly)
	]]
	local module_4 = {}
	local function aggregateData(arg1, arg2) -- Line 88
		for _, v_2 in ipairs(arg2.Results) do
			table.insert(arg1, {
				name = v_2.TextureId;
				value = v_2.MemoryInBytes / 1048576;
			})
		end
	end
	aggregateData(module_4, Stats_upvr:GetPaginatedMemoryByTexture(Enum.TextureQueryType.NonHumanoid, 0, 100))
	aggregateData(module_4, Stats_upvr:GetPaginatedMemoryByTexture(Enum.TextureQueryType.NonHumanoidOrphaned, 0, 100))
	table.sort(module_4, function(arg1, arg2) -- Line 101
		local var33
		if arg2.value >= arg1.value then
			var33 = false
		else
			var33 = true
		end
		return var33
	end)
	return module_4
end
local function fetchGraphicsTextureCharacterMemoryData_upvr() -- Line 107, Named "fetchGraphicsTextureCharacterMemoryData"
	--[[ Upvalues[1]:
		[1]: Stats_upvr (readonly)
	]]
	local module_6 = {}
	local function aggregateData(arg1, arg2) -- Line 112
		for _, v_3 in ipairs(arg2.Results) do
			local tbl = {}
			for _, v_4 in pairs(string.split(v_3.TextureId, ' ')) do
				if string.sub(v_4, 1, 2) == "T[" then
					table.insert({}, v_4)
				end
			end
			local tbl_4 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			for _, v_5 in pairs({}) do
				local _2 = string.split(v_5, ".mesh:")[2]
				local string_find_result1 = string.find(_2, ':', 12)
				if string_find_result1 ~= nil then
					string_find_result1 -= 1
				end
				tbl_4[string.sub(_2, 1, string_find_result1)] = true
			end
			for i_6, _ in pairs(tbl_4) do
				table.insert(tbl, {
					name = i_6;
				})
			end
			table.sort(tbl, function(arg1_2, arg2_2) -- Line 154
				local var69
				if arg1_2.name >= arg2_2.name then
					var69 = false
				else
					var69 = true
				end
				return var69
			end)
			table.insert(arg1, {
				name = "Composite Texture";
				value = v_3.MemoryInBytes / 1048576;
				moreInfo = tbl;
			})
		end
	end
	aggregateData(module_6, Stats_upvr:GetPaginatedMemoryByTexture(Enum.TextureQueryType.Humanoid, 0, 100))
	aggregateData(module_6, Stats_upvr:GetPaginatedMemoryByTexture(Enum.TextureQueryType.HumanoidOrphaned, 0, 100))
	return module_6
end
local MeshContentProvider_upvr = game:GetService("MeshContentProvider")
local function fetchGraphicsMeshPartsMemoryData_upvr() -- Line 171, Named "fetchGraphicsMeshPartsMemoryData"
	--[[ Upvalues[1]:
		[1]: MeshContentProvider_upvr (readonly)
	]]
	local module_3 = {}
	for i_7, v_7 in pairs(MeshContentProvider_upvr:getContentMemoryData()) do
		table.insert(module_3, {
			name = i_7;
			value = v_7 / 1048576;
		})
	end
	table.sort(module_3, function(arg1, arg2) -- Line 183
		local var82
		if arg2.value >= arg1.value then
			var82 = false
		else
			var82 = true
		end
		return var82
	end)
	return module_3
end
local KeyframeSequenceProvider_upvr = game:GetService("KeyframeSequenceProvider")
local function fetchFuncAnimation_upvr() -- Line 190, Named "fetchFuncAnimation"
	--[[ Upvalues[1]:
		[1]: KeyframeSequenceProvider_upvr (readonly)
	]]
	local module_7 = {}
	for i_8, v_8 in pairs(KeyframeSequenceProvider_upvr:GetMemStats()) do
		table.insert(module_7, {
			name = i_8;
			value = v_8 / 1048576;
		})
	end
	table.sort(module_7, function(arg1, arg2) -- Line 202
		local var94
		if arg2.value >= arg1.value then
			var94 = false
		else
			var94 = true
		end
		return var94
	end)
	return module_7
end
local TextService_upvr = game:GetService("TextService")
local function fetchFontMemoryData_upvr() -- Line 209, Named "fetchFontMemoryData"
	--[[ Upvalues[1]:
		[1]: TextService_upvr (readonly)
	]]
	local module_2 = {}
	for i_9, v_9 in pairs(TextService_upvr:GetFontMemoryData()) do
		table.insert(module_2, {
			name = i_9;
			value = v_9 / 1048576;
		})
	end
	table.sort(module_2, function(arg1, arg2) -- Line 220
		local var106
		if arg2.value >= arg1.value then
			var106 = false
		else
			var106 = true
		end
		return var106
	end)
	return module_2
end
function module_5_upvr.updateCachedData(arg1, arg2, arg3) -- Line 227
	if arg1._doGranularMemUpdate[arg2] then
		arg1._doGranularMemUpdate[arg2] = false
		arg1._granularMemTable[arg2] = arg3()
	end
end
function module_5_upvr.getAdditionalMemoryFunc(arg1, arg2) -- Line 234
	--[[ Upvalues[6]:
		[1]: fetchSoundMemoryData_upvr (readonly)
		[2]: fetchGraphicsTextureMemoryData_upvr (readonly)
		[3]: fetchGraphicsTextureCharacterMemoryData_upvr (readonly)
		[4]: fetchGraphicsMeshPartsMemoryData_upvr (readonly)
		[5]: fetchFuncAnimation_upvr (readonly)
		[6]: fetchFontMemoryData_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	if arg2 == "Sounds" then
		-- KONSTANTWARNING: GOTO [34] #26
	end
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 26 start (CF ANALYSIS FAILED)
	if arg2 == "GraphicsTexture" then
		-- KONSTANTWARNING: GOTO [34] #26
	end
	-- KONSTANTERROR: [5] 5. Error Block 26 end (CF ANALYSIS FAILED)
end
local CircularBuffer_upvr = require(script.Parent.Parent.Parent.CircularBuffer)
local tonumber_result1_upvr = tonumber(settings():GetFVariable("NewDevConsoleMaxGraphCount"))
function module_5_upvr.recursiveUpdateEntry(arg1, arg2, arg3, arg4) -- Line 265
	--[[ Upvalues[3]:
		[1]: StatsUtils_upvr (readonly)
		[2]: CircularBuffer_upvr (readonly)
		[3]: tonumber_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 90 start (CF ANALYSIS FAILED)
	local any_GetMemoryAnalyzerStatName_result1 = StatsUtils_upvr.GetMemoryAnalyzerStatName(arg4.DisplayName)
	local any_GetValue_result1 = arg4:GetValue()
	local children = arg4:GetChildren()
	if not arg2[any_GetMemoryAnalyzerStatName_result1] then
		local any_new_result1 = CircularBuffer_upvr.new(tonumber_result1_upvr)
		any_new_result1:push_back({
			data = any_GetValue_result1;
			time = arg1._lastUpdate;
		})
		local tbl_5 = {
			min = any_GetValue_result1;
			max = any_GetValue_result1;
			dataSet = any_new_result1;
		}
		local var123 = false
		if 0 < #children then
			var123 = {}
		end
		tbl_5.children = var123
		var123 = false
		local var124 = var123
		if 0 < #children then
			var124 = {}
		end
		tbl_5.sortedChildren = var124
		arg2[any_GetMemoryAnalyzerStatName_result1] = tbl_5
		local any_getAdditionalMemoryFunc_result1 = arg1:getAdditionalMemoryFunc(any_GetMemoryAnalyzerStatName_result1)
		if any_getAdditionalMemoryFunc_result1 then
			arg2[any_GetMemoryAnalyzerStatName_result1].additionalInfoFunc = any_getAdditionalMemoryFunc_result1
			arg1._doGranularMemUpdate[any_GetMemoryAnalyzerStatName_result1] = true
		end
		table.insert(arg3, {
			name = any_GetMemoryAnalyzerStatName_result1;
			dataStats = arg2[any_GetMemoryAnalyzerStatName_result1];
		})
	else
		local var127
		var127 = arg2[any_GetMemoryAnalyzerStatName_result1].max
		local min = arg2[any_GetMemoryAnalyzerStatName_result1].min
		local tbl_2 = {
			data = any_GetValue_result1;
			time = arg1._lastUpdate;
		}
		if arg2[any_GetMemoryAnalyzerStatName_result1].additionalInfoFunc and arg2[any_GetMemoryAnalyzerStatName_result1].dataSet:back().data ~= tbl_2.data then
			arg1._doGranularMemUpdate[any_GetMemoryAnalyzerStatName_result1] = true
		end
		local any_push_back_result1 = arg2[any_GetMemoryAnalyzerStatName_result1].dataSet:push_back(tbl_2)
		if any_push_back_result1 then
			local any_next_result1 = arg2[any_GetMemoryAnalyzerStatName_result1].dataSet:iterator():next()
			if var127 == any_push_back_result1.data then
				var127 = min
				local var133
				while any_next_result1 do
					local function INLINED() -- Internal function, doesn't exist in bytecode
						var133 = var127
						return var133
					end
					if any_next_result1.data >= var127 or not INLINED() then
						var133 = any_next_result1.data
					end
					var127 = var133
					var133 = arg2[any_GetMemoryAnalyzerStatName_result1].dataSet:iterator():next()
					local var134 = var133
				end
			end
			if min == any_push_back_result1.data then
				local var135 = var127
				local var136
				while var134 do
					local function INLINED_2() -- Internal function, doesn't exist in bytecode
						var136 = var135
						return var136
					end
					if var135 >= var134.data or not INLINED_2() then
						var136 = var134.data
					end
					local var137 = var136
					var136 = arg2[any_GetMemoryAnalyzerStatName_result1].dataSet:iterator():next()
				end
			end
		end
		if var127 >= any_GetValue_result1 or not any_GetValue_result1 then
		end
		arg2[any_GetMemoryAnalyzerStatName_result1].max = var127
		if var137 >= any_GetValue_result1 or not var137 then
		end
		arg2[any_GetMemoryAnalyzerStatName_result1].min = any_GetValue_result1
	end
	local var138 = arg2[any_GetMemoryAnalyzerStatName_result1]
	for _, v_10 in ipairs(children) do
		({})[v_10.DisplayName] = true
		arg1:recursiveUpdateEntry(var138.children, var138.sortedChildren, v_10)
		local _
	end
	-- KONSTANTERROR: [0] 1. Error Block 90 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [246] 169. Error Block 51 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [246] 169. Error Block 51 end (CF ANALYSIS FAILED)
end
function module_5_upvr.totalMemSignal(arg1) -- Line 379
	return arg1._totalMemoryUpdated
end
function module_5_upvr.treeUpdatedSignal(arg1) -- Line 383
	return arg1._treeViewUpdatedSignal
end
function module_5_upvr.getSortType(arg1) -- Line 387
	return arg1._sortType
end
local function recursiveSort_upvr(arg1, arg2) -- Line 391, Named "recursiveSort"
	--[[ Upvalues[1]:
		[1]: recursiveSort_upvr (readonly)
	]]
	table.sort(arg1, arg2)
	for _, v_11 in pairs(arg1) do
		if v_11.dataStats.sortedChildren then
			recursiveSort_upvr(v_11.dataStats.sortedChildren, arg2)
		end
	end
end
function module_5_upvr.setSortType(arg1, arg2) -- Line 400
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: recursiveSort_upvr (readonly)
	]]
	if tbl_3_upvr[arg2] then
		arg1._sortType = arg2
		recursiveSort_upvr(arg1._memoryDataSorted, tbl_3_upvr[arg1._sortType])
	else
		error(string.format("attempted to pass invalid sortType: %s", tostring(arg2)), 2)
	end
end
function module_5_upvr.getMemoryData(arg1) -- Line 410
	return arg1._memoryDataSorted
end
function module_5_upvr.isRunning(arg1) -- Line 414
	return arg1._isRunning
end
function module_5_upvr.start(arg1) -- Line 418
	--[[ Upvalues[2]:
		[1]: Stats_upvr (readonly)
		[2]: StatsUtils_upvr (readonly)
	]]
	spawn(function() -- Line 419
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Stats_upvr (copied, readonly)
			[3]: StatsUtils_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		arg1._pollingId += 1
		arg1._isRunning = true
		while true do
			local var149
			if arg1._pollingId ~= arg1._pollingId then break end
			var149 = Stats_upvr
			if var149 then
				var149 = Stats_upvr:FindFirstChild("PerformanceStats")
			end
			if not var149 then
				local _
			else
			end
			if not var149:FindFirstChild(StatsUtils_upvr.StatNames[StatsUtils_upvr.StatType_Memory]) then return end
			arg1._lastUpdate = os.time()
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg1:recursiveUpdateEntry(arg1._memoryData, arg1._memoryDataSorted, var149:FindFirstChild(StatsUtils_upvr.StatNames[StatsUtils_upvr.StatType_Memory]))
			if arg1._totalMemory ~= var149:FindFirstChild(StatsUtils_upvr.StatNames[StatsUtils_upvr.StatType_Memory]):getValue() then
				arg1._totalMemory = var149:FindFirstChild(StatsUtils_upvr.StatNames[StatsUtils_upvr.StatType_Memory]):getValue()
				arg1._totalMemoryUpdated:Fire(arg1._totalMemory)
			end
			arg1._treeViewUpdatedSignal:Fire(arg1._memoryDataSorted)
			wait(3)
		end
		arg1._isRunning = false
	end)
end
function module_5_upvr.stop(arg1) -- Line 444
	arg1._pollingId += 1
end
return module_5_upvr