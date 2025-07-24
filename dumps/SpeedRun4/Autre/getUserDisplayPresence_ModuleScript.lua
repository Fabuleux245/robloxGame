-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:14
-- Luau version 6, Types version 3
-- Time taken: 0.000336 seconds

local getPresenceTextFromUser_upvr = require(script.Parent.getPresenceTextFromUser)
local presenceImageByPresence_upvr = require(script.Parent.presenceImageByPresence)
return function(arg1) -- Line 4
	--[[ Upvalues[2]:
		[1]: getPresenceTextFromUser_upvr (readonly)
		[2]: presenceImageByPresence_upvr (readonly)
	]]
	return {
		text = getPresenceTextFromUser_upvr(arg1);
		image = presenceImageByPresence_upvr[arg1.presence];
	}
end