-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:01
-- Luau version 6, Types version 3
-- Time taken: 0.000506 seconds

local GameInvite = script:FindFirstAncestor("GameInvite")
local GetCanSendAndCanCustomizeInvites_upvr = require(GameInvite.Requests.GetCanSendAndCanCustomizeInvites)
local networkImpl_upvr = require(GameInvite.GameInviteDependencies).networkImpl
return function(arg1, arg2) -- Line 9
	--[[ Upvalues[2]:
		[1]: GetCanSendAndCanCustomizeInvites_upvr (readonly)
		[2]: networkImpl_upvr (readonly)
	]]
	local any_await_result1, any_await_result2 = GetCanSendAndCanCustomizeInvites_upvr(networkImpl_upvr, arg1, arg2):await()
	if any_await_result1 and any_await_result2 and any_await_result2.responseBody then
		return any_await_result2.responseBody.canPrompt or false, any_await_result2.responseBody.canCustomize or false
	end
	return false, false
end