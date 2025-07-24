-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:30
-- Luau version 6, Types version 3
-- Time taken: 0.001739 seconds

local any_GetDataStore_result1_upvr = game:GetService("DataStoreService"):GetDataStore("BLOXBIZ_SETTINGS")
local var2_upvw
local module_upvr = {
	lastFetch = 0;
}
local function updateLocalBaseUrl_upvr() -- Line 12, Named "updateLocalBaseUrl"
	--[[ Upvalues[3]:
		[1]: any_GetDataStore_result1_upvr (readonly)
		[2]: var2_upvw (read and write)
		[3]: module_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 13
		--[[ Upvalues[1]:
			[1]: any_GetDataStore_result1_upvr (copied, readonly)
		]]
		return any_GetDataStore_result1_upvr:GetAsync("BASE_URL")
	end)
	if pcall_result1 then
		var2_upvw = pcall_result2
		module_upvr.lastFetch = tick()
	end
end
local ServerScriptService_upvr = game:GetService("ServerScriptService")
function module_upvr.getBaseUrl() -- Line 23
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: updateLocalBaseUrl_upvr (readonly)
		[3]: ServerScriptService_upvr (readonly)
		[4]: var2_upvw (read and write)
	]]
	local var8
	if 300 >= tick() - module_upvr.lastFetch then
		var8 = false
	else
		var8 = true
	end
	if var8 then
		task.spawn(updateLocalBaseUrl_upvr)
	end
	local InternalConfig = require(ServerScriptService_upvr.BloxbizSDK.InternalConfig)
	if InternalConfig.USE_INTERNAL_CONFIG_BASE_URL then
		return InternalConfig.BASE_URL
	end
	local var10 = var2_upvw
	if not var10 then
		var10 = InternalConfig.BASE_URL
	end
	return var10
end
local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 13
	--[[ Upvalues[1]:
		[1]: any_GetDataStore_result1_upvr (readonly)
	]]
	return any_GetDataStore_result1_upvr:GetAsync("BASE_URL")
end)
if pcall_result1_2 then
	var2_upvw = pcall_result2_2
	module_upvr.lastFetch = tick()
end
return module_upvr