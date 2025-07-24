-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:28
-- Luau version 6, Types version 3
-- Time taken: 0.003486 seconds

local Parent = script.Parent.Parent
local HttpRequest = require(Parent.HttpRequest)
local tbl_5 = {}
local HttpRbxApi = HttpRequest.requestFunctions.HttpRbxApi
tbl_5.requestFunction = HttpRbxApi
if require(Parent.SharedFlags).FFlagLuaAppDefaultHttpRetry then
	HttpRbxApi = game:DefineFastInt("SetupNotificationsUpsellHttpRetryCount", 4)
else
	HttpRbxApi = nil
end
tbl_5.maxRetryCount = HttpRbxApi
local sendEventDeferred_upvr = require(Parent.NotificationsCommon).sendEventDeferred
local ModalEventConstants_upvr = require(script.Parent.Analytics.ModalEventConstants)
local NotificationModalsManager_upvr = require(Parent.NotificationModalsManager)
local GetGameNameAndDescription_upvr = require(Parent.GameDetailRodux).GetGameNameAndDescription
local any_config_result1_upvr = HttpRequest.config(tbl_5)
local NotificationsUpsellModal_upvr = require(script.Parent.Components.NotificationsUpsellModal)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("NotificationsUpsellDisableBackgroundDismiss", false)
local function openModal_upvr(arg1) -- Line 22, Named "openModal"
	--[[ Upvalues[7]:
		[1]: sendEventDeferred_upvr (readonly)
		[2]: ModalEventConstants_upvr (readonly)
		[3]: NotificationModalsManager_upvr (readonly)
		[4]: GetGameNameAndDescription_upvr (readonly)
		[5]: any_config_result1_upvr (readonly)
		[6]: NotificationsUpsellModal_upvr (readonly)
		[7]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var15
	if arg1 ~= '0' and arg1 ~= "" then
		local any_await_result1, any_await_result2 = GetGameNameAndDescription_upvr(any_config_result1_upvr, arg1):andThen(function(arg1_2) -- Line 36
			local var17 = arg1_2
			if var17 then
				var17 = arg1_2.Name
			end
			return var17
		end, function() -- Line 38
			return nil
		end):await()
		var15 = any_await_result1
	end
	local tbl_3 = {
		[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.Opened;
	}
	local var22 = ModalEventConstants_upvr
	tbl_3[var22.UniverseId] = arg1
	sendEventDeferred_upvr(ModalEventConstants_upvr.ModalContext, ModalEventConstants_upvr.OptInEventName, tbl_3)
	local tbl_2 = {
		CloseCallback = function() -- Line 23
			--[[ Upvalues[3]:
				[1]: sendEventDeferred_upvr (copied, readonly)
				[2]: ModalEventConstants_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			game:GetService("ExperienceNotificationService"):InvokeOptInPromptClosed()
			local tbl = {
				[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.Closed;
			}
			tbl[ModalEventConstants_upvr.UniverseId] = arg1
			sendEventDeferred_upvr(ModalEventConstants_upvr.ModalContext, ModalEventConstants_upvr.OptInEventName, tbl)
		end;
	}
	local tbl_4 = {
		CloseModal = function() -- Line 30
			--[[ Upvalues[1]:
				[1]: NotificationModalsManager_upvr (copied, readonly)
			]]
			NotificationModalsManager_upvr.CloseModal("UENUpsell")
		end;
	}
	tbl_4.ExperienceId = arg1
	if var15 then
		var22 = any_await_result2
	else
		var22 = nil
	end
	tbl_4.ExperienceName = var22
	tbl_2.Props = tbl_4
	if game_DefineFastFlag_result1_upvr then
	else
	end
	tbl_2.DisableBackgroundDismiss = nil
	NotificationModalsManager_upvr.OpenModal("UENUpsell", NotificationsUpsellModal_upvr, tbl_2)
end
return function() -- Line 59
	--[[ Upvalues[1]:
		[1]: openModal_upvr (readonly)
	]]
	game:GetService("ExperienceNotificationService").PromptOptInRequested:Connect(function() -- Line 60
		--[[ Upvalues[1]:
			[1]: openModal_upvr (copied, readonly)
		]]
		openModal_upvr(tostring(game.GameId))
	end)
end