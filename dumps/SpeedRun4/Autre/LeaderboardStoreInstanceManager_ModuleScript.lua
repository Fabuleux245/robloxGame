-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:42
-- Luau version 6, Types version 3
-- Time taken: 0.000614 seconds

local Parent = script.Parent.Parent.Parent
local any_createSignal_result1, any_createSignal_result2 = require(Parent.Signals).createSignal(nil)
local var4_upvw = any_createSignal_result1
local var5_upvw = any_createSignal_result2
local module = {}
local any_createLeaderboardStore_result1_upvr = require(Parent.LeaderboardStore).createLeaderboardStore()
function module.createLeaderboardStoreInstance() -- Line 13
	--[[ Upvalues[2]:
		[1]: var5_upvw (read and write)
		[2]: any_createLeaderboardStore_result1_upvr (readonly)
	]]
	var5_upvw(any_createLeaderboardStore_result1_upvr())
end
module.getLeaderboardStoreInstance = var4_upvw
function module.cleanUpInstance() -- Line 17
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: var5_upvw (read and write)
	]]
	local var4_result1 = var4_upvw(false)
	if var4_result1 ~= nil then
		var4_result1.cleanUp()
		var5_upvw(nil)
	end
end
return module