-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:57
-- Luau version 6, Types version 3
-- Time taken: 0.000723 seconds

game:DefineFastFlag("LuaAppExperienceJoinIdempotencyKey", false)
local HttpService_upvr = game:GetService("HttpService")
local Url_upvr = require(script:FindFirstAncestor("GameInvite").Parent.Http).Url
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 9
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: Url_upvr (readonly)
	]]
	local tbl = {}
	tbl.recipientUserId = arg2
	tbl.inviteMessageId = arg5
	tbl.placeId = arg3
	tbl.launchData = arg6
	tbl.trigger = arg4
	local var5
	if game:GetFastFlag("LuaAppExperienceJoinIdempotencyKey") then
		var5 = HttpService_upvr:GenerateGUID(false)
	else
		var5 = nil
	end
	tbl.idempotencyKey = var5
	var5 = Url_upvr.APIS_URL
	var5 = string.format("%snotifications/v1/send-experience-invite", var5)
	return arg1(var5, "POST", {
		postBody = HttpService_upvr:JSONEncode(tbl);
	})
end