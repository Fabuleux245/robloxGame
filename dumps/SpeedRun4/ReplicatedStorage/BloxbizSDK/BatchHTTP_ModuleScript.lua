-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:29
-- Luau version 6, Types version 3
-- Time taken: 0.004809 seconds

local module_upvr = {}
local HttpService_upvr = game:GetService("HttpService")
local InternalConfig = require(script.Parent.InternalConfig)
module_upvr.eventQueue = {}
function module_upvr.getAlphanumericGuidWithLength(arg1) -- Line 20
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	return HttpService_upvr:GenerateGUID(false):gsub('-', ""):sub(1, arg1)
end
function module_upvr.getNewUrl(arg1) -- Line 28
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var4
	if arg1:sub(1, 1) == '/' then
		var4 = var4:sub(2)
	end
	return require(script.BaseUrl).getBaseUrl()..'/'..var4.."?d={GUID}":gsub("{GAME_ID}", tostring(game.GameId), 1):gsub("{GUID}", module_upvr.getAlphanumericGuidWithLength(12), 1):gsub("{GUID}", module_upvr.getAlphanumericGuidWithLength(12), 1)
end
function module_upvr.httpSendEvents(arg1) -- Line 44
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local any_getNewUrl_result1_upvr = module_upvr.getNewUrl("events")
	local any_JSONEncode_result1_2_upvr = HttpService_upvr:JSONEncode(arg1)
	local pcall_result1_2, pcall_result2_3_upvr = pcall(function() -- Line 47
		--[[ Upvalues[4]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvr (readonly)
			[3]: any_JSONEncode_result1_2_upvr (readonly)
			[4]: module_upvr (copied, readonly)
		]]
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvr, any_JSONEncode_result1_2_upvr, nil, nil, module_upvr:getGeneralRequestHeaders())
	end)
	local var14
	if not pcall_result1_2 then
		var14 = "401"
		if string.find(pcall_result2_3_upvr, var14) then
			warn("[Super Biz] API key auth failed. Ensure you are on latest plugin version and have set your API key via the plugin.")
		else
			error(pcall_result2_3_upvr)
		end
	end
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 58
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: pcall_result2_3_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(pcall_result2_3_upvr)
	end)
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var14 = pcall_result2_2
		return var14
	end
	if not pcall_result1 or not INLINED() then
		var14 = {}
	end
	local var18 = var14
	var14 = var18.errors
	if var14 then
		var14 = ipairs(var18.errors)
		for _, v in ipairs(var18.errors) do
			warn("[Super Biz] "..v.message)
		end
	end
