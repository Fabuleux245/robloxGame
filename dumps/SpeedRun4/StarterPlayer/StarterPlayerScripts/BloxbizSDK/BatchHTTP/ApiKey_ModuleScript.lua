-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:08
-- Luau version 6, Types version 3
-- Time taken: 0.001336 seconds

local any_GetDataStore_result1_upvr = game:GetService("DataStoreService"):GetDataStore("BLOXBIZ_SETTINGS")
local var2_upvw
local module_upvr = {
	lastFetch = 0;
}
local function updateLocalApiKey_upvr() -- Line 15, Named "updateLocalApiKey"
	--[[ Upvalues[3]:
		[1]: any_GetDataStore_result1_upvr (readonly)
		[2]: var2_upvw (read and write)
		[3]: module_upvr (readonly)
	]]
	local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 16
		--[[ Upvalues[1]:
			[1]: any_GetDataStore_result1_upvr (copied, readonly)
		]]
		return any_GetDataStore_result1_upvr:GetAsync("API_KEY")
	end)
	if pcall_result1_2 then
		var2_upvw = pcall_result2_2 or "empty"
		module_upvr.lastFetch = tick()
	end
end
local ServerScriptService_upvr = game:GetService("ServerScriptService")
local var8_upvw = false
function module_upvr.getApiKey() -- Line 27
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: updateLocalApiKey_upvr (readonly)
		[3]: ServerScriptService_upvr (readonly)
		[4]: var2_upvw (read and write)
		[5]: var8_upvw (read and write)
	]]
	local var9
	if 300 >= tick() - module_upvr.lastFetch then
		var9 = false
	else
		var9 = true
	end
	if var9 then
		task.spawn(updateLocalApiKey_upvr)
	end
	local InternalConfig = require(ServerScriptService_upvr.BloxbizSDK.InternalConfig)
	if InternalConfig.USE_INTERNAL_CONFIG_API_KEY then
		return InternalConfig.API_KEY
	end
	local var11 = var2_upvw
	if not var11 then
		var11 = InternalConfig.API_KEY
	end
	if var11 == "empty" or not var11 then
		if not var8_upvw then
			warn("[Super Biz] You are using the Super Biz SDK without an API key! This may break certain SDK features.")
			warn("[Super Biz] Use the Super Biz Plugin to set your API key.")
			warn("[Super Biz] https://docs.superbiz.gg/sdk-setup-updates")
			var8_upvw = true
		end
	end
	return var11
end
local pcall_result1, pcall_result2 = pcall(function() -- Line 16
	--[[ Upvalues[1]:
		[1]: any_GetDataStore_result1_upvr (readonly)
	]]
	return any_GetDataStore_result1_upvr:GetAsync("API_KEY")
end)
if pcall_result1 then
	var2_upvw = pcall_result2 or "empty"
	module_upvr.lastFetch = tick()
end
return module_upvr