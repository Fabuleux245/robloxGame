-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:25:53
-- Luau version 6, Types version 3
-- Time taken: 0.012352 seconds

local ContactsToast = script:FindFirstAncestor("ContactsToast")
local Parent = ContactsToast.Parent
local RobloxAppHooks = require(Parent.RobloxAppHooks)
local SocialModalsCommon = require(Parent.SocialModalsCommon)
local UIBlox = require(Parent.UIBlox)
local IconSize = UIBlox.App.Constant.IconSize
local React_upvr = require(Parent.React)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local Analytics_upvr = require(ContactsToast.Analytics).Analytics
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Constants_upvr = require(ContactsToast.Common.Constants)
local ContactsToastIXP_upvr = require(ContactsToast.Experiments.ContactsToastIXP)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useScreenSize_upvr = RobloxAppHooks.useScreenSize
local useLocalUserId_upvr = RobloxAppHooks.useLocalUserId
local GetFFlagContactsToastEnabled_upvr = require(Parent.SharedFlags).GetFFlagContactsToastEnabled
local getDeepValue_upvr = require(Parent.LuaSocialLibrariesDeps).SocialLibraries.config({}).Dictionary.getDeepValue
local PermissionsProtocol_upvr = require(Parent.PermissionsProtocol).PermissionsProtocol
local SetCurrentToastMessage_upvr = require(Parent.ToastRodux).Actions.SetCurrentToastMessage
local Cryo_upvr = require(Parent.Cryo)
local EventNames_upvr = require(ContactsToast.Analytics.EventNames)
local UpdateContactImporterModalLogic_upvr = SocialModalsCommon.Actions.UpdateContactImporterModalLogic
local any_GetPlatform_result1_upvr = game:GetService("UserInputService"):GetPlatform()
local updateOptedInUsers_upvr = SocialModalsCommon.Utils.updateOptedInUsers
local AppStorageService_upvr = game:GetService("AppStorageService")
local EnumScreens_upvr = SocialModalsCommon.EnumScreens
local Promise_upvr = require(Parent.Promise)
local Toast_upvr = UIBlox.App.Dialog.Toast
local icons_graphic_connectcontacts_large_upvr = UIBlox.App.ImageSet.Images["icons/graphic/connectcontacts_large"]
local vector2_upvr = Vector2.new(IconSize.Large, IconSize.Large)
local configureRoduxUsers_upvr = require(ContactsToast.Networking.configureRoduxUsers)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("ContactsToastAccountAgeThresholdInDays", 7)
local localStorageContactsToast_upvr = require(ContactsToast.Utils.localStorageContactsToast)
local ExperienceService_upvr = require(Parent.ExperienceService).ExperienceService
local setTimeout_upvr = require(Parent.LuauPolyfill).setTimeout
return function(arg1) -- Line 63
	--[[ Upvalues[29]:
		[1]: React_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: ContactsToastIXP_upvr (readonly)
		[7]: useSelector_upvr (readonly)
		[8]: useScreenSize_upvr (readonly)
		[9]: useLocalUserId_upvr (readonly)
		[10]: GetFFlagContactsToastEnabled_upvr (readonly)
		[11]: getDeepValue_upvr (readonly)
		[12]: PermissionsProtocol_upvr (readonly)
		[13]: SetCurrentToastMessage_upvr (readonly)
		[14]: Cryo_upvr (readonly)
		[15]: EventNames_upvr (readonly)
		[16]: UpdateContactImporterModalLogic_upvr (readonly)
		[17]: any_GetPlatform_result1_upvr (readonly)
		[18]: updateOptedInUsers_upvr (readonly)
		[19]: AppStorageService_upvr (readonly)
		[20]: EnumScreens_upvr (readonly)
		[21]: Promise_upvr (readonly)
		[22]: Toast_upvr (readonly)
		[23]: icons_graphic_connectcontacts_large_upvr (readonly)
		[24]: vector2_upvr (readonly)
		[25]: configureRoduxUsers_upvr (readonly)
		[26]: game_DefineFastInt_result1_upvr (readonly)
		[27]: localStorageContactsToast_upvr (readonly)
		[28]: ExperienceService_upvr (readonly)
		[29]: setTimeout_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local Analytics_upvr_result1_upvr = Analytics_upvr()
	local useLocalization_upvr_result1 = useLocalization_upvr({
		title = Constants_upvr.Translations.title;
		subtitle = Constants_upvr.Translations.subtitle;
		button = Constants_upvr.Translations.button;
		buttonV2 = Constants_upvr.Translations.buttonV2;
	})
	local any_useContactsToastVariant_result1_upvr = ContactsToastIXP_upvr.useContactsToastVariant()
	local var14_result1 = useSelector_upvr(arg1.getContactImporterParams)
	local useLocalUserId_upvr_result1_upvr = useLocalUserId_upvr()
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 80
		return arg1_2.IsLocalUserUnder13
	end)
	local var14_result1_upvr = useSelector_upvr(function(arg1_3) -- Line 84
		--[[ Upvalues[5]:
			[1]: GetFFlagContactsToastEnabled_upvr (copied, readonly)
			[2]: any_useContactsToastVariant_result1_upvr (readonly)
			[3]: getDeepValue_upvr (copied, readonly)
			[4]: Constants_upvr (copied, readonly)
			[5]: useLocalUserId_upvr_result1_upvr (readonly)
		]]
		if GetFFlagContactsToastEnabled_upvr() or any_useContactsToastVariant_result1_upvr then
			return getDeepValue_upvr(arg1_3, `{Constants_upvr.RODUX_KEY}.Users.byUserId.{useLocalUserId_upvr_result1_upvr}`)
		end
		return {}
	end)
	local default_upvr = PermissionsProtocol_upvr.default
	local function var51_upvr(arg1_4) -- Line 92
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: SetCurrentToastMessage_upvr (copied, readonly)
		]]
		local tbl_5 = {}
		tbl_5.toastMessage = arg1_4
		useDispatch_upvr_result1_upvr(SetCurrentToastMessage_upvr(tbl_5))
	end
	local function var53_upvr() -- Line 97
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		useDispatch_upvr_result1_upvr(arg1.openContactImporterLearnMoreLink())
	end
	local function var54_upvr(arg1_5, arg2) -- Line 100
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		useDispatch_upvr_result1_upvr(arg1.openProfilePeekView(arg1_5, arg2))
	end
	local function var55_upvr(arg1_6, arg2) -- Line 104
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		useDispatch_upvr_result1_upvr(arg1.openAmpWizardContainer(arg1_6, arg2))
	end
	local function var56_upvr(arg1_7, arg2) -- Line 108
		--[[ Upvalues[3]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: Cryo_upvr (copied, readonly)
		]]
		local tbl_7 = {}
		local tbl = {}
		tbl.name = arg1_7
		tbl_7[1] = Cryo_upvr.Dictionary.join(tbl, arg2)
		useDispatch_upvr_result1_upvr(arg1.navigateToRoute(tbl_7))
	end
	local function _() -- Line 112
		--[[ Upvalues[2]:
			[1]: default_upvr (readonly)
			[2]: PermissionsProtocol_upvr (copied, readonly)
		]]
		return default_upvr:checkOrRequestPermissions({PermissionsProtocol_upvr.Permissions.CONTACTS_ACCESS})
	end
	local function _() -- Line 118
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: default_upvr (readonly)
			[3]: PermissionsProtocol_upvr (copied, readonly)
		]]
		if arg1.hasPermissions then
			return arg1.hasPermissions()
		end
		return default_upvr:hasPermissions({PermissionsProtocol_upvr.Permissions.CONTACTS_ACCESS})
	end
	local function _() -- Line 131
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: UpdateContactImporterModalLogic_upvr (copied, readonly)
		]]
		useDispatch_upvr_result1_upvr(UpdateContactImporterModalLogic_upvr({
			hasOSPermissions = true;
			shouldShowContactImporterUpsellModal = false;
		}))
	end
	local isPhoneVerified_upvr = var14_result1.isPhoneVerified
	local var15_result1_upvr = useScreenSize_upvr()
	local isDiscoverabilityUnset_upvr = var14_result1.isDiscoverabilityUnset
	local tbl_8 = {
		duration = 4;
	}
	local tbl_3 = {
		iconImage = icons_graphic_connectcontacts_large_upvr;
		toastTitle = useLocalization_upvr_result1.title;
		toastSubtitle = useLocalization_upvr_result1.subtitle;
		iconSize = vector2_upvr;
		onActivated = function() -- Line 138
			--[[ Upvalues[22]:
				[1]: any_GetPlatform_result1_upvr (copied, readonly)
				[2]: default_upvr (readonly)
				[3]: PermissionsProtocol_upvr (copied, readonly)
				[4]: updateOptedInUsers_upvr (copied, readonly)
				[5]: AppStorageService_upvr (copied, readonly)
				[6]: useLocalUserId_upvr_result1_upvr (readonly)
				[7]: useDispatch_upvr_result1_upvr (readonly)
				[8]: UpdateContactImporterModalLogic_upvr (copied, readonly)
				[9]: var56_upvr (readonly)
				[10]: EnumScreens_upvr (copied, readonly)
				[11]: var51_upvr (readonly)
				[12]: isPhoneVerified_upvr (readonly)
				[13]: var53_upvr (readonly)
				[14]: var55_upvr (readonly)
				[15]: Promise_upvr (copied, readonly)
				[16]: var15_result1_upvr (readonly)
				[17]: isDiscoverabilityUnset_upvr (readonly)
				[18]: var54_upvr (readonly)
				[19]: any_useState_result2_upvr (readonly)
				[20]: Analytics_upvr_result1_upvr (readonly)
				[21]: EventNames_upvr (copied, readonly)
				[22]: any_useContactsToastVariant_result1_upvr (readonly)
			]]
			if any_GetPlatform_result1_upvr == Enum.Platform.IOS then
				default_upvr:checkOrRequestPermissions({PermissionsProtocol_upvr.Permissions.CONTACTS_ACCESS}):andThen(function(arg1_8) -- Line 140
					--[[ Upvalues[14]:
						[1]: PermissionsProtocol_upvr (copied, readonly)
						[2]: updateOptedInUsers_upvr (copied, readonly)
						[3]: AppStorageService_upvr (copied, readonly)
						[4]: useLocalUserId_upvr_result1_upvr (copied, readonly)
						[5]: useDispatch_upvr_result1_upvr (copied, readonly)
						[6]: UpdateContactImporterModalLogic_upvr (copied, readonly)
						[7]: var56_upvr (copied, readonly)
						[8]: EnumScreens_upvr (copied, readonly)
						[9]: var51_upvr (copied, readonly)
						[10]: isPhoneVerified_upvr (copied, readonly)
						[11]: var53_upvr (copied, readonly)
						[12]: var55_upvr (copied, readonly)
						[13]: Promise_upvr (copied, readonly)
						[14]: var15_result1_upvr (copied, readonly)
					]]
					if arg1_8 == PermissionsProtocol_upvr.Status.AUTHORIZED then
						updateOptedInUsers_upvr:addUserToLocalStorage(AppStorageService_upvr, useLocalUserId_upvr_result1_upvr)
						useDispatch_upvr_result1_upvr(UpdateContactImporterModalLogic_upvr({
							hasOSPermissions = true;
							shouldShowContactImporterUpsellModal = false;
						}))
						var56_upvr(EnumScreens_upvr.ContactsList, {
							showToast = var51_upvr;
							shouldUpdateUserSettings = true;
							isPhoneVerified = isPhoneVerified_upvr;
							openLearnMoreLink = var53_upvr;
							openAmpUpsell = var55_upvr;
						})
						return Promise_upvr.resolve()
					end
					if arg1_8 == PermissionsProtocol_upvr.Status.DENIED then
						var56_upvr(EnumScreens_upvr.ContactsRevokedAccessDialog, {
							screenSize = var15_result1_upvr;
						})
						return Promise_upvr.resolve()
					end
					return Promise_upvr.reject()
				end)
			else
				var56_upvr(EnumScreens_upvr.ContactImporter, {
					showToast = var51_upvr;
					openLearnMoreLink = var53_upvr;
					isFromAddFriendsPage = false;
					isDiscoverabilityUnset = isDiscoverabilityUnset_upvr;
					isPhoneVerified = isPhoneVerified_upvr;
					openProfilePeekView = var54_upvr;
					openAmpUpsell = var55_upvr;
				})
			end
			any_useState_result2_upvr(false)
			Analytics_upvr_result1_upvr.fireAnalyticsEvent(EventNames_upvr.ContactsToastButtonPressed, {
				variant = any_useContactsToastVariant_result1_upvr;
			})
		end;
		onDismissed = function() -- Line 124
			--[[ Upvalues[4]:
				[1]: any_useState_result2_upvr (readonly)
				[2]: Analytics_upvr_result1_upvr (readonly)
				[3]: EventNames_upvr (copied, readonly)
				[4]: any_useContactsToastVariant_result1_upvr (readonly)
			]]
			any_useState_result2_upvr(false)
			Analytics_upvr_result1_upvr.fireAnalyticsEvent(EventNames_upvr.ContactsToastDismissed, {
				variant = any_useContactsToastVariant_result1_upvr;
			})
		end;
	}
	local var80
	if any_useContactsToastVariant_result1_upvr == Constants_upvr.Experiment.FIND_FRIENDS then
		var80 = useLocalization_upvr_result1.button
	else
		var80 = useLocalization_upvr_result1.buttonV2
	end
	tbl_3.buttonText = var80
	var80 = true
	tbl_3.swipeUpDismiss = var80
	tbl_8.toastContent = tbl_3
	local function _() -- Line 194
		--[[ Upvalues[3]:
			[1]: useLocalUserId_upvr_result1_upvr (readonly)
			[2]: useDispatch_upvr_result1_upvr (readonly)
			[3]: configureRoduxUsers_upvr (copied, readonly)
		]]
		if useLocalUserId_upvr_result1_upvr and 0 < string.len(useLocalUserId_upvr_result1_upvr) and useLocalUserId_upvr_result1_upvr ~= '0' then
			useDispatch_upvr_result1_upvr(configureRoduxUsers_upvr.GetUserV2FromUserId.API(useLocalUserId_upvr_result1_upvr))
		end
	end
	var80 = {}
	var80[1] = useLocalUserId_upvr_result1_upvr
	React_upvr.useEffect(function() -- Line 200
		--[[ Upvalues[3]:
			[1]: useLocalUserId_upvr_result1_upvr (readonly)
			[2]: useDispatch_upvr_result1_upvr (readonly)
			[3]: configureRoduxUsers_upvr (copied, readonly)
		]]
		if useLocalUserId_upvr_result1_upvr and 0 < string.len(useLocalUserId_upvr_result1_upvr) and useLocalUserId_upvr_result1_upvr ~= '0' then
			useDispatch_upvr_result1_upvr(configureRoduxUsers_upvr.GetUserV2FromUserId.API(useLocalUserId_upvr_result1_upvr))
		end
	end, var80)
	var80 = {}
	var80[1] = useLocalUserId_upvr_result1_upvr
	var80[2] = arg1.isContactsToastPolicyEnabled
	var80[3] = useSelector_upvr_result1_upvr
	var80[4] = var14_result1_upvr
	React_upvr.useEffect(function() -- Line 204
		--[[ Upvalues[14]:
			[1]: useLocalUserId_upvr_result1_upvr (readonly)
			[2]: var14_result1_upvr (readonly)
			[3]: game_DefineFastInt_result1_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: useSelector_upvr_result1_upvr (readonly)
			[6]: localStorageContactsToast_upvr (copied, readonly)
			[7]: default_upvr (readonly)
			[8]: PermissionsProtocol_upvr (copied, readonly)
			[9]: ExperienceService_upvr (copied, readonly)
			[10]: setTimeout_upvr (copied, readonly)
			[11]: any_useState_result2_upvr (readonly)
			[12]: Analytics_upvr_result1_upvr (readonly)
			[13]: EventNames_upvr (copied, readonly)
			[14]: any_useContactsToastVariant_result1_upvr (readonly)
		]]
		if useLocalUserId_upvr_result1_upvr and 0 < string.len(useLocalUserId_upvr_result1_upvr) and var14_result1_upvr and var14_result1_upvr.created then
			local any_match_result1, any_match_result2, any_match_result3_2 = var14_result1_upvr.created:match("(%d+)-(%d+)-(%d+)")
			if math.floor((os.time() - os.time({
				year = any_match_result1;
				month = any_match_result2;
				day = any_match_result3_2;
			})) / 86400) <= game_DefineFastInt_result1_upvr and arg1.isContactsToastPolicyEnabled and not useSelector_upvr_result1_upvr then
				local any_CheckUserHasNotSeen_result1 = localStorageContactsToast_upvr:CheckUserHasNotSeen(useLocalUserId_upvr_result1_upvr)
				if any_CheckUserHasNotSeen_result1 then
					if arg1.hasPermissions then
						any_CheckUserHasNotSeen_result1 = arg1.hasPermissions()
					else
						any_CheckUserHasNotSeen_result1 = default_upvr
						any_CheckUserHasNotSeen_result1 = any_CheckUserHasNotSeen_result1:hasPermissions({PermissionsProtocol_upvr.Permissions.CONTACTS_ACCESS})
					end
					any_CheckUserHasNotSeen_result1 = any_CheckUserHasNotSeen_result1:andThen
					any_CheckUserHasNotSeen_result1(function(arg1_10) -- Line 215
						--[[ Upvalues[9]:
							[1]: PermissionsProtocol_upvr (copied, readonly)
							[2]: localStorageContactsToast_upvr (copied, readonly)
							[3]: useLocalUserId_upvr_result1_upvr (copied, readonly)
							[4]: ExperienceService_upvr (copied, readonly)
							[5]: setTimeout_upvr (copied, readonly)
							[6]: any_useState_result2_upvr (copied, readonly)
							[7]: Analytics_upvr_result1_upvr (copied, readonly)
							[8]: EventNames_upvr (copied, readonly)
							[9]: any_useContactsToastVariant_result1_upvr (copied, readonly)
						]]
						if arg1_10.status == PermissionsProtocol_upvr.Status.DENIED and arg1_10.missingPermissions[1] == PermissionsProtocol_upvr.Permissions.CONTACTS_ACCESS or arg1_10.status ~= PermissionsProtocol_upvr.Status.DENIED and localStorageContactsToast_upvr:CheckUserHasNotOptedIn(useLocalUserId_upvr_result1_upvr) then
							ExperienceService_upvr:RegisterForExperienceLeave(function() -- Line 224
								--[[ Upvalues[7]:
									[1]: localStorageContactsToast_upvr (copied, readonly)
									[2]: useLocalUserId_upvr_result1_upvr (copied, readonly)
									[3]: setTimeout_upvr (copied, readonly)
									[4]: any_useState_result2_upvr (copied, readonly)
									[5]: Analytics_upvr_result1_upvr (copied, readonly)
									[6]: EventNames_upvr (copied, readonly)
									[7]: any_useContactsToastVariant_result1_upvr (copied, readonly)
								]]
								if localStorageContactsToast_upvr:CheckUserHasNotSeen(useLocalUserId_upvr_result1_upvr) then
									setTimeout_upvr(function() -- Line 227
										--[[ Upvalues[6]:
											[1]: any_useState_result2_upvr (copied, readonly)
											[2]: localStorageContactsToast_upvr (copied, readonly)
											[3]: useLocalUserId_upvr_result1_upvr (copied, readonly)
											[4]: Analytics_upvr_result1_upvr (copied, readonly)
											[5]: EventNames_upvr (copied, readonly)
											[6]: any_useContactsToastVariant_result1_upvr (copied, readonly)
										]]
										any_useState_result2_upvr(true)
										localStorageContactsToast_upvr:AddUser(useLocalUserId_upvr_result1_upvr)
										Analytics_upvr_result1_upvr.fireAnalyticsEvent(EventNames_upvr.ContactsToastSeen, {
											variant = any_useContactsToastVariant_result1_upvr;
										})
									end, 1000)
								end
							end)
						end
					end)
				end
			end
		end
	end, var80)
	if arg1.isContactsToastPolicyEnabled and not useSelector_upvr_result1_upvr and any_useState_result1 or arg1.testOverride then
		var80 = {}
		var80.DisplayOrder = 13
		return React_upvr.createElement("ScreenGui", var80, {React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 1, -20);
			Position = UDim2.new(0, 0, 0, 20);
		}, React_upvr.createElement(Toast_upvr, tbl_8))})
	end
	return nil
end