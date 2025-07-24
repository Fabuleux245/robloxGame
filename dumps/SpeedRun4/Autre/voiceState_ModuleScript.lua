-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:04
-- Luau version 6, Types version 3
-- Time taken: 0.002745 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local var3_upvw
if require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Flags.FFlagEnableVoiceChatStorybookFix)() then
	var3_upvw = require(CorePackages.Workspace.Packages.VoiceChat).Constants.VOICE_STATE
else
	var3_upvw = require(script.Parent.Parent.VoiceChatServiceManager).default.VOICE_STATE
end
return require(CorePackages.Packages.Rodux).createReducer({}, {
	[require(script.Parent.Parent.Actions.VoiceEnabledChanged).name] = function(arg1, arg2) -- Line 26
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			voiceEnabled = arg2.enabled;
		})
	end;
	[require(script.Parent.Parent.Actions.ParticipantAdded).name] = function(arg1, arg2) -- Line 32
		--[[ Upvalues[2]:
			[1]: var3_upvw (read and write)
			[2]: Cryo_upvr (readonly)
		]]
		local userId = arg2.userId
		local var9 = arg1[userId]
		if not var9 then
			var9 = var3_upvw.HIDDEN
		end
		return Cryo_upvr.Dictionary.join(arg1, {
			[userId] = var9;
		})
	end;
	[require(script.Parent.Parent.Actions.ParticipantRemoved).name] = function(arg1, arg2) -- Line 42
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.userId] = Cryo_upvr.None;
		})
	end;
	[require(script.Parent.Parent.Actions.ParticipantsChanged).name] = function(arg1, arg2) -- Line 49
		--[[ Upvalues[1]:
			[1]: var3_upvw (read and write)
		]]
		local clone = table.clone(arg1)
		for i, v in arg2.newParticipants do
			local INACTIVE = var3_upvw.INACTIVE
			if not v.subscriptionCompleted then
				INACTIVE = var3_upvw.CONNECTING
			elseif v.isMutedLocally then
				INACTIVE = var3_upvw.LOCAL_MUTED
			elseif v.isMuted then
				INACTIVE = var3_upvw.MUTED
			elseif v.isSignalActive then
				INACTIVE = var3_upvw.TALKING
			end
			clone[tostring(i)] = INACTIVE
		end
		return clone
	end;
	[require(script.Parent.Parent.Actions.VoiceStateChanged).name] = function(arg1, arg2) -- Line 69
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		if arg1[arg2.userId] then
			return Cryo_upvr.Dictionary.join(arg1, {
				[arg2.userId] = arg2.newState;
			})
		end
		return arg1
	end;
})