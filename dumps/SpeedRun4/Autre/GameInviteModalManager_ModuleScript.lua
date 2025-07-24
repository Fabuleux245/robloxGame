-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:53
-- Luau version 6, Types version 3
-- Time taken: 0.006240 seconds

local ContextActionService_upvr = game:GetService("ContextActionService")
local GameInvite = script:FindFirstAncestor("GameInvite")
local utils = GameInvite.utils
local GameInviteAnalyticsManager_upvr = require(GameInvite.analytics.GameInviteAnalyticsManager)
local isTriggerDDI_upvr = require(utils.gameInviteModalHelper).isTriggerDDI
game:DefineFastFlag("GameInviteModalAnalyticsEmptyEventContextFix", false)
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 22
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return setmetatable({}, module_upvr)
end
module_upvr.ToggleGameInviteModalEvent = Instance.new("BindableEvent")
module_upvr.isModalOpen = false
module_upvr.openTrigger = nil
module_upvr.customParams = nil
module_upvr.placeId = nil
local getCustomizedInvitePromptParams_upvr = require(utils.getCustomizedInvitePromptParams)
local getCanSendAndCanCustomizeInvites_upvr = require(utils.getCanSendAndCanCustomizeInvites)
local Cryo_upvr = require(GameInvite.Parent.Cryo)
function module_upvr.openModal(arg1, arg2, arg3) -- Line 36
	--[[ Upvalues[6]:
		[1]: isTriggerDDI_upvr (readonly)
		[2]: getCustomizedInvitePromptParams_upvr (readonly)
		[3]: getCanSendAndCanCustomizeInvites_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: GameInviteAnalyticsManager_upvr (readonly)
		[6]: ContextActionService_upvr (readonly)
	]]
	if not arg1.isModalOpen then
		arg1.isModalOpen = true
		arg1.openTrigger = arg2.trigger
		local rootPlaceId = arg2.rootPlaceId
		if not rootPlaceId then
			rootPlaceId = tostring(game.PlaceId)
		end
		arg1.placeId = rootPlaceId
		rootPlaceId = false
		local var11 = rootPlaceId
		local var12 = false
		local var13 = false
		if isTriggerDDI_upvr(arg2.trigger) then
			arg1.ToggleGameInviteModalEvent:Fire(true, true, arg2)
			local getCustomizedInvitePromptParams_upvr_result1 = getCustomizedInvitePromptParams_upvr(arg3, arg2.trigger, getCanSendAndCanCustomizeInvites_upvr)
			arg1.customParams = getCustomizedInvitePromptParams_upvr_result1
			local var15
			if getCustomizedInvitePromptParams_upvr_result1 then
				var15 = false
				if getCustomizedInvitePromptParams_upvr_result1.launchData ~= nil then
					if getCustomizedInvitePromptParams_upvr_result1.launchData == "" then
						var15 = false
					else
						var15 = true
					end
				end
				var11 = var15
				if getCustomizedInvitePromptParams_upvr_result1.promptMessage ~= nil then
					if getCustomizedInvitePromptParams_upvr_result1.promptMessage == "" then
					else
					end
				end
				var12 = true
				if getCustomizedInvitePromptParams_upvr_result1.inviteMessageId ~= nil then
					if getCustomizedInvitePromptParams_upvr_result1.inviteMessageId == "" then
					else
					end
				end
				var13 = true
				arg1.ToggleGameInviteModalEvent:Fire(true, false, Cryo_upvr.Dictionary.join(arg2, getCustomizedInvitePromptParams_upvr_result1))
				if game:GetFastFlag("GameInviteModalAnalyticsEmptyEventContextFix") then
					GameInviteAnalyticsManager_upvr:sendGameInviteModalEvent(arg2.trigger, {
						action_type = GameInviteAnalyticsManager_upvr.ActionType.ModalOpen;
						is_launch_data_provided = var11;
						is_prompt_customized = var12;
						is_invite_message_id_provided = var13;
						place_id = arg2.rootPlaceId;
					})
					-- KONSTANTWARNING: GOTO [174] #118
				end
			else
				arg1:closeModal()
			end
		else
			arg1.ToggleGameInviteModalEvent:Fire(true, false, arg2)
			if game:GetFastFlag("GameInviteModalAnalyticsEmptyEventContextFix") then
				GameInviteAnalyticsManager_upvr:sendGameInviteModalEvent(arg2.trigger, {
					action_type = GameInviteAnalyticsManager_upvr.ActionType.ModalOpen;
					is_launch_data_provided = var11;
					is_prompt_customized = var12;
					is_invite_message_id_provided = var13;
					place_id = arg2.rootPlaceId;
				})
			end
		end
		if not game:GetFastFlag("GameInviteModalAnalyticsEmptyEventContextFix") then
			GameInviteAnalyticsManager_upvr:sendGameInviteModalEvent(arg2.trigger, {
				action_type = GameInviteAnalyticsManager_upvr.ActionType.ModalOpen;
				is_launch_data_provided = var11;
				is_prompt_customized = var12;
				is_invite_message_id_provided = var13;
				place_id = arg2.rootPlaceId;
			})
		end
		ContextActionService_upvr:BindCoreAction("hideGameInviteModal", function(arg1_2, arg2_2) -- Line 94
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg2_2 == Enum.UserInputState.Begin then
				arg1:closeModal()
			end
		end, false, Enum.KeyCode.ButtonB, Enum.KeyCode.Backspace)
	elseif isTriggerDDI_upvr(arg2.trigger) then
		arg1:invokeGameInvitePromptClosed()
	end
