-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:28
-- Luau version 6, Types version 3
-- Time taken: 0.004209 seconds

local Players_upvr = game:GetService("Players")
local any_GetDataStore_result1_upvr = game:GetService("DataStoreService"):GetDataStore("SUPER_BIZ_PLR_ANALYTICS_HISTORY")
local Utils_upvr = require(script.Parent.Parent.Utils)
local module_upvr = {
	playerHistoryCache = {};
}
local function _() -- Line 13, Named "getUTCDate"
	return os.date("!%Y-%m-%d", os.time())
end
local function _(arg1) -- Line 17, Named "getDataStoreKey"
	return os.date("!%Y-%m-%d", os.time())..'_'..arg1
end
function module_upvr._getDataTemplate(arg1) -- Line 21
	return {
		billboardReach = {};
		["3dAdUniqueChats"] = {};
		["3dAdUniqueResponse"] = {};
	}
end
function module_upvr._fetchPlayerHistory(arg1, arg2) -- Line 35
	--[[ Upvalues[3]:
		[1]: any_GetDataStore_result1_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local pcall_result1_2, pcall_result2 = pcall(function() -- Line 36
		--[[ Upvalues[2]:
			[1]: any_GetDataStore_result1_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		return any_GetDataStore_result1_upvr:GetAsync(os.date("!%Y-%m-%d", os.time())..'_'..arg2)
	end)
	local var9 = pcall_result1_2
	if var9 then
		if pcall_result2 ~= nil then
			var9 = false
		else
			var9 = true
			local var10
		end
	end
	if not pcall_result1_2 then
		Utils_upvr.pprint("[SuperBiz] PlayerAnalyticsHistory DataStore fetch failure: "..var10)
		var10 = module_upvr:_getDataTemplate()
	elseif var9 then
		var10 = module_upvr:_getDataTemplate()
	end
	module_upvr.playerHistoryCache[arg2] = var10
	return pcall_result1_2
end
function module_upvr.getPlayerHistory(arg1, arg2) -- Line 54
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr:_waitForDataReady(arg2)
	return module_upvr.playerHistoryCache[arg2]
end
function module_upvr._savePlayerHistory(arg1, arg2) -- Line 60
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: any_GetDataStore_result1_upvr (readonly)
		[3]: Utils_upvr (readonly)
	]]
	local var11_upvr = module_upvr.playerHistoryCache[arg2]
	if not var11_upvr then return end
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 67
		--[[ Upvalues[3]:
			[1]: any_GetDataStore_result1_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: var11_upvr (readonly)
		]]
		return any_GetDataStore_result1_upvr:SetAsync(os.date("!%Y-%m-%d", os.time())..'_'..arg2, var11_upvr)
	end)
	if not pcall_result1 then
		Utils_upvr.pprint("[SuperBiz] PlayerAnalyticsHistory DataStore save failure: "..pcall_result2_2)
	end
	module_upvr.playerHistoryCache[arg2] = nil
	return pcall_result1
end
local RunService_upvr = game:GetService("RunService")
function module_upvr._waitForDataReady(arg1, arg2) -- Line 80
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	local var16
	while not module_upvr.playerHistoryCache[arg2] and not var16 do
		if 10 >= tick() - tick() then
			var16 = false
		else
			var16 = true
		end
		RunService_upvr.Stepped:Wait()
	end
	if var16 then
		module_upvr.playerHistoryCache[arg2] = module_upvr:_getDataTemplate()
	end
end
Players_upvr.PlayerAdded:Connect(function(arg1) -- Line 97
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr:_fetchPlayerHistory(arg1.UserId)
end)
Players_upvr.PlayerRemoving:Connect(function(arg1) -- Line 101
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr:_savePlayerHistory(arg1.UserId)
end)
game:BindToClose(function() -- Line 105
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	for _, v in Players_upvr:GetPlayers() do
		module_upvr:_savePlayerHistory(v.UserId)
	end
end)
return module_upvr