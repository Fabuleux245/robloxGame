-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:40
-- Luau version 6, Types version 3
-- Time taken: 0.006661 seconds

local Parent = script.Parent.Parent.Parent.Parent
local dependencies = require(Parent.dependencies)
local Constants_upvr = require(Parent.Common.Constants)
local Analytics_upvr = require(Parent.Analytics)
local Roact_upvr = dependencies.Roact
local PermissionsProtocol_upvr = dependencies.PermissionsProtocol
local AppStorageService_upvr = dependencies.AppStorageService
local any_extend_result1 = Roact_upvr.PureComponent:extend("ContactsImporterOverlayContainer")
any_extend_result1.defaultProps = {
	checkOrRequestPermissions = function(arg1) -- Line 44, Named "checkOrRequestPermissions"
		--[[ Upvalues[1]:
			[1]: PermissionsProtocol_upvr (readonly)
		]]
		return PermissionsProtocol_upvr.default:checkOrRequestPermissions(arg1)
	end;
	localUserId = "";
	handleShowToastForTests = nil;
}
local DiscoverabilityAnalytics_upvr = dependencies.DiscoverabilityAnalytics
local TextKeys_upvr = require(Parent.Common.TextKeys)
local updateOptedInUsers_upvr = dependencies.SocialModalsCommon.Utils.updateOptedInUsers
local EnumScreens_upvr = dependencies.SocialModalsCommon.EnumScreens
local Promise_upvr = dependencies.Promise
function any_extend_result1.init(arg1) -- Line 52
	--[[ Upvalues[9]:
		[1]: Constants_upvr (readonly)
		[2]: DiscoverabilityAnalytics_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: PermissionsProtocol_upvr (readonly)
		[5]: TextKeys_upvr (readonly)
		[6]: updateOptedInUsers_upvr (readonly)
		[7]: AppStorageService_upvr (readonly)
		[8]: EnumScreens_upvr (readonly)
		[9]: Promise_upvr (readonly)
	]]
	local any_getParam_result1 = arg1.props.navigation.getParam(Constants_upvr.IS_FROM_ADD_FRIENDS_PAGE, false)
	arg1.isFromAddFriendsPage = any_getParam_result1
	if arg1.isFromAddFriendsPage then
		any_getParam_result1 = DiscoverabilityAnalytics_upvr.EntryPoints.AddFriends
	else
		any_getParam_result1 = DiscoverabilityAnalytics_upvr.EntryPoints.HomePage
	end
	arg1.entryPoint = any_getParam_result1
	arg1.fireAnalyticsEvent = Analytics_upvr.setupFireAnalyticsEvents({
		analytics = Analytics_upvr.AnalyticsService;
		defaultAnalyticsInfo = {
			entry = arg1.entryPoint;
		};
	})
	function arg1.checkOrRequestContactsPermissions() -- Line 67
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: PermissionsProtocol_upvr (copied, readonly)
		]]
		return arg1.props.checkOrRequestPermissions({PermissionsProtocol_upvr.Permissions.CONTACTS_ACCESS})
	end
	function arg1.failedToUpload(arg1_2) -- Line 74
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: TextKeys_upvr (copied, readonly)
		]]
		arg1.props.showToast(TextKeys_upvr.CI_FAILED)
	end
	function arg1.closeModal() -- Line 81
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.navigation.pop()
	end
	local any_getParam_result1_2_upvr = arg1.props.navigation.getParam(Constants_upvr.OPEN_AMP_UPSELL)
	function arg1.permissionsFlowToContactImporter() -- Line 85
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: PermissionsProtocol_upvr (copied, readonly)
			[4]: updateOptedInUsers_upvr (copied, readonly)
			[5]: AppStorageService_upvr (copied, readonly)
			[6]: EnumScreens_upvr (copied, readonly)
			[7]: any_getParam_result1_2_upvr (readonly)
			[8]: Promise_upvr (copied, readonly)
		]]
		local props_3_upvr = arg1.props
		local navigation_2_upvr = props_3_upvr.navigation
		local any_getParam_result1_upvr = navigation_2_upvr.getParam(Constants_upvr.IS_FROM_SIGNUP)
		arg1.checkOrRequestContactsPermissions():andThen(function(arg1_3) -- Line 91
			--[[ Upvalues[11]:
				[1]: PermissionsProtocol_upvr (copied, readonly)
				[2]: updateOptedInUsers_upvr (copied, readonly)
				[3]: AppStorageService_upvr (copied, readonly)
				[4]: props_3_upvr (readonly)
				[5]: any_getParam_result1_upvr (readonly)
				[6]: navigation_2_upvr (readonly)
				[7]: EnumScreens_upvr (copied, readonly)
				[8]: Constants_upvr (copied, readonly)
				[9]: any_getParam_result1_2_upvr (copied, readonly)
				[10]: arg1 (copied, readonly)
				[11]: Promise_upvr (copied, readonly)
			]]
			if arg1_3 == PermissionsProtocol_upvr.Status.AUTHORIZED then
				updateOptedInUsers_upvr:addUserToLocalStorage(AppStorageService_upvr, props_3_upvr.localUserId)
				if any_getParam_result1_upvr then
					props_3_upvr.updateUserSettings()
					props_3_upvr.navigation.pop()
				else
					props_3_upvr.hideContactImporterModal()
					navigation_2_upvr.replace(EnumScreens_upvr.ContactsList, {
						[Constants_upvr.SHOULD_UPDATE_USER_SETTINGS] = true;
						[Constants_upvr.IS_PHONE_VERIFIED] = navigation_2_upvr.getParam(Constants_upvr.IS_PHONE_VERIFIED);
						[Constants_upvr.OPEN_LEARN_MORE_LINK] = navigation_2_upvr.getParam(Constants_upvr.OPEN_LEARN_MORE_LINK);
						openAmpUpsell = any_getParam_result1_2_upvr;
						entryPoint = arg1.entryPoint;
					})
				end
				return Promise_upvr.resolve()
			end
			if arg1_3 == PermissionsProtocol_upvr.Status.DENIED then
				navigation_2_upvr.replace(EnumScreens_upvr.ContactsRevokedAccessDialog, {
					screenSize = props_3_upvr.screenSize;
					closeModal = arg1.closeModal;
				})
				return Promise_upvr.resolve()
			end
			return Promise_upvr.reject()
		end):catch(arg1.failedToUpload)
	end
	function arg1.checkDiscoverability(arg1_4) -- Line 122
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		return arg1_4 and arg1.props.navigation.getParam(Constants_upvr.IS_PHONE_VERIFIED)
	end
	function arg1.onConnectContacts() -- Line 128
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Analytics_upvr (copied, readonly)
		]]
		arg1.fireAnalyticsEvent(Analytics_upvr.EventNames.ContactImportModalContinue)
		if arg1.checkDiscoverability(arg1.props.navigation.getParam("isDiscoverabilityUnset")) then
			arg1.navigateToDiscoverabilityModal()
		else
			arg1.permissionsFlowToContactImporter()
		end
	end
	function arg1.navigateToDiscoverabilityModal() -- Line 140
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: EnumScreens_upvr (copied, readonly)
		]]
		local props = arg1.props
		local navigation_upvr = props.navigation
		props.getUserSettingsMetadata():andThen(function() -- Line 144
			--[[ Upvalues[3]:
				[1]: navigation_upvr (readonly)
				[2]: EnumScreens_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
			]]
			navigation_upvr.replace(EnumScreens_upvr.DiscoverabilityOverlay, {
				entryPoint = arg1.entryPoint;
			})
		end)
	end
	function arg1.onAddFriendsActivated() -- Line 151
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Analytics_upvr (copied, readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		arg1.fireAnalyticsEvent(Analytics_upvr.EventNames.ContactImportModalAddFriends)
		arg1.props.navigation.replace(EnumScreens_upvr.AddFriendsPage)
	end
	function arg1.onCloseClicked() -- Line 158
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Analytics_upvr (copied, readonly)
		]]
		arg1.fireAnalyticsEvent(Analytics_upvr.EventNames.ContactImportModalClose)
		arg1.props.navigation.pop()
	end
	function arg1.onLearnMoreClick() -- Line 164
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.openLearnMoreLink()
	end
