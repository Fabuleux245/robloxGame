-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:02
-- Luau version 6, Types version 3
-- Time taken: 0.009079 seconds

local Parent = script:FindFirstAncestor("SocialCommon").Parent
local MessageBusService_upvr = game:GetService("MessageBusService")
local UIBlox = require(Parent.UIBlox)
local LinkingProtocol = require(Parent.LinkingProtocol)
local SocialLuaAnalytics = require(Parent.SocialLuaAnalytics)
local Dash = require(Parent.Dash)
local PermissionsProtocol_upvr = require(Parent.PermissionsProtocol).PermissionsProtocol
local SettingsRoute_upvr = LinkingProtocol.Enums.SettingsRoute
local EventTypes = SocialLuaAnalytics.Analytics.Enums.EventTypes
local SharedFlags_upvr = require(Parent.SharedFlags)
if SharedFlags_upvr.FFlagRegisterQRCodeKeyInEngine then
	SharedFlags_upvr = "ProfileQrCodeCameraSettingsModalSeen"
else
	SharedFlags_upvr = "ScreenshotEventTracking"
end
local tbl_10_upvr = {
	SettingsPermissionInteractiveAlertButtonClick = {
		context = "settingsPermissionInteractiveAlert";
		eventType = EventTypes.ButtonClick;
		formatRulesForAdditionalInfo = {
			settingsRoute = Dash.identity;
			btn = Dash.identity;
		};
	};
	SettingsPermissionInteractiveAlertImpression = {
		context = "settingsPermissionInteractiveAlert";
		eventType = EventTypes.SettingsPermissionInteractiveAlertImpression;
		formatRulesForAdditionalInfo = {
			settingsRoute = Dash.identity;
			settingsAppAvailable = Dash.identity;
		};
	};
}
local tbl_11_upvr = {
	[SettingsRoute_upvr.Camera] = PermissionsProtocol_upvr.Permissions.CAMERA_ACCESS;
	[SettingsRoute_upvr.Contacts] = PermissionsProtocol_upvr.Permissions.CONTACTS_ACCESS;
}
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useStyle_upvr = UIBlox.Core.Style.useStyle
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("ModalSupportCiNavigation", false)
local React_upvr = require(Parent.React)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local AnalyticsFactory_upvr = SocialLuaAnalytics.Analytics.AnalyticsFactory
local DefaultAnalyticsService_upvr = SocialLuaAnalytics.Analytics.DefaultAnalyticsService
local FFlagEnableRetryForLinkingProtocolFetch_upvr = require(Parent.SharedFlags).FFlagEnableRetryForLinkingProtocolFetch
local FIntLinkingProtocolFetchRetries_upvr = require(Parent.SharedFlags).FIntLinkingProtocolFetchRetries
local default_upvr = LinkingProtocol.LinkingProtocol.default
local FIntLinkingProtocolFetchTimeoutMS_upvr = require(Parent.SharedFlags).FIntLinkingProtocolFetchTimeoutMS
local FFlagProfileQRCodeCameraDeeplinkedLogging_upvr = require(Parent.SharedFlags).FFlagProfileQRCodeCameraDeeplinkedLogging
local AppStorageService_upvr = game:GetService("AppStorageService")
local any_GetMessageId_result1_upvr = MessageBusService_upvr:GetMessageId("Realtime", "appResume")
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Images_upvr = UIBlox.App.ImageSet.Images
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixButtonParameterName", false)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local Text_upvr = require(Parent.AppCommonLib).Text
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
return function(arg1) -- Line 89, Named "SettingsPermissionInteractiveAlert"
	--[[ Upvalues[29]:
		[1]: useScreenSize_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[5]: React_upvr (readonly)
		[6]: dependencyArray_upvr (readonly)
		[7]: AnalyticsFactory_upvr (readonly)
		[8]: tbl_10_upvr (readonly)
		[9]: DefaultAnalyticsService_upvr (readonly)
		[10]: FFlagEnableRetryForLinkingProtocolFetch_upvr (readonly)
		[11]: FIntLinkingProtocolFetchRetries_upvr (readonly)
		[12]: default_upvr (readonly)
		[13]: FIntLinkingProtocolFetchTimeoutMS_upvr (readonly)
		[14]: FFlagProfileQRCodeCameraDeeplinkedLogging_upvr (readonly)
		[15]: AppStorageService_upvr (readonly)
		[16]: SharedFlags_upvr (readonly)
		[17]: MessageBusService_upvr (readonly)
		[18]: any_GetMessageId_result1_upvr (readonly)
		[19]: PermissionsProtocol_upvr (readonly)
		[20]: tbl_11_upvr (readonly)
		[21]: useAppPolicy_upvr (readonly)
		[22]: useLocalization_upvr (readonly)
		[23]: SettingsRoute_upvr (readonly)
		[24]: Images_upvr (readonly)
		[25]: game_DefineFastFlag_result1_upvr (readonly)
		[26]: ButtonType_upvr (readonly)
		[27]: StyledTextLabel_upvr (readonly)
		[28]: Text_upvr (readonly)
		[29]: InteractiveAlert_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [97] 82. Error Block 23 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [97.7]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [97.8]
	-- KONSTANTERROR: [97] 82. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 101 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [97.5]
	if nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [97.4]
		if not nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
				-- KONSTANTWARNING: GOTO [22] #19
			end
			-- KONSTANTWARNING: GOTO [22] #19
		end
	else
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [97.6]
	if nil then
	else
	end
	if (nil and nil) == nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [97.10]
		if nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil == nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [97.11]
				-- KONSTANTWARNING: GOTO [59] #51
			end
		else
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [97.13]
			if nil then
			else
			end
		end
		-- KONSTANTWARNING: GOTO [97] #82
	end
	-- KONSTANTERROR: [0] 1. Error Block 101 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [98] 83. Error Block 90 start (CF ANALYSIS FAILED)
	local var65_upvr
	local var66_upvr
	local var67_upvw = nil and nil
	local var68_upvr
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [101.2]
	local var69_upvr
	React_upvr.useEffect(function() -- Line 153
		--[[ Upvalues[14]:
			[1]: var65_upvr (readonly)
			[2]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
			[3]: var66_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: var67_upvw (read and write)
			[6]: FFlagProfileQRCodeCameraDeeplinkedLogging_upvr (copied, readonly)
			[7]: AppStorageService_upvr (copied, readonly)
			[8]: SharedFlags_upvr (copied, readonly)
			[9]: MessageBusService_upvr (copied, readonly)
			[10]: any_GetMessageId_result1_upvr (copied, readonly)
			[11]: PermissionsProtocol_upvr (copied, readonly)
			[12]: tbl_11_upvr (copied, readonly)
			[13]: var68_upvr (readonly)
			[14]: var69_upvr (readonly)
		]]
		local tbl_9 = {}
		local var72
		if game_DefineFastFlag_result1_upvr_2 then
			var72 = var66_upvr
		else
			var72 = arg1.settingsRoute
		end
		tbl_9.settingsRoute = var72
		var72 = var67_upvw
		tbl_9.settingsAppAvailable = var72
		var65_upvr.fireAnalyticsEvent("SettingsPermissionInteractiveAlertImpression", tbl_9)
		if FFlagProfileQRCodeCameraDeeplinkedLogging_upvr then
			var72 = "true"
			AppStorageService_upvr:SetItem(SharedFlags_upvr, var72)
			AppStorageService_upvr:Flush()
		end
		function var72() -- Line 165
			--[[ Upvalues[7]:
				[1]: PermissionsProtocol_upvr (copied, readonly)
				[2]: tbl_11_upvr (copied, readonly)
				[3]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
				[4]: var66_upvr (copied, readonly)
				[5]: arg1 (copied, readonly)
				[6]: var68_upvr (copied, readonly)
				[7]: var69_upvr (copied, readonly)
			]]
			local tbl_7 = {}
			local var74
			if game_DefineFastFlag_result1_upvr_2 then
				var74 = var66_upvr
			else
				var74 = arg1.settingsRoute
			end
			tbl_7[1] = tbl_11_upvr[var74]
			PermissionsProtocol_upvr.default:hasPermissions(tbl_7):andThen(function(arg1_4) -- Line 172
				--[[ Upvalues[5]:
					[1]: PermissionsProtocol_upvr (copied, readonly)
					[2]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
					[3]: var68_upvr (copied, readonly)
					[4]: var69_upvr (copied, readonly)
					[5]: arg1 (copied, readonly)
				]]
				local var76 = arg1_4
				if var76 then
					if arg1_4.status ~= PermissionsProtocol_upvr.Status.AUTHORIZED then
						var76 = false
					else
						var76 = true
					end
				end
				if var76 then
					if game_DefineFastFlag_result1_upvr_2 then
						var68_upvr()
						return
					end
					var69_upvr(arg1.closeCentralOverlayThunk())
				end
			end)
		end
		local any_Subscribe_result1_upvr_2 = MessageBusService_upvr:Subscribe(any_GetMessageId_result1_upvr, var72, false, true)
		return function() -- Line 183
			--[[ Upvalues[1]:
				[1]: any_Subscribe_result1_upvr_2 (readonly)
			]]
			any_Subscribe_result1_upvr_2:Disconnect()
		end
	end, {})
	local function _(arg1_5) -- Line 188
		return arg1_5.getShouldShowSettingsPermissionsAdditionalInstructions()
	end
	local useLocalization_upvr_result1 = useLocalization_upvr({
		notNow = "Feature.SettingsHub.Action.NotNow";
		ok = "Feature.SettingsHub.Action.Ok";
		openSettings = "Feature.SettingsHub.Action.OpenSettings";
		titleCamera = "Feature.SettingsHub.Prompt.NeedCameraAccess";
		titleContacts = "Feature.SettingsHub.Prompt.NeedContactsAccess";
		bodyTextCamera = "Feature.SettingsHub.Description.QRCodeCameraPermissionIOS";
		bodyTextContacts = "Feature.SettingsHub.Description.ContactsPermissionIOS";
		additionalInstructionsContactsDeeplinkSupported = "Feature.SettingsHub.Description.ContactsPermissionAndroid";
		additionalInstructionsContactsDeeplinkNotSupported = "Feature.SettingsHub.Description.ContactsPermissionAndroidDeeplinkNotSupported";
		additionalInstructionsCameraDeeplinkSupported = "Feature.SettingsHub.Description.QRCodeCameraPermissionAndroid";
		additionalInstructionsCameraDeeplinkNotSupported = "Feature.SettingsHub.Description.QRCodeCameraPermissionAndroidDeeplinkNotSupported";
	})
	local _ = {
		[SettingsRoute_upvr.Camera] = Images_upvr["icons/controls/cameraOff"];
		[SettingsRoute_upvr.Contacts] = Images_upvr["icons/menu/contacts_large"];
	}
	local _ = {
		[SettingsRoute_upvr.Camera] = useLocalization_upvr_result1.titleCamera;
		[SettingsRoute_upvr.Contacts] = useLocalization_upvr_result1.titleContacts;
	}
	local _ = {
		[SettingsRoute_upvr.Camera] = useLocalization_upvr_result1.bodyTextCamera;
		[SettingsRoute_upvr.Contacts] = useLocalization_upvr_result1.bodyTextContacts;
	}
	local tbl_14 = {
		[SettingsRoute_upvr.Contacts] = {
			deepLinkSupported = useLocalization_upvr_result1.additionalInstructionsContactsDeeplinkSupported;
			deepLinkNotSupported = useLocalization_upvr_result1.additionalInstructionsContactsDeeplinkNotSupported;
		};
		[SettingsRoute_upvr.Camera] = {
			deepLinkSupported = useLocalization_upvr_result1.additionalInstructionsCameraDeeplinkSupported;
			deepLinkNotSupported = useLocalization_upvr_result1.additionalInstructionsCameraDeeplinkNotSupported;
		};
	}
	if game_DefineFastFlag_result1_upvr_2 then
	else
	end
	if var67_upvw then
		-- KONSTANTWARNING: GOTO [242] #187
	end
	-- KONSTANTERROR: [98] 83. Error Block 90 end (CF ANALYSIS FAILED)
end