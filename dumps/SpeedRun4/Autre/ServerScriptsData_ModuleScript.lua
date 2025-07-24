-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:46
-- Luau version 6, Types version 3
-- Time taken: 0.005915 seconds

local ChartHeaderNames_upvr = require(script.Parent.Parent.Parent.Constants).ServerScriptsFormatting.ChartHeaderNames
local tbl_upvr = {
	[ChartHeaderNames_upvr[1]] = function(arg1, arg2) -- Line 11
		local var4
		if arg1.dataStats.dataSet:back().name >= arg2.dataStats.dataSet:back().name then
			var4 = false
		else
			var4 = true
		end
		return var4
	end;
	[ChartHeaderNames_upvr[2]] = function(arg1, arg2) -- Line 14
		local var6
		if arg1.dataStats.dataSet:back().data[1] >= arg2.dataStats.dataSet:back().data[1] then
			var6 = false
		else
			var6 = true
		end
		return var6
	end;
	[ChartHeaderNames_upvr[3]] = function(arg1, arg2) -- Line 17
		local var8
		if arg1.dataStats.dataSet:back().data[2] >= arg2.dataStats.dataSet:back().data[2] then
			var8 = false
		else
			var8 = true
		end
		return var8
	end;
}
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local Signal_2_upvr = require(script.Parent.Parent.Parent.Signal)
function module_2_upvr.new() -- Line 29
	--[[ Upvalues[3]:
		[1]: module_2_upvr (readonly)
		[2]: Signal_2_upvr (readonly)
		[3]: ChartHeaderNames_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_2_upvr)
	module._serverScriptsUpdated = Signal_2_upvr.new()
	module._serverScriptsData = {}
	module._lastUpdate = 0
	module._sortedScriptsData = {}
	module._sortType = ChartHeaderNames_upvr[1]
	module._isRunning = false
	return module
end
function module_2_upvr.setSortType(arg1, arg2) -- Line 43
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if tbl_upvr[arg2] then
		arg1._sortType = arg2
		table.sort(arg1._sortedScriptsData, tbl_upvr[arg1._sortType])
	else
		error(string.format("attempted to pass invalid sortType: %s", tostring(arg2)), 2)
	end
end
function module_2_upvr.getSortType(arg1) -- Line 53
	return arg1._sortType
end
function module_2_upvr.Signal(arg1) -- Line 57
	return arg1._serverScriptsUpdated
end
function module_2_upvr.getCurrentData(arg1) -- Line 61
	return arg1._sortedScriptsData
end
local CircularBuffer_upvr = require(script.Parent.Parent.Parent.CircularBuffer)
local tonumber_result1_upvr = tonumber(settings():GetFVariable("NewDevConsoleMaxGraphCount"))
local maxOfTable_upvr = require(script.Parent.Parent.Parent.Util.maxOfTable)
local minOfTable_upvr = require(script.Parent.Parent.Parent.Util.minOfTable)
function module_2_upvr.updateScriptsData(arg1, arg2) -- Line 66
	--[[ Upvalues[4]:
		[1]: CircularBuffer_upvr (readonly)
		[2]: tonumber_result1_upvr (readonly)
		[3]: maxOfTable_upvr (readonly)
		[4]: minOfTable_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	arg1._lastUpdate = os.time()
	for i, v in pairs(arg2) do
		if not arg1._serverScriptsData[i] then
			local any_new_result1 = CircularBuffer_upvr.new(tonumber_result1_upvr)
			any_new_result1:push_back({
				data = v;
				time = arg1._lastUpdate;
			})
			arg1._serverScriptsData[i] = {
				max = v;
				min = v;
				dataSet = any_new_result1;
			}
			table.insert(arg1._sortedScriptsData, {
				name = i;
				dataStats = arg1._serverScriptsData[i];
			})
		else
			for i_2, v_2 in pairs(arg1._serverScriptsData[i].max) do
				({})[i_2] = v_2
				local var66
			end
			for i_3, v_3 in pairs(arg1._serverScriptsData[i].min) do
				({})[i_3] = v_3
				local var70
			end
			local any_push_back_result1 = arg1._serverScriptsData[i].dataSet:push_back({
				data = v;
				time = arg1._lastUpdate;
			})
			if any_push_back_result1 then
				for i_4, v_4 in pairs(any_push_back_result1.data) do
					if var66[i_4] == v_4 then
						local any_next_result1 = arg1._serverScriptsData[i].dataSet:iterator():next()
						var66[i_4] = var70[i_4]
						local var78
						while any_next_result1 do
							local function INLINED() -- Internal function, doesn't exist in bytecode
								var78 = var66[i_4]
								return var78
							end
							if any_next_result1.data[i_4] >= var66[i_4] or not INLINED() then
								var78 = any_next_result1.data[i_4]
							end
							var66[i_4] = var78
							var78 = arg1._serverScriptsData[i].dataSet:iterator():next()
						end
					end
				end
				for i_5, v_5 in pairs(any_push_back_result1.data) do
					if var70[i_5] == v_5 then
						var78 = arg1._serverScriptsData
						local any_next_result1_2 = var78[i].dataSet:iterator():next()
						var78 = var66[i_5]
						var70[i_5] = var78
						local var84
						while any_next_result1_2 do
							local function INLINED_2() -- Internal function, doesn't exist in bytecode
								var84 = var70[i_5]
								return var84
							end
							if var70[i_5] >= any_next_result1_2.data[i_5] or not INLINED_2() then
								var84 = any_next_result1_2.data[i_5]
							end
							var70[i_5] = var84
							var84 = var78[i].dataSet:iterator():next()
						end
					end
				end
			end
			arg1._serverScriptsData[i].max = maxOfTable_upvr(var66, v)
			arg1._serverScriptsData[i].min = minOfTable_upvr(var70, v)
		end
	end
end
function module_2_upvr.isRunning(arg1) -- Line 139
	return arg1._isRunning
end
local getClientReplicator_upvr = require(script.Parent.Parent.Parent.Util.getClientReplicator)
function module_2_upvr.start(arg1) -- Line 143
	--[[ Upvalues[1]:
		[1]: getClientReplicator_upvr (readonly)
	]]
	local var85_result1 = getClientReplicator_upvr()
	if var85_result1 and not arg1._statsListenerConnection then
		arg1._statsListenerConnection = var85_result1.StatsReceived:connect(function(arg1_2) -- Line 146
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_2 then
				arg1._lastUpdate = os.time()
				local Scripts = arg1_2.Scripts
				if Scripts then
					arg1:updateScriptsData(Scripts)
				end
				arg1._serverScriptsUpdated:Fire(arg1._sortedScriptsData)
			end
		end)
		var85_result1:RequestServerStats(true)
		arg1._isRunning = true
	end
end
function module_2_upvr.stop(arg1) -- Line 163
	if arg1._statsListenerConnection then
		arg1._statsListenerConnection:Disconnect()
		arg1._statsListenerConnection = nil
	end
	arg1._isRunning = false
end
return module_2_upvr