end
local contactImporterModalInfoUpdater_upvr = require(Parent.Utils.contactImporterModalInfoUpdater)
function any_extend_result1.didMount(arg1) -- Line 171
	--[[ Upvalues[3]:
		[1]: Analytics_upvr (readonly)
		[2]: contactImporterModalInfoUpdater_upvr (readonly)
		[3]: AppStorageService_upvr (readonly)
	]]
	arg1.fireAnalyticsEvent(Analytics_upvr.EventNames.ContactImportModalPageLoad)
	contactImporterModalInfoUpdater_upvr:addSeenCount(AppStorageService_upvr, arg1.props.localUserId)
	contactImporterModalInfoUpdater_upvr:updateTimestamp(AppStorageService_upvr, arg1.props.localUserId, DateTime.now().UnixTimestampMillis)
end
local ContactsImporterOverlay_upvr = require(script.Parent.ContactsImporterOverlay)
function any_extend_result1.render(arg1) -- Line 183
	--[[ Upvalues[3]:
		[1]: Constants_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ContactsImporterOverlay_upvr (readonly)
	]]
	local props_2 = arg1.props
	local navigation = props_2.navigation
	local module = {
		screenSize = props_2.screenSize;
		onCloseClicked = arg1.onCloseClicked;
		onAddFriendsActivated = arg1.onAddFriendsActivated;
		onConnectContacts = arg1.onConnectContacts;
	}
	local onLearnMoreClick_2 = arg1.onLearnMoreClick
	module.onLearnMoreClick = onLearnMoreClick_2
	module.isFromAddFriendsPage = navigation.getParam(Constants_upvr.IS_FROM_ADD_FRIENDS_PAGE, false)
	if navigation.getParam(Constants_upvr.IS_FROM_SOCIAL_ONBOARDING_BUTTONS) then
		onLearnMoreClick_2 = true
	else
		onLearnMoreClick_2 = arg1.props.navigation.getParam(Constants_upvr.IS_FROM_SIGNUP)
	end
	module.isFromSignup = onLearnMoreClick_2
	return Roact_upvr.createElement(ContactsImporterOverlay_upvr, module)
end
local Selectors_upvr = dependencies.RoduxContacts.Selectors
return dependencies.RoactRodux.connect(function(arg1) -- Line 201
	--[[ Upvalues[1]:
		[1]: Selectors_upvr (readonly)
	]]
	return {
		contacts = Selectors_upvr.sortContacts(arg1);
		localUserId = arg1.LocalUserId;
		screenSize = arg1.ScreenSize;
	}
end, require(script.Parent.mapDispatchToProps))(any_extend_result1)