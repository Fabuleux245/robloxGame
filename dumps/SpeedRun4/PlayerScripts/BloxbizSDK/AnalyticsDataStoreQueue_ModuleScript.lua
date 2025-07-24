-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:46
-- Luau version 6, Types version 3
-- Time taken: 0.006801 seconds

local module_2_upvr = {
	ad_format = "3d";
}
local Utils_upvr = require(script.Parent.Utils)
local module_upvr = {
	_updateQueue = {};
}
local function _() -- Line 18, Named "getUTCDate"
	return os.date("!%Y-%m-%d", os.time())
end
local function _(arg1) -- Line 22, Named "truncateToThreeDecimals"
	return math.floor(arg1 * 1000) / 1000
end
local function var4_upvw(arg1, arg2) -- Line 27
	--[[ Upvalues[1]:
		[1]: var4_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	for i, v in pairs(arg2) do
		local var16
		if arg1[i] ~= nil then
			var16 = false
		else
			var16 = true
		end
		if type(arg1[i]) == "table" then
			if type(v) ~= "table" then
			else
			end
		end
		if var16 then
			arg1[i] = v
		elseif true then
			var4_upvw(arg1[i], v)
		end
	end
	return arg1
end
function module_upvr.initializeQueue(arg1) -- Line 42
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr:_onServerClose()
	task.spawn(function() -- Line 45
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		while task.wait(60) do
			module_upvr:_consumeQueue()
		end
	end)
end
function module_upvr.queueChange(arg1, arg2, ...) -- Line 54
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Utils_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
	local any__getAdFromAdId_result1_2 = module_upvr:_getAdFromAdId(arg2)
	if not any__getAdFromAdId_result1_2 then
		Utils_upvr.pprint("[Super Biz] Invalid bloxbiz_ad_id when changing analytics DataStore")
		return
	end
	if not module_upvr:_getDefaultAnalyticsFromAdFormat(any__getAdFromAdId_result1_2.ad_format) then
		Utils_upvr.pprint("[Super Biz] Ad format is not supported yet for id", arg2)
		return
	end
	local tbl = {}
	local var20 = ...
	tbl[1] = tostring(arg2)
	tbl[2] = var20
	if tbl[#tbl] ~= "number" then
		var20 = false
	else
		var20 = true
	end
	if not type(var20) then
		Utils_upvr.pprint("[Super Biz] Analytics DataStore module expected a number when making a change")
		return
	end
	-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [87] 69. Error Block 18 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [87] 69. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [73] 59. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [87.15]
	-- KONSTANTERROR: [73] 59. Error Block 12 end (CF ANALYSIS FAILED)
end
local AdFilter_upvr = require(script.Parent.AdFilter)
function module_upvr._getAdFromAdId(arg1, arg2) -- Line 109
	--[[ Upvalues[2]:
		[1]: AdFilter_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local tonumber_result1 = tonumber(arg2)
	for _, v_2 in AdFilter_upvr:GetAllEnabledAds(), nil do
		if v_2.bloxbiz_ad_id == tonumber_result1 then
			return v_2
		end
	end
	if tonumber_result1 <= -1 then
		return module_2_upvr
	end
end
function module_upvr._getDefaultAnalyticsFromAdFormat(arg1, arg2) -- Line 124
	if arg2 == "3d" then
		return require(script.DefaultAnalytics3d)
	end
end
function module_upvr._getInitialDataStoreValue(arg1, arg2) -- Line 130
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {}
	for _, v_3 in arg2.changesList do
		local tostring_result1 = tostring(v_3[1])
		local any__getAdFromAdId_result1 = module_upvr:_getAdFromAdId(tonumber(tostring_result1))
		if not any__getAdFromAdId_result1 then return end
		if not module[tostring_result1] then
			module[tostring_result1] = {}
		end
		module[tostring_result1] = module_upvr:_getDefaultAnalyticsFromAdFormat(any__getAdFromAdId_result1.ad_format)
	end
	return module
end
function module_upvr._applyChangeToAnalyticsDict(arg1, arg2, arg3) -- Line 152
	return pcall(function() -- Line 153
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
		]]
		local var33 = arg2
		local var34 = arg3[#arg3 - 1]
		for i_4 = 1, #arg3 - 2 do
			var33 = var33[arg3[i_4]]
		end
		if not var33[var34] then
			error("[Super Biz] Missing index when incrementing analytics dict")
		end
		var33[var34] = math.floor((var33[var34] + arg3[#arg3]) * 1000) / 1000
	end)
end
function module_upvr._migrateOldTables(arg1, arg2) -- Line 174
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: var4_upvw (read and write)
	]]
	for i_5, v_4 in arg2 do
		local any__getAdFromAdId_result1_3 = module_upvr:_getAdFromAdId(tonumber(i_5))
		if any__getAdFromAdId_result1_3 then
			var4_upvw(v_4, module_upvr:_getDefaultAnalyticsFromAdFormat(any__getAdFromAdId_result1_3.ad_format))
		end
	end
end
local DataStoreService_upvr = game:GetService("DataStoreService")
local HttpService_upvr = game:GetService("HttpService")
function module_upvr._datastoreUpdateAsync(arg1, arg2) -- Line 186
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: DataStoreService_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: Utils_upvr (readonly)
	]]
	local var40_upvr = module_upvr._updateQueue[arg2]
	table.remove(module_upvr._updateQueue, arg2)
	local changesList_upvr = var40_upvr.changesList
	DataStoreService_upvr:GetDataStore("SUPER_BIZ_ANALYTICS", var40_upvr.dataStoreScope):UpdateAsync(var40_upvr.dataStoreKey, function(arg1_2) -- Line 195
		--[[ Upvalues[5]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: module_upvr (copied, readonly)
			[3]: var40_upvr (readonly)
			[4]: Utils_upvr (copied, readonly)
			[5]: changesList_upvr (readonly)
		]]
		local var47
		if arg1_2 then
			var47 = HttpService_upvr:JSONDecode(arg1_2)
			module_upvr:_migrateOldTables(var47)
		else
			var47 = module_upvr:_getInitialDataStoreValue(var40_upvr)
		end
		Utils_upvr.pprint("[Super Biz] DataStore Analytics: updating current analytics dict")
		Utils_upvr.pprint(var47)
		for _, v_5 in changesList_upvr do
			if not module_upvr:_applyChangeToAnalyticsDict(var47, v_5) then
				Utils_upvr.pprint("[Super Biz] DataStore Analytics: invalid indexing when updating analytics data")
			end
		end
		Utils_upvr.pprint("[Super Biz] DataStore Analytics: updated to new analytics dict")
		Utils_upvr.pprint(var47)
		return HttpService_upvr:JSONEncode(var47)
	end)
end
function module_upvr._consumeQueue(arg1) -- Line 223
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local len = #module_upvr._updateQueue
	if len == 0 then
	else
		for var48 = 1, len do
			module_upvr:_datastoreUpdateAsync(var48)
		end
	end
end
function module_upvr._onServerClose(arg1) -- Line 234
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	game:BindToClose(function() -- Line 235
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		module_upvr:_consumeQueue()
	end)
end
return module_upvr