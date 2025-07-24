-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:47
-- Luau version 6, Types version 3
-- Time taken: 0.001121 seconds

local HttpService_upvr = game:GetService("HttpService")
local SquadPromptType_upvr = require(script:FindFirstAncestor("Squads").dependencies).SquadsCore.Enums.SquadPromptType
return function(arg1) -- Line 8
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: SquadPromptType_upvr (readonly)
	]]
	return function(arg1_2) -- Line 16
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: HttpService_upvr (copied, readonly)
			[3]: SquadPromptType_upvr (copied, readonly)
		]]
		return arg1.squadExternalContext.inviteToParentChannel(arg1.dispatch, arg1.parentChannel, arg1.userIds):andThen(function(arg1_3) -- Line 19
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			if arg1.onSuccessCallback then
				arg1.onSuccessCallback(arg1_3)
			end
		end):catch(function(arg1_4) -- Line 24
			--[[ Upvalues[4]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: SquadPromptType_upvr (copied, readonly)
			]]
			local pcall_result1, pcall_result2 = pcall(function() -- Line 25
				--[[ Upvalues[2]:
					[1]: HttpService_upvr (copied, readonly)
					[2]: arg1_4 (readonly)
				]]
				return HttpService_upvr:JSONDecode(arg1_4.Body)
			end)
			local tbl = {}
			local var11 = true
			tbl.hideCancelButton = var11
			if pcall_result1 and pcall_result2 and pcall_result2.reason_code == "participant_chat_disabled" then
				var11 = SquadPromptType_upvr.ParticipantChatDisabled
			else
				var11 = SquadPromptType_upvr.Error
			end
			tbl.promptType = var11
			arg1.squadExternalContext.setSquadPrompt(arg1_2, tbl)
			if arg1.onErrorCallback then
				arg1.onErrorCallback()
			end
		end)
	end
end