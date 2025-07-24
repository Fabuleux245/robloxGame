-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:44
-- Luau version 6, Types version 3
-- Time taken: 0.000569 seconds

local httpRequest_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Common.httpRequest)
local HttpRbxApiService_upvr = game:GetService("HttpRbxApiService")
local GetCanSendAndCanCustomizeInvites_upvr = require(game:GetService("CorePackages").Workspace.Packages.GameInvite).GetCanSendAndCanCustomizeInvites
return function(arg1, arg2) -- Line 12
	--[[ Upvalues[3]:
		[1]: httpRequest_upvr (readonly)
		[2]: HttpRbxApiService_upvr (readonly)
		[3]: GetCanSendAndCanCustomizeInvites_upvr (readonly)
	]]
	local any_await_result1, any_await_result2 = GetCanSendAndCanCustomizeInvites_upvr(httpRequest_upvr(HttpRbxApiService_upvr), arg1, arg2):await()
	if any_await_result1 and any_await_result2 and any_await_result2.responseBody then
		return any_await_result2.responseBody.canPrompt, any_await_result2.responseBody.canCustomize
	end
	return false, false
end