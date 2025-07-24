-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:02
-- Luau version 6, Types version 3
-- Time taken: 0.000739 seconds

local getCustomizedInvitePromptUserId_upvr = require(script.Parent.getCustomizedInvitePromptUserId)
local GameInviteConstants_upvr = require(script:FindFirstAncestor("GameInvite").GameInviteConstants)
return function(arg1) -- Line 7
	--[[ Upvalues[2]:
		[1]: getCustomizedInvitePromptUserId_upvr (readonly)
		[2]: GameInviteConstants_upvr (readonly)
	]]
	local var5
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var5 = GameInviteConstants_upvr.Triggers.DeveloperSingle
		return var5
	end
	if not getCustomizedInvitePromptUserId_upvr(arg1) or not INLINED() then
		var5 = GameInviteConstants_upvr.Triggers.DeveloperMultiple
	end
	return var5
end