-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:44
-- Luau version 6, Types version 3
-- Time taken: 0.000610 seconds

local TextChatService_upvr = game:GetService("TextChatService")
return function() -- Line 3
	--[[ Upvalues[1]:
		[1]: TextChatService_upvr (readonly)
	]]
	local var3
	if TextChatService_upvr.ChatVersion ~= Enum.ChatVersion.LegacyChatService then
		var3 = false
	else
		var3 = true
	end
	if var3 then
		return false
	end
	return true
end