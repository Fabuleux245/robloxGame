-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:01
-- Luau version 6, Types version 3
-- Time taken: 0.002714 seconds

local Players_upvr = game:GetService("Players")
local Utils_upvr = require(script.Parent.Parent.Utils)
local tbl_upvr = {
	gender = "Unknown";
	tier = "Tier1";
}
local module_upvr = {
	InferredData = {};
}
local merge_upvr = Utils_upvr.merge
local HttpService_upvr = game:GetService("HttpService")
function module_upvr.Fetch(arg1, arg2) -- Line 19
	--[[ Upvalues[6]:
		[1]: Utils_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: merge_upvr (readonly)
		[5]: HttpService_upvr (readonly)
		[6]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local function var11() -- Line 20
		--[[ Upvalues[5]:
			[1]: Players_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: tbl_upvr (copied, readonly)
			[4]: merge_upvr (copied, readonly)
			[5]: HttpService_upvr (copied, readonly)
		]]
		local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(arg2)
		local var14 = any_GetPlayerByUserId_result1
		if var14 then
			var14 = require(script.Parent.Parent.AdRequestStats):getPlayerStats(any_GetPlayerByUserId_result1)
		end
		local var15 = var14
		if var15 then
			var15 = require(script.Parent.Parent.AdRequestStats):getClientPlayerStats(any_GetPlayerByUserId_result1)
		end
		if not any_GetPlayerByUserId_result1 then
			return {
				success = true;
				data = tbl_upvr;
			}
		end
		local module = {}
		module.player_id = arg2
		return HttpService_upvr:JSONDecode(HttpService_upvr:PostAsync(require(script.Parent.Parent.BatchHTTP).getNewUrl("player"), HttpService_upvr:JSONEncode(merge_upvr(merge_upvr(merge_upvr(module, var14), require(script.Parent.Parent.AdRequestStats):getGameStats()), var15))))
	end
	local any_callWithRetry_result1 = Utils_upvr.callWithRetry(var11, 5)
	var11 = any_callWithRetry_result1
	local var19 = var11
	if var19 then
		var19 = any_callWithRetry_result1.success
	end
	if var19 then
		local data = any_callWithRetry_result1.data
		if not data then
			data = tbl_upvr
		end
	else
		Utils_upvr.pprint("[SuperBiz] Player profile fetch failure")
	end
	module_upvr.InferredData[arg2] = tbl_upvr
	return var19
end
local RunService_upvr = game:GetService("RunService")
function module_upvr.WaitForDataReady(arg1, arg2) -- Line 64
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	local var22
	while not module_upvr.InferredData[arg2] and not var22 do
		if 10 >= tick() - tick() then
			var22 = false
		else
			var22 = true
		end
		RunService_upvr.Stepped:Wait()
	end
	if var22 then
		module_upvr.InferredData[arg2] = tbl_upvr
	end
end
function module_upvr.Get(arg1, arg2) -- Line 80
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if not Players_upvr:GetPlayerByUserId(arg2) then
		module_upvr:Fetch(arg2)
	end
	module_upvr:WaitForDataReady(arg2)
	return module_upvr.InferredData[arg2]
end
Players_upvr.PlayerAdded:Connect(function(arg1) -- Line 90
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr:Fetch(arg1.UserId)
end)
for _, v in pairs(game.Players:GetPlayers()) do
	module_upvr:Fetch(v.UserId)
end
return module_upvr