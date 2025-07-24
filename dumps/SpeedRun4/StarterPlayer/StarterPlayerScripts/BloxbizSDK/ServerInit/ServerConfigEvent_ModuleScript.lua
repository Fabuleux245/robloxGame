-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:52
-- Luau version 6, Types version 3
-- Time taken: 0.001772 seconds

local BatchHTTP_upvr = require(script.Parent.Parent.BatchHTTP)
local function _(arg1) -- Line 13, Named "queueServerConfig"
	--[[ Upvalues[1]:
		[1]: BatchHTTP_upvr (readonly)
	]]
	local tbl = {
		event_type = "server_config";
	}
	tbl.data = arg1
	table.insert(BatchHTTP_upvr.eventQueue, tbl)
end
local function _(arg1) -- Line 18, Named "isTableEmpty"
	for _, _ in pairs(arg1) do
		return false
	end
	return true
end
local ConfigReader_upvr = require(script.Parent.Parent.ConfigReader)
local InternalConfig_upvr = require(script.Parent.Parent.InternalConfig)
local function getCombinedConfig_upvr() -- Line 26, Named "getCombinedConfig"
	--[[ Upvalues[2]:
		[1]: ConfigReader_upvr (readonly)
		[2]: InternalConfig_upvr (readonly)
	]]
	local module_upvr = {}
	local function _(arg1, arg2) -- Line 30, Named "restrictTypesAndAdd"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		local type_result1 = type(arg2)
		if type(arg1) ~= "string" then
		elseif type_result1 == "boolean" or type_result1 == "number" or type_result1 == "string" then
			module_upvr[arg1] = arg2
		end
	end
	for i_2, v_2 in pairs(ConfigReader_upvr:getFullConfigWithDefaults()) do
		local type_result1_3 = type(v_2)
		if type(i_2) ~= "string" then
		elseif type_result1_3 == "boolean" or type_result1_3 == "number" or type_result1_3 == "string" then
			module_upvr[i_2] = v_2
		end
	end
	for i_3, v_3 in pairs(InternalConfig_upvr) do
		local type_result1_2 = type(v_3)
		if type(i_3) ~= "string" then
		elseif type_result1_2 == "boolean" or type_result1_2 == "number" or type_result1_2 == "string" then
			module_upvr[i_3] = v_3
		end
	end
	return module_upvr
end
local BillboardServer_upvr = require(script.Parent.Parent.BillboardServer)
local Ad3DServer_upvr = require(script.Parent.Parent.Ad3DServer)
local PortalServer_upvr = require(script.Parent.Parent.PortalServer)
local AdRequestStats_upvr = require(script.Parent.Parent.AdRequestStats)
local merge_upvr = require(script.Parent.Parent.Utils).merge
local function sendServerConfigEvent_upvr() -- Line 54, Named "sendServerConfigEvent"
	--[[ Upvalues[7]:
		[1]: getCombinedConfig_upvr (readonly)
		[2]: BillboardServer_upvr (readonly)
		[3]: Ad3DServer_upvr (readonly)
		[4]: PortalServer_upvr (readonly)
		[5]: AdRequestStats_upvr (readonly)
		[6]: merge_upvr (readonly)
		[7]: BatchHTTP_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	({}).timestamp = os.time()
	local pairs_result1, pairs_result2_3, pairs_result3_3 = pairs(BillboardServer_upvr.CentralBillboardServer.BillboardServerInstances)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 16. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 16. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 14. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 14. Error Block 2 end (CF ANALYSIS FAILED)
end
return function() -- Line 69
	--[[ Upvalues[1]:
		[1]: sendServerConfigEvent_upvr (readonly)
	]]
	task.delay(60, sendServerConfigEvent_upvr)
end