end
function module_upvr.closeModal(arg1, arg2) -- Line 107
	--[[ Upvalues[3]:
		[1]: isTriggerDDI_upvr (readonly)
		[2]: GameInviteAnalyticsManager_upvr (readonly)
		[3]: ContextActionService_upvr (readonly)
	]]
	if arg1.isModalOpen then
		local var20 = false
		local var21 = false
		local var22 = false
		if isTriggerDDI_upvr(arg1.openTrigger) then
			local var23
			if var23 then
				var23 = false
				if arg1.customParams.launchData ~= nil then
					if arg1.customParams.launchData == "" then
						var23 = false
					else
						var23 = true
					end
				end
				var20 = var23
				if arg1.customParams.promptMessage ~= nil then
					if arg1.customParams.promptMessage == "" then
					else
					end
				end
				var21 = true
				if arg1.customParams.inviteMessageId ~= nil then
					if arg1.customParams.inviteMessageId == "" then
					else
					end
				end
				var22 = true
			end
			arg1:invokeGameInvitePromptClosed()
		end
		local tbl = {
			action_type = GameInviteAnalyticsManager_upvr.ActionType.ModalClose;
			is_launch_data_provided = var20;
			is_prompt_customized = var21;
			is_invite_message_id_provided = var22;
		}
		tbl.max_recipient_row_number = arg2
		tbl.place_id = arg1.placeId
		GameInviteAnalyticsManager_upvr:sendGameInviteModalEvent(arg1.openTrigger, tbl)
		ContextActionService_upvr:UnbindCoreAction("hideGameInviteModal")
		arg1.isModalOpen = false
		arg1.openTrigger = nil
		arg1.placeId = nil
	end
	arg1.ToggleGameInviteModalEvent:Fire(false)
end
function module_upvr.isGameModalOpen(arg1) -- Line 141
	return arg1.isModalOpen
end
local SocialService_upvr = game:GetService("SocialService")
local Players_upvr = game:GetService("Players")
function module_upvr.invokeGameInvitePromptClosed(arg1) -- Line 145
	--[[ Upvalues[2]:
		[1]: SocialService_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	if SocialService_upvr and Players_upvr.LocalPlayer then
		SocialService_upvr:InvokeGameInvitePromptClosed(Players_upvr.LocalPlayer, {})
	end
end
return module_upvr.new()