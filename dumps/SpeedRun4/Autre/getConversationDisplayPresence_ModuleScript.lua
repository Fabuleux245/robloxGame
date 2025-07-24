-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:47
-- Luau version 6, Types version 3
-- Time taken: 0.001385 seconds

local User = script:FindFirstAncestor("SocialLibraries").User
local getOtherParticipant_upvr = require(script.Parent.getOtherParticipant)
local presenceImageByPresence_upvr = require(User.presenceImageByPresence)
local getPresenceTextFromUser_upvr = require(User.getPresenceTextFromUser)
return function(arg1, arg2) -- Line 8
	--[[ Upvalues[3]:
		[1]: getOtherParticipant_upvr (readonly)
		[2]: presenceImageByPresence_upvr (readonly)
		[3]: getPresenceTextFromUser_upvr (readonly)
	]]
	if arg2.conversationType == "OneToOneConversation" then
		local getOtherParticipant_upvr_result1_2 = getOtherParticipant_upvr(arg1, arg2.participants)
		if getOtherParticipant_upvr_result1_2 then
			local var10 = arg1.Users[getOtherParticipant_upvr_result1_2]
			if var10 then
				return {
					image = presenceImageByPresence_upvr[var10.presence];
					text = getPresenceTextFromUser_upvr(var10);
				}
			end
		end
	end
	return nil
end