-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:26:44
-- Luau version 6, Types version 3
-- Time taken: 0.005680 seconds

local Parent_2 = script.Parent.Parent.Parent
local dependencies = require(Parent_2.dependencies)
local Parent = Parent_2.Parent
local Analytics = Parent_2.Analytics
local PermissionsProtocol_upvr = dependencies.PermissionsProtocol
local tbl_8_upvr = {
	checkOrRequestPermissions = function(arg1) -- Line 64, Named "checkOrRequestPermissions"
		--[[ Upvalues[1]:
			[1]: PermissionsProtocol_upvr (readonly)
		]]
		return PermissionsProtocol_upvr.default:checkOrRequestPermissions(arg1)
	end;
}
local Dash_upvr = dependencies.Dash
local getDeepValue_upvr = dependencies.SocialLibraries.Dictionary.getDeepValue
local Constants_upvr = require(Parent_2.Common.Constants)
local useDispatch_upvr = dependencies.Hooks.useDispatch
local useAnalytics_upvr = require(Analytics.useAnalytics)
local useSelector_upvr = dependencies.Hooks.useSelector
local React_upvr = dependencies.React
local EventNames_upvr = require(Analytics.Enums.EventNames)
local ToastRodux_upvr = require(Parent.ToastRodux)
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local TextKeys_upvr = require(Parent_2.Common.TextKeys)
local UpdateContactImporterModalLogic_upvr = dependencies.SocialModalsCommon.Actions.UpdateContactImporterModalLogic
local UpdateIsDiscoverabilityUnset_upvr = dependencies.SocialModalsCommon.Actions.UpdateIsDiscoverabilityUnset
local NetworkingUserSettings_upvr = dependencies.NetworkingUserSettings
local FFlagRemoveCanUploadContacts_upvr = require(Parent.SharedFlags).FFlagRemoveCanUploadContacts
local updateOptedInUsers_upvr = dependencies.SocialModalsCommon.Utils.updateOptedInUsers
local AppStorageService_upvr = dependencies.AppStorageService
local EnumScreens_upvr = dependencies.SocialModalsCommon.EnumScreens
local Promise_upvr = dependencies.Promise
local DiscoverabilityOverlay_upvr = require(script.Parent.DiscoverabilityOverlay)
return function(arg1) -- Line 70
	--[[ Upvalues[23]:
		[1]: Dash_upvr (readonly)
		[2]: tbl_8_upvr (readonly)
		[3]: getDeepValue_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: useDispatch_upvr (readonly)
		[6]: useAnalytics_upvr (readonly)
		[7]: useSelector_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: EventNames_upvr (readonly)
		[10]: ToastRodux_upvr (readonly)
		[11]: NavigateDown_upvr (readonly)
		[12]: AppPage_upvr (readonly)
		[13]: TextKeys_upvr (readonly)
		[14]: UpdateContactImporterModalLogic_upvr (readonly)
		[15]: UpdateIsDiscoverabilityUnset_upvr (readonly)
		[16]: NetworkingUserSettings_upvr (readonly)
		[17]: FFlagRemoveCanUploadContacts_upvr (readonly)
		[18]: PermissionsProtocol_upvr (readonly)
		[19]: updateOptedInUsers_upvr (readonly)
		[20]: AppStorageService_upvr (readonly)
		[21]: EnumScreens_upvr (readonly)
		[22]: Promise_upvr (readonly)
		[23]: DiscoverabilityOverlay_upvr (readonly)
	]]
	local var29_upvr
	if not var29_upvr then
		var29_upvr = {}
	end
	local any_join_result1_upvr = Dash_upvr.join(tbl_8_upvr, var29_upvr)
	local function _(arg1_2) -- Line 72
		--[[ Upvalues[2]:
			[1]: any_join_result1_upvr (readonly)
			[2]: getDeepValue_upvr (copied, readonly)
		]]
		if any_join_result1_upvr.navigation then
			return any_join_result1_upvr.navigation.getParam(arg1_2)
		end
		return getDeepValue_upvr(any_join_result1_upvr, arg1_2)
	end
	if any_join_result1_upvr.navigation then
		var29_upvr = any_join_result1_upvr.navigation.getParam(Constants_upvr.IS_STANDALONE_DISCOVERABILITY_MODAL)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var29_upvr = getDeepValue_upvr(any_join_result1_upvr, Constants_upvr.IS_STANDALONE_DISCOVERABILITY_MODAL)
	end
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local var12_result1_upvr = useAnalytics_upvr()
	local var13_result1_upvr_2 = useSelector_upvr(function(arg1_3) -- Line 82
		return arg1_3.ScreenSize
	end)
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 89
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		if any_join_result1_upvr.navigation then
			any_join_result1_upvr.navigation.pop()
		elseif any_join_result1_upvr.onClose then
			any_join_result1_upvr.onClose()
		end
	end, {any_join_result1_upvr})
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_5) -- Line 97
		--[[ Upvalues[1]:
			[1]: getDeepValue_upvr (copied, readonly)
		]]
		return getDeepValue_upvr(arg1_5, "DiscoverabilityModal.UserPermissions.userSettingsMetadata")
	end)
	React_upvr.useEffect(function() -- Line 101
		--[[ Upvalues[4]:
			[1]: useSelector_upvr_result1_upvr (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: var12_result1_upvr (readonly)
			[4]: EventNames_upvr (copied, readonly)
		]]
		local var43
		if useSelector_upvr_result1_upvr.prefillDiscoverabilitySetting then
			var43 = Constants_upvr.NON_GDPR_VERSION_CHECKBOX
		else
			var43 = Constants_upvr.GDPR_VERSION
		end
		var12_result1_upvr.fireAnalyticsEvent(EventNames_upvr.DiscoverabilityModalLoad, {
			version = var43;
			wordingVersion = Constants_upvr.WORDING_VERSION_1;
		})
	end, {})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_6) -- Line 115
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: ToastRodux_upvr (copied, readonly)
		]]
		local tbl_2 = {}
		tbl_2.toastMessage = arg1_6
		useDispatch_upvr_result1_upvr(ToastRodux_upvr.Actions.SetCurrentToastMessage(tbl_2))
	end, {useDispatch_upvr_result1_upvr})
	local function var54_upvr(arg1_8) -- Line 138
		--[[ Upvalues[2]:
			[1]: any_useCallback_result1_upvr (readonly)
			[2]: TextKeys_upvr (copied, readonly)
		]]
		any_useCallback_result1_upvr(TextKeys_upvr.CI_FAILED)
	end
	local function _() -- Line 142
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: UpdateContactImporterModalLogic_upvr (copied, readonly)
		]]
		return useDispatch_upvr_result1_upvr(UpdateContactImporterModalLogic_upvr({
			hasOSPermissions = true;
			shouldShowContactImporterUpsellModal = false;
		}))
	end
	local function _() -- Line 149
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: UpdateIsDiscoverabilityUnset_upvr (copied, readonly)
		]]
		return useDispatch_upvr_result1_upvr(UpdateIsDiscoverabilityUnset_upvr({
			isDiscoverabilityUnset = false;
		}))
	end
	local function _(arg1_9, arg2) -- Line 155
		--[[ Upvalues[3]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: NetworkingUserSettings_upvr (copied, readonly)
			[3]: FFlagRemoveCanUploadContacts_upvr (copied, readonly)
		]]
		local var60 = NetworkingUserSettings_upvr
		local module = {}
		if FFlagRemoveCanUploadContacts_upvr then
			var60 = nil
		else
			var60 = arg1_9
		end
		module.canUploadContacts = var60
		module.phoneNumberDiscoverability = arg2
		return useDispatch_upvr_result1_upvr(var60.UpdateUserSettings.API(module))
	end
	local var13_result1_upvr = useSelector_upvr(function(arg1_4) -- Line 85
		return arg1_4.LocalUserId
	end)
	return React_upvr.createElement(DiscoverabilityOverlay_upvr, {
		screenSize = var13_result1_upvr_2;
		onCloseClicked = function(arg1_7) -- Line 121
			--[[ Upvalues[3]:
				[1]: var12_result1_upvr (readonly)
				[2]: EventNames_upvr (copied, readonly)
				[3]: any_useCallback_result1_upvr_2 (readonly)
			]]
			local tbl_4 = {}
			tbl_4.selected = arg1_7
			var12_result1_upvr.fireAnalyticsEvent(EventNames_upvr.DiscoverabilityModalClose, tbl_4)
			any_useCallback_result1_upvr_2()
		end;
		onLearnMoreClick = function() -- Line 128
			--[[ Upvalues[3]:
				[1]: useDispatch_upvr_result1_upvr (readonly)
				[2]: NavigateDown_upvr (copied, readonly)
				[3]: AppPage_upvr (copied, readonly)
			]]
			useDispatch_upvr_result1_upvr(NavigateDown_upvr({
				name = AppPage_upvr.GenericWebPage;
				detail = "https://en.help.roblox.com/hc/articles/7416652004884";
				extraProps = {
					title = "";
				};
			}, nil))
		end;
		onActivated = function(arg1_10) -- Line 162
			--[[ Upvalues[22]:
				[1]: var12_result1_upvr (readonly)
				[2]: EventNames_upvr (copied, readonly)
				[3]: var29_upvr (readonly)
				[4]: useDispatch_upvr_result1_upvr (readonly)
				[5]: NetworkingUserSettings_upvr (copied, readonly)
				[6]: FFlagRemoveCanUploadContacts_upvr (copied, readonly)
				[7]: UpdateIsDiscoverabilityUnset_upvr (copied, readonly)
				[8]: Constants_upvr (copied, readonly)
				[9]: any_join_result1_upvr (readonly)
				[10]: getDeepValue_upvr (copied, readonly)
				[11]: any_useCallback_result1_upvr_2 (readonly)
				[12]: any_useCallback_result1_upvr (readonly)
				[13]: TextKeys_upvr (copied, readonly)
				[14]: PermissionsProtocol_upvr (copied, readonly)
				[15]: updateOptedInUsers_upvr (copied, readonly)
				[16]: AppStorageService_upvr (copied, readonly)
				[17]: var13_result1_upvr (readonly)
				[18]: UpdateContactImporterModalLogic_upvr (copied, readonly)
				[19]: EnumScreens_upvr (copied, readonly)
				[20]: var13_result1_upvr_2 (readonly)
				[21]: Promise_upvr (copied, readonly)
				[22]: var54_upvr (readonly)
			]]
			local tbl_7 = {}
			tbl_7.selected = arg1_10
			var12_result1_upvr.fireAnalyticsEvent(EventNames_upvr.DiscoverabilityModalContinue, tbl_7)
			if var29_upvr then
				local var65 = NetworkingUserSettings_upvr
				local tbl_3 = {}
				if FFlagRemoveCanUploadContacts_upvr then
					var65 = nil
				else
					var65 = nil
				end
				tbl_3.canUploadContacts = var65
				tbl_3.phoneNumberDiscoverability = arg1_10
				useDispatch_upvr_result1_upvr(var65.UpdateUserSettings.API(tbl_3)):andThen(function() -- Line 168
					--[[ Upvalues[8]:
						[1]: useDispatch_upvr_result1_upvr (copied, readonly)
						[2]: UpdateIsDiscoverabilityUnset_upvr (copied, readonly)
						[3]: Constants_upvr (copied, readonly)
						[4]: any_join_result1_upvr (copied, readonly)
						[5]: getDeepValue_upvr (copied, readonly)
						[6]: any_useCallback_result1_upvr_2 (copied, readonly)
						[7]: any_useCallback_result1_upvr (copied, readonly)
						[8]: TextKeys_upvr (copied, readonly)
					]]
					local var32_result1 = useDispatch_upvr_result1_upvr(UpdateIsDiscoverabilityUnset_upvr({
						isDiscoverabilityUnset = false;
					}))
					if any_join_result1_upvr.navigation then
						var32_result1 = any_join_result1_upvr.navigation.getParam(Constants_upvr.NAVIGATE_ON_ACTIVATED)
					else
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						var32_result1 = getDeepValue_upvr(any_join_result1_upvr, Constants_upvr.NAVIGATE_ON_ACTIVATED)
					end
					any_useCallback_result1_upvr_2()
					var32_result1()
					any_useCallback_result1_upvr(TextKeys_upvr.SETTING_SAVED)
				end)
			else
				any_join_result1_upvr.checkOrRequestPermissions({PermissionsProtocol_upvr.Permissions.CONTACTS_ACCESS}):andThen(function(arg1_11) -- Line 180
					--[[ Upvalues[15]:
						[1]: PermissionsProtocol_upvr (copied, readonly)
						[2]: updateOptedInUsers_upvr (copied, readonly)
						[3]: AppStorageService_upvr (copied, readonly)
						[4]: var13_result1_upvr (copied, readonly)
						[5]: useDispatch_upvr_result1_upvr (copied, readonly)
						[6]: UpdateContactImporterModalLogic_upvr (copied, readonly)
						[7]: arg1_10 (readonly)
						[8]: NetworkingUserSettings_upvr (copied, readonly)
						[9]: FFlagRemoveCanUploadContacts_upvr (copied, readonly)
						[10]: UpdateIsDiscoverabilityUnset_upvr (copied, readonly)
						[11]: any_join_result1_upvr (copied, readonly)
						[12]: EnumScreens_upvr (copied, readonly)
						[13]: Constants_upvr (copied, readonly)
						[14]: var13_result1_upvr_2 (copied, readonly)
						[15]: Promise_upvr (copied, readonly)
					]]
					if arg1_11 == PermissionsProtocol_upvr.Status.AUTHORIZED then
						updateOptedInUsers_upvr:addUserToLocalStorage(AppStorageService_upvr, var13_result1_upvr)
						local _ = {
							hasOSPermissions = true;
							shouldShowContactImporterUpsellModal = false;
						}
						local var73 = NetworkingUserSettings_upvr
						local tbl_6 = {}
						if FFlagRemoveCanUploadContacts_upvr then
							var73 = nil
						else
							var73 = true
						end
						tbl_6.canUploadContacts = var73
						tbl_6.phoneNumberDiscoverability = arg1_10
						useDispatch_upvr_result1_upvr(var73.UpdateUserSettings.API(tbl_6)):andThen(function() -- Line 184
							--[[ Upvalues[5]:
								[1]: useDispatch_upvr_result1_upvr (copied, readonly)
								[2]: UpdateIsDiscoverabilityUnset_upvr (copied, readonly)
								[3]: any_join_result1_upvr (copied, readonly)
								[4]: EnumScreens_upvr (copied, readonly)
								[5]: Constants_upvr (copied, readonly)
							]]
							local _ = {
								isDiscoverabilityUnset = false;
							}
							any_join_result1_upvr.navigation.replace(EnumScreens_upvr.ContactsList, {
								[Constants_upvr.IS_PHONE_VERIFIED] = true;
								entryPoint = any_join_result1_upvr.navigation.getParam("entryPoint");
							})
						end)
					else
						if arg1_11 == PermissionsProtocol_upvr.Status.DENIED then
							var73 = NetworkingUserSettings_upvr
							local var78 = var73
							local tbl = {}
							if FFlagRemoveCanUploadContacts_upvr then
								var78 = nil
							else
								var78 = false
							end
							tbl.canUploadContacts = var78
							tbl.phoneNumberDiscoverability = arg1_10
							useDispatch_upvr_result1_upvr(var78.UpdateUserSettings.API(tbl)):andThen(function() -- Line 193
								--[[ Upvalues[3]:
									[1]: any_join_result1_upvr (copied, readonly)
									[2]: EnumScreens_upvr (copied, readonly)
									[3]: var13_result1_upvr_2 (copied, readonly)
								]]
								local tbl_5 = {
									screenSize = var13_result1_upvr_2;
								}
								tbl_5.closeModal = function() -- Line 196, Named "closeModal"
									--[[ Upvalues[1]:
										[1]: any_join_result1_upvr (copied, readonly)
									]]
									any_join_result1_upvr.navigation.pop()
								end
								any_join_result1_upvr.navigation.replace(EnumScreens_upvr.ContactsRevokedAccessDialog, tbl_5)
							end)
							return
						end
						return Promise_upvr.reject()
					end
				end):catch(var54_upvr)
			end
		end;
		prefillDiscoverabilitySetting = useSelector_upvr_result1_upvr.prefillDiscoverabilitySetting;
		analytics = var12_result1_upvr;
	})
end