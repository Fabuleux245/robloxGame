-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:40
-- Luau version 6, Types version 3
-- Time taken: 0.001262 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local SquadsCore = require(Parent.SquadsCore)
local SetSquadPrompt_upvr = SquadsCore.Actions.SetSquadPrompt
local React_upvr = require(Parent.React)
local SquadCoordinationExperienceJoinExperimentation_upvr = require(Parent.SocialExperiments).SquadCoordinationExperienceJoinExperimentation
local InExperienceAppChatModal_upvr = require(AppChat.App.InExperienceAppChatModal)
local SquadRootViewType_upvr = SquadsCore.Enums.SquadRootViewType
return SquadsCore.SquadExternalContractProvider.makeSquadContract(require(Parent.Cryo).Dictionary.union(require(script.Parent.SquadContract), {
	setSquadPrompt = function(arg1, arg2) -- Line 21
		--[[ Upvalues[1]:
			[1]: SetSquadPrompt_upvr (readonly)
		]]
		arg1:dispatch(SetSquadPrompt_upvr(arg2))
	end;
	closeSquadPrompt = SquadsCore.Actions.CloseSquadPrompt;
	useSquadRootView = function() -- Line 25
		--[[ Upvalues[4]:
			[1]: React_upvr (readonly)
			[2]: SquadCoordinationExperienceJoinExperimentation_upvr (readonly)
			[3]: InExperienceAppChatModal_upvr (readonly)
			[4]: SquadRootViewType_upvr (readonly)
		]]
		local var11
		if SquadCoordinationExperienceJoinExperimentation_upvr.getSquadCoordinationExperienceJoinEnabled() and InExperienceAppChatModal_upvr.default:getVisible() then
			var11 = SquadRootViewType_upvr.InExperienceAppChatModal
		else
			var11 = SquadRootViewType_upvr.None
		end
		local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(var11)
		React_upvr.useEffect(function() -- Line 32
			--[[ Upvalues[3]:
				[1]: InExperienceAppChatModal_upvr (copied, readonly)
				[2]: any_useState_result2_upvr (readonly)
				[3]: SquadRootViewType_upvr (copied, readonly)
			]]
			local any_Connect_result1_upvr = InExperienceAppChatModal_upvr.default.visibilitySignal.Event:Connect(function(arg1) -- Line 33
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr (copied, readonly)
					[2]: SquadRootViewType_upvr (copied, readonly)
				]]
				if arg1 then
					any_useState_result2_upvr(SquadRootViewType_upvr.InExperienceAppChatModal)
				else
					any_useState_result2_upvr(SquadRootViewType_upvr.None)
				end
			end)
			return function() -- Line 41
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvr (readonly)
				]]
				if any_Connect_result1_upvr then
					any_Connect_result1_upvr:Disconnect()
				end
			end
		end, {})
		return any_useState_result1
	end;
}))