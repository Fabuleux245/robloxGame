-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:15
-- Luau version 6, Types version 3
-- Time taken: 0.000780 seconds

local tbl_upvr = {
	ABUSE_TYPE_PROFANITY = 3;
	ABUSE_TYPE_PRIVACY_ASKING_FOR_PII = 11;
	ABUSE_TYPE_HARASSMENT = 4;
	ABUSE_TYPE_DATING_AND_ROMANTIC_CONTENT = 7;
	ABUSE_TYPE_CHEAT_AND_EXPLOITS = 25;
	ABUSE_TYPE_SCAMMING = 6;
	ABUSE_TYPE_SEXUAL_CONTENT = 8;
	ABUSE_TYPE_REAL_LIFE_THREATS = 23;
	ABUSE_TYPE_OTHER = 2;
}
local CHAT_PLATFORM_BASE_URL_upvr = require(script:FindFirstAncestor("AppChatNetworking").url.CHAT_PLATFORM_BASE_URL)
return require(script.Parent.RoduxNetworking).POST(script, function(arg1, arg2) -- Line 18
	--[[ Upvalues[2]:
		[1]: CHAT_PLATFORM_BASE_URL_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local module = {}
	local var5
	if 0 < string.len(arg2.comment) then
		var5 = arg2.comment
	else
		var5 = ' '
	end
	module.comment = var5
	var5 = tonumber(arg2.reportedUserId)
	module.reported_user_id = var5
	var5 = tbl_upvr[arg2.reportCategory] or 1
	module.report_category = var5
	var5 = arg2.conversationId
	module.conversation_id = var5
	var5 = arg2.entryPoint
	module.entry_point = var5
	return arg1(CHAT_PLATFORM_BASE_URL_upvr):path("v1"):path("create-chat-abuse-report"):body(module)
end)