end
local any_GetDataStore_result1_upvr = game:GetService("DataStoreService"):GetDataStore("BLOXBIZ_EVENTS")
function module_upvr.dataStoreSendEvents(arg1) -- Line 71
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: any_GetDataStore_result1_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local tostring_result1 = tostring(game.JobId)
	if tostring_result1 == "" then
		tostring_result1 = "STUDIO"
	end
	any_GetDataStore_result1_upvr:SetAsync(DateTime.now():ToIsoDate()..'_'..string.sub(tostring_result1, #tostring_result1 - 12, #tostring_result1)..'_'..module_upvr.getAlphanumericGuidWithLength(12), HttpService_upvr:JSONEncode(arg1))
end
function module_upvr.getGeneralRequestHeaders() -- Line 87
	return {
		["API-KEY"] = require(script.ApiKey).getApiKey();
	}
end
local MAX_EVENT_BATCH_upvr = InternalConfig.MAX_EVENT_BATCH
local MAX_EVENT_BATCH_SIZE_upvr = InternalConfig.MAX_EVENT_BATCH_SIZE
local Utils_upvr = require(script.Parent.Utils)
local ConfigReader_upvr = require(script.Parent.ConfigReader)
local MAX_RETRY_EVENTS_upvr = InternalConfig.MAX_RETRY_EVENTS
function module_upvr.batchSendEvents() -- Line 93
	--[[ Upvalues[7]:
		[1]: MAX_EVENT_BATCH_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: MAX_EVENT_BATCH_SIZE_upvr (readonly)
		[5]: Utils_upvr (readonly)
		[6]: ConfigReader_upvr (readonly)
		[7]: MAX_RETRY_EVENTS_upvr (readonly)
	]]
	local tbl_upvr = {}
	local var34
	for _ = 1, MAX_EVENT_BATCH_upvr do
		local popped = table.remove(module_upvr.eventQueue, 1)
		if not popped then break end
		local any_JSONEncode_result1 = HttpService_upvr:JSONEncode(popped)
		if MAX_EVENT_BATCH_SIZE_upvr >= 0 + #any_JSONEncode_result1 then
			any_JSONEncode_result1 = false
		else
			any_JSONEncode_result1 = true
		end
		if any_JSONEncode_result1 then return end
		table.insert(tbl_upvr, popped)
		var34 += 1
	end
	if var34 == 0 then
	else
		Utils_upvr.pprint("[Super Biz] Batched "..var34.." events")
		if ConfigReader_upvr:read("UseDataStoresNotHttp") then
			Utils_upvr.callWithRetry(function() -- Line 124
				--[[ Upvalues[2]:
					[1]: module_upvr (copied, readonly)
					[2]: tbl_upvr (readonly)
				]]
				module_upvr.dataStoreSendEvents(tbl_upvr)
			end, MAX_RETRY_EVENTS_upvr)
			return
		end
		Utils_upvr.callWithRetry(function() -- Line 128
			--[[ Upvalues[2]:
				[1]: module_upvr (copied, readonly)
				[2]: tbl_upvr (readonly)
			]]
			module_upvr.httpSendEvents(tbl_upvr)
		end, MAX_RETRY_EVENTS_upvr)
	end
end
local BATCH_EVENTS_WAIT_TIME_upvr = InternalConfig.BATCH_EVENTS_WAIT_TIME
function module_upvr.backgroundProcessEvents() -- Line 134
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: BATCH_EVENTS_WAIT_TIME_upvr (readonly)
	]]
	while true do
		module_upvr.batchSendEvents()
		task.wait(BATCH_EVENTS_WAIT_TIME_upvr)
	end
end
local AdRequestStats_upvr = require(script.Parent.AdRequestStats)
function module_upvr.request(arg1, arg2, arg3, arg4) -- Line 142
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local var46
	if not string.find(arg2, "://") then
		var46 = module_upvr.getNewUrl(var46)
	end
	local var47 = arg3
	if not var47 then
		var47 = {}
	end
	local any_getGeneralRequestHeaders_result1 = module_upvr.getGeneralRequestHeaders()
	any_getGeneralRequestHeaders_result1["Content-Type"] = "application/json"
	for i_3, v_2 in pairs(var47) do
		AdRequestStats_upvr:getGameStats()[i_3] = v_2
		local var53
	end
	local any_RequestAsync_result1_upvr = HttpService_upvr:RequestAsync({
		Method = string.upper(arg1);
		Url = var46;
		Headers = any_getGeneralRequestHeaders_result1;
		Body = HttpService_upvr:JSONEncode(var53);
	})
	local pcall_result1_3, pcall_result2 = pcall(function() -- Line 165
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_RequestAsync_result1_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(any_RequestAsync_result1_upvr.Body)
	end)
	if not pcall_result1_3 then
		if not arg4 then
			warn(pcall_result2)
		end
		return false, {}
	end
	if not any_RequestAsync_result1_upvr.Success or pcall_result2.status ~= "ok" then
		if not arg4 then
			warn(pcall_result2.message or pcall_result2)
		end
		return false, pcall_result2
	end
	return true, pcall_result2
end
function module_upvr.init() -- Line 188
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	task.spawn(module_upvr.backgroundProcessEvents)
end
game:BindToClose(function() -- Line 192
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var60
	if #module_upvr.eventQueue ~= 0 then
		var60 = false
	else
		var60 = true
	end
	while not var60 do
		module_upvr.batchSendEvents()
		if #module_upvr.eventQueue ~= 0 then
			var60 = false
		else
			var60 = true
		end
	end
end)
return module_upvr