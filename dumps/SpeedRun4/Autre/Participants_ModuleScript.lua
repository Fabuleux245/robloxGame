-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:24
-- Luau version 6, Types version 3
-- Time taken: 0.001412 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Dictionary_upvr = require(Parent.llama).Dictionary
local Actions = ExpChat.Actions
local module = {
	[require(Actions.VoiceParticipantAdded).name] = function(arg1, arg2) -- Line 22
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		local userId = arg2.userId
		return Dictionary_upvr.join(arg1, {
			[userId] = arg1[userId] or "Hidden";
		})
	end;
}
local None_upvr = require(Parent.llama).None
module[require(Actions.VoiceParticipantRemoved).name] = function(arg1, arg2) -- Line 32
	--[[ Upvalues[2]:
		[1]: Dictionary_upvr (readonly)
		[2]: None_upvr (readonly)
	]]
	return Dictionary_upvr.join(arg1, {
		[arg2.userId] = None_upvr;
	})
end
local VOICE_STATE_upvr = require(Parent.VoiceChat).Constants.VOICE_STATE
module[require(Actions.VoiceParticipantsChanged).name] = function(arg1, arg2) -- Line 39
	--[[ Upvalues[1]:
		[1]: VOICE_STATE_upvr (readonly)
	]]
	local clone = table.clone(arg1)
	for i, v in arg2.newParticipants do
		local INACTIVE = VOICE_STATE_upvr.INACTIVE
		if not v.subscriptionCompleted then
			INACTIVE = VOICE_STATE_upvr.CONNECTING
		elseif v.isMutedLocally then
			INACTIVE = VOICE_STATE_upvr.LOCAL_MUTED
		elseif v.isMuted then
			INACTIVE = VOICE_STATE_upvr.MUTED
		elseif v.isSignalActive then
			INACTIVE = VOICE_STATE_upvr.TALKING
		end
		clone[tostring(i)] = INACTIVE
	end
	return clone
end
module[require(Actions.VoiceStateChanged).name] = function(arg1, arg2) -- Line 59
	--[[ Upvalues[1]:
		[1]: Dictionary_upvr (readonly)
	]]
	if arg1[arg2.userId] then
		return Dictionary_upvr.join(arg1, {
			[arg2.userId] = arg2.newState;
		})
	end
	return arg1
end
return require(Parent.Rodux).createReducer({}, module)