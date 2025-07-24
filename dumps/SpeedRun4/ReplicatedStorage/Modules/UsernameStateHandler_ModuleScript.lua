-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:49
-- Luau version 6, Types version 3
-- Time taken: 0.004301 seconds

local module_upvr = {}
local Players_upvr = game:GetService("Players")
local tbl_upvr = {
	CachedStates_ByUserId = {};
}
local function FetchRemoteUsername_upvr(arg1) -- Line 36, Named "FetchRemoteUsername"
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local tbl_2 = {}
	arg1._Token = tbl_2
	local pcall_result1, pcall_result2_2 = pcall(Players_upvr.GetNameFromUserIdAsync, Players_upvr, arg1.UserId)
	if arg1._Token == tbl_2 then
		arg1._Token = nil
		if pcall_result1 and pcall_result2_2 then
			arg1.IsAvailable = true
			arg1.Username = pcall_result2_2
			arg1.Changed:Fire(arg1)
		end
	end
end
local function _(arg1, arg2) -- Line 64, Named "UpdateFromPlayer"
	arg1._Token = nil
	arg1.IsAvailable = true
	arg1.Player = arg2
	arg1.DisplayName = arg2.DisplayName
	arg1.Username = arg2.Name
	arg1.Changed:Fire(arg1)
end
local module_upvr_2 = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Signal"))
function module_upvr.Fetch(arg1) -- Line 81
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: Players_upvr (readonly)
		[4]: FetchRemoteUsername_upvr (readonly)
	]]
	assert(arg1, "Missing UserId")
	local var13
	if not var13 then
		local tbl_3 = {}
		tbl_3.UserId = arg1
		tbl_3.IsAvailable = false
		tbl_3.Changed = module_upvr_2.new()
		local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(arg1)
		if any_GetPlayerByUserId_result1 then
			tbl_3._Token = nil
			tbl_3.IsAvailable = true
			tbl_3.Player = any_GetPlayerByUserId_result1
			tbl_3.DisplayName = any_GetPlayerByUserId_result1.DisplayName
			tbl_3.Username = any_GetPlayerByUserId_result1.Name
			tbl_3.Changed:Fire(tbl_3)
		end
		var13 = tbl_3
	end
	if not var13.IsAvailable and not var13._Token then
		task.spawn(FetchRemoteUsername_upvr, var13)
	end
	return var13
end
function module_upvr.Read(arg1, arg2, arg3) -- Line 114
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 17. Error Block 8 start (CF ANALYSIS FAILED)
	do
		return '@'..nil
	end
	-- KONSTANTERROR: [22] 17. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 21. Error Block 14 start (CF ANALYSIS FAILED)
	if arg2 then
		return '#'..arg1.UserId
	end
	-- KONSTANTERROR: [26] 21. Error Block 14 end (CF ANALYSIS FAILED)
end
function module_upvr.Destroy(arg1) -- Line 154
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr.CachedStates_ByUserId[arg1.UserId] = nil
	arg1._Token = nil
	arg1.IsAvailable = false
	arg1.Player = nil
	arg1.DisplayName = nil
	arg1.Username = nil
	arg1.Changed:DisconnectAll()
end
function module_upvr.Remove(arg1) -- Line 172
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var16 = tbl_upvr.CachedStates_ByUserId[arg1]
	if var16 then
		module_upvr.Destroy(var16)
	end
end
Players_upvr.PlayerAdded:Connect(function(arg1) -- Line 186, Named "PlayerAdded"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var17 = tbl_upvr.CachedStates_ByUserId[arg1.UserId]
	if var17 then
		var17._Token = nil
		var17.IsAvailable = true
		var17.Player = arg1
		var17.DisplayName = arg1.DisplayName
		var17.Username = arg1.Name
		var17.Changed:Fire(var17)
	end
end)
for _, v in Players_upvr:GetPlayers() do
	local var21 = tbl_upvr.CachedStates_ByUserId[v.UserId]
	if var21 then
		var21._Token = nil
		var21.IsAvailable = true
		var21.Player = v
		var21.DisplayName = v.DisplayName
		var21.Username = v.Name
		var21.Changed:Fire(var21)
	end
end
Players_upvr.PlayerRemoving:Connect(function(arg1) -- Line 200, Named "PlayerRemoving"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var22 = tbl_upvr.CachedStates_ByUserId[arg1.UserId]
	if var22 and var22.Player == arg1 then
		var22.Player = nil
	end
end)
return module_upvr