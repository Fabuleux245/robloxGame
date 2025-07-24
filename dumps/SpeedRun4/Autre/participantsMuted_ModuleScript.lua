-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:25
-- Luau version 6, Types version 3
-- Time taken: 0.001182 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Dictionary_upvr = require(Parent.llama).Dictionary
local Actions = ExpChat.Actions
local module = {
	[require(Actions.VoiceParticipantAdded).name] = function(arg1, arg2) -- Line 19
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		local userId = arg2.userId
		return Dictionary_upvr.set(arg1, userId, arg1[userId] or false)
	end;
}
local None_upvr = require(Parent.llama).None
module[require(Actions.VoiceParticipantRemoved).name] = function(arg1, arg2) -- Line 27
	--[[ Upvalues[2]:
		[1]: Dictionary_upvr (readonly)
		[2]: None_upvr (readonly)
	]]
	return Dictionary_upvr.set(arg1, arg2.userId, None_upvr)
end
module[require(Actions.VoiceParticipantToggleMuted).name] = function(arg1, arg2) -- Line 32
	--[[ Upvalues[1]:
		[1]: Dictionary_upvr (readonly)
	]]
	if arg1[arg2.userId] ~= nil then
		return Dictionary_upvr.join(arg1, {
			[arg2.userId] = arg2.isMuted;
		})
	end
	return arg1
end
return require(Parent.Rodux).createReducer({}, module)