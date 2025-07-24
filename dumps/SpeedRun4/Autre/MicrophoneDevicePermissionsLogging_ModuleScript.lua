-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:50
-- Luau version 6, Types version 3
-- Time taken: 0.002005 seconds

local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local AvatarChatService_upvr = game:GetService("AvatarChatService")
local game_DefineFastString_result1_upvr = game:DefineFastString("MicrophoneDevicePermissionsLoggingEventName", "microphoneDevicePermissionPrompted")
local module = {
	_initialized = false;
	placeId = 0;
	universeId = 0;
	placeVoiceEnabled = false;
	universeVoiceEnabled = false;
	clientSessionId = "";
	UIType = {
		EXPERIENCE_JOIN = 0;
		PROMPT_IMPRESSION = 1;
		PROMPT_INTERACTION = 2;
	};
	_init = function(arg1, arg2, arg3) -- Line 59, Named "_init"
		--[[ Upvalues[1]:
			[1]: AvatarChatService_upvr (readonly)
		]]
		arg1._initialized = true
		arg1.placeId = game.PlaceId
		arg1.universeId = game.GameId
		arg1.placeVoiceEnabled = AvatarChatService_upvr:IsEnabled(arg2, Enum.AvatarChatServiceFeature.PlaceAudio)
		arg1.universeVoiceEnabled = AvatarChatService_upvr:IsEnabled(arg2, Enum.AvatarChatServiceFeature.UniverseAudio)
		local tbl = {}
		tbl.didAuthorize = arg3
		arg1:logExperienceJoin(tbl)
	end;
	_getEventPayload = function(arg1, arg2, arg3) -- Line 71, Named "_getEventPayload"
		local module_2 = {}
		module_2.uiType = arg2
		module_2.uiContext = arg3.uiContext
		module_2.didAuthorize = arg3.didAuthorize
		module_2.placeId = arg1.placeId
		module_2.universeId = arg1.universeId
		module_2.placeVoiceEnabled = arg1.placeVoiceEnabled
		module_2.universeVoiceEnabled = arg1.universeVoiceEnabled
		module_2.clientSessionId = arg1.clientSessionId
		return module_2
	end;
}
local getFFlagMicrophoneDevicePermissionsPromptLogging_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Flags.getFFlagMicrophoneDevicePermissionsPromptLogging)
function module._isReady(arg1) -- Line 84
	--[[ Upvalues[1]:
		[1]: getFFlagMicrophoneDevicePermissionsPromptLogging_upvr (readonly)
	]]
	local getFFlagMicrophoneDevicePermissionsPromptLogging_upvr_result1 = getFFlagMicrophoneDevicePermissionsPromptLogging_upvr()
	if getFFlagMicrophoneDevicePermissionsPromptLogging_upvr_result1 then
		getFFlagMicrophoneDevicePermissionsPromptLogging_upvr_result1 = arg1._initialized
	end
	return getFFlagMicrophoneDevicePermissionsPromptLogging_upvr_result1
end
function module.init(arg1, arg2) -- Line 88
	--[[ Upvalues[1]:
		[1]: AvatarChatService_upvr (readonly)
	]]
	if AvatarChatService_upvr.ClientFeaturesInitialized then
		arg1:_init(AvatarChatService_upvr.ClientFeatures, arg2)
	else
		local var11_upvw
		var11_upvw = AvatarChatService_upvr:GetPropertyChangedSignal("ClientFeatures"):Connect(function() -- Line 93
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: AvatarChatService_upvr (copied, readonly)
				[3]: arg2 (readonly)
				[4]: var11_upvw (read and write)
			]]
			arg1:_init(AvatarChatService_upvr.ClientFeatures, arg2)
			var11_upvw:Disconnect()
		end)
	end
end
function module.logExperienceJoin(arg1, arg2) -- Line 100
	--[[ Upvalues[2]:
		[1]: RbxAnalyticsService_upvr (readonly)
		[2]: game_DefineFastString_result1_upvr (readonly)
	]]
	if not arg1:_isReady() then
	else
		RbxAnalyticsService_upvr:SendEventDeferred("client", "voice", game_DefineFastString_result1_upvr, arg1:_getEventPayload(arg1.UIType.EXPERIENCE_JOIN, arg2))
	end
end
function module.logPromptImpression(arg1, arg2) -- Line 113
	--[[ Upvalues[2]:
		[1]: RbxAnalyticsService_upvr (readonly)
		[2]: game_DefineFastString_result1_upvr (readonly)
	]]
	if not arg1:_isReady() then
	else
		RbxAnalyticsService_upvr:SendEventDeferred("client", "voice", game_DefineFastString_result1_upvr, arg1:_getEventPayload(arg1.UIType.PROMPT_IMPRESSION, arg2))
	end
end
function module.logPromptInteraction(arg1, arg2) -- Line 126
	--[[ Upvalues[2]:
		[1]: RbxAnalyticsService_upvr (readonly)
		[2]: game_DefineFastString_result1_upvr (readonly)
	]]
	if not arg1:_isReady() then
	else
		RbxAnalyticsService_upvr:SendEventDeferred("client", "voice", game_DefineFastString_result1_upvr, arg1:_getEventPayload(arg1.UIType.PROMPT_INTERACTION, arg2))
	end
end
function module.setClientSessionId(arg1, arg2) -- Line 139
	if not arg1:_isReady() or arg1.clientSessionId == arg2 then
	else
		arg1.clientSessionId = arg2
	end
end
return module