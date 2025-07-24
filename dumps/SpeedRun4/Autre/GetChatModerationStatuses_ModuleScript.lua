-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:18
-- Luau version 6, Types version 3
-- Time taken: 0.000591 seconds

local CHAT_PLATFORM_BASE_URL_upvr = require(script:FindFirstAncestor("AppChatNetworking").url.CHAT_PLATFORM_BASE_URL)
return require(script.Parent.RoduxNetworking).POST(script, function(arg1, arg2) -- Line 6
	--[[ Upvalues[1]:
		[1]: CHAT_PLATFORM_BASE_URL_upvr (readonly)
	]]
	local var4
	if not var4 then
		var4 = {}
	end
	;({}).ids = var4
	local var5
	if arg2 and 0 < #arg2 then
		var4 = arg2
		var5 = var5:setStatusIds(var4)
	end
	return var5
end)