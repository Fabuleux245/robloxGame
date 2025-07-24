-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:14
-- Luau version 6, Types version 3
-- Time taken: 0.001002 seconds

local TextChatService_upvr = game:GetService("TextChatService")
local function findTextChannel_upvr(arg1) -- Line 8, Named "findTextChannel"
	--[[ Upvalues[1]:
		[1]: TextChatService_upvr (readonly)
	]]
	local var2
	while not var2 do
		wait()
		var2 = TextChatService_upvr:FindFirstChild(arg1, true)
	end
	return var2
end
local Constants_upvr = require(script:FindFirstAncestor("ChatLineReporting").Common.Constants)
function sendSystemMessage(arg1) -- Line 17
	--[[ Upvalues[2]:
		[1]: findTextChannel_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	if arg1 then
		findTextChannel_upvr(Constants_upvr.ChannelTypes.System):DisplaySystemMessage(arg1)
	end
end
return sendSystemMessage