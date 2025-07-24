-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:24
-- Luau version 6, Types version 3
-- Time taken: 0.015999 seconds

local Parent = script.Parent.Parent.Parent.Parent
local dependencies = require(Parent.dependencies)
local Roact_upvr = dependencies.Roact
local Constants_upvr = require(Parent.Common.Constants)
local Analytics_upvr = require(Parent.Analytics)
local IXPVariants_upvr = require(Parent.Common.IXPVariants)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ContactsListContainer")
any_extend_result1.defaultProps = {
	contactsProtocol = dependencies.ContactsProtocol.default;
}
local setupFireAnalyticsEvents_upvr = require(Parent.Analytics.setupFireAnalyticsEvents)
local getFFlagPassNavigationIntoContactsList_upvr = require(Parent.Flags.getFFlagPassNavigationIntoContactsList)
local getDeepValue_upvr = dependencies.SocialLibraries.Dictionary.getDeepValue
local AmpApiProvider_upvr = dependencies.AmpUpsell.AmpApiProvider
local Promise_upvr = dependencies.Promise
local EventNames_upvr = Analytics_upvr.EventNames
local FieldNames_upvr = Analytics_upvr.FieldNames
local formatContacts_upvr = require(Parent.Utils.formatContacts)
local getFIntContactImporterUploadContactsMin_upvr = require(Parent.Flags.getFIntContactImporterUploadContactsMin)
local AccessResponseEnum_upvr = dependencies.AmpUpsell.AmpEnums.AccessResponseEnum
local EnumScreens_upvr = dependencies.SocialModalsCommon.EnumScreens
local DiscoverabilityAnalytics_upvr = dependencies.DiscoverabilityAnalytics
local getFFlagFindFriendsClickedEventEnabled_upvr = require(Parent.Flags.getFFlagFindFriendsClickedEventEnabled)
local Dash_upvr = dependencies.Dash
function any_extend_result1.init(arg1) -- Line 76
	--[[ Upvalues[17]:
		[1]: setupFireAnalyticsEvents_upvr (readonly)
		[2]: Analytics_upvr (readonly)
		[3]: getFFlagPassNavigationIntoContactsList_upvr (readonly)
		[4]: getDeepValue_upvr (readonly)
		[5]: AmpApiProvider_upvr (readonly)
		[6]: Promise_upvr (readonly)
		[7]: EventNames_upvr (readonly)
		[8]: FieldNames_upvr (readonly)
		[9]: formatContacts_upvr (readonly)
		[10]: IXPVariants_upvr (readonly)
		[11]: getFIntContactImporterUploadContactsMin_upvr (readonly)
		[12]: Constants_upvr (readonly)
		[13]: AccessResponseEnum_upvr (readonly)
		[14]: EnumScreens_upvr (readonly)
		[15]: DiscoverabilityAnalytics_upvr (readonly)
		[16]: getFFlagFindFriendsClickedEventEnabled_upvr (readonly)
		[17]: Dash_upvr (readonly)
	]]
	arg1.entryPoint = arg1.props.navigation.getParam("entryPoint")
	arg1.fireAnalyticsEvent = setupFireAnalyticsEvents_upvr({
		analytics = Analytics_upvr.AnalyticsService;
		defaultAnalyticsInfo = {
			entry = arg1.entryPoint;
		};
	})
	arg1.state = {
		hasUploadError = false;
		isFetching = true;
		showMatchedContacts = false;
	}
	function arg1.getPropOrParam(arg1_2) -- Line 93
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: getFFlagPassNavigationIntoContactsList_upvr (copied, readonly)
			[3]: getDeepValue_upvr (copied, readonly)
		]]
		if arg1.props.navigation and getFFlagPassNavigationIntoContactsList_upvr() and arg1.props.navigation.getParam(arg1_2) or arg1.props.navigation then
			return arg1.props.navigation.getParam(arg1_2)
		end
		return getDeepValue_upvr(arg1.props, arg1_2)
	end
	arg1.contactsCount = nil
	arg1.numTotalNumbersOnDevice = nil
	arg1.numTotalContactsOnDevice = nil
	arg1.numContactsWithMultipleNumbers = nil
	local os_clock_result1 = os.clock()
	arg1.startTime = os_clock_result1
	if arg1.props.ampApiProvider ~= nil then
		os_clock_result1 = arg1.props.ampApiProvider
	else
		os_clock_result1 = AmpApiProvider_upvr
	end
	arg1.ampApiProvider = os_clock_result1
	local function _(arg1_3) -- Line 115, Named "makeErrorFunction"
		--[[ Upvalues[2]:
			[1]: Promise_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return function(arg1_4) -- Line 116
			--[[ Upvalues[3]:
				[1]: Promise_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg1_3 (readonly)
			]]
			if type(arg1_4) == "table" and arg1_4.hasAlreadyErrored then
				return Promise_upvr.reject({
					hasAlreadyErrored = true;
				})
			end
			arg1:setState({
				hasUploadError = true;
				isFetching = false;
			})
			local tbl_3 = {}
			tbl_3.failedStep = arg1_3
			arg1.fireAnalyticsEvent(arg1_3, tbl_3)
			local tbl_8 = {
				isSuccessfulUpload = false;
			}
			tbl_8.failedStep = arg1_3
			arg1.fireContactImportingTimeEvent(tbl_8)
			return Promise_upvr.reject({
				hasAlreadyErrored = true;
			})
		end
	end
	local function _(arg1_5) -- Line 139
		--[[ Upvalues[1]:
			[1]: getDeepValue_upvr (copied, readonly)
		]]
		local var35 = arg1_5
		if not var35 then
			var35 = {}
		end
		local var11_result1 = getDeepValue_upvr(var35, "responseBody.userContactsEntities")
		if var11_result1 then
			return #var11_result1
		end
		return 0
	end
	local function _() -- Line 145
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.navigation then
			arg1.props.navigation.pop()
		elseif arg1.props.onClose then
			arg1.props.onClose()
		end
	end
	function arg1.requestFriendship(arg1_6) -- Line 153
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: EventNames_upvr (copied, readonly)
		]]
		local props_3_upvr = arg1.props
		local tbl_5 = {}
		tbl_5.requestedId = arg1_6
		arg1.fireAnalyticsEvent(EventNames_upvr.RequestFriendship, tbl_5)
		local tbl_2 = {
			currentUserId = props_3_upvr.localUserId;
		}
		tbl_2.contactId = arg1_6
		props_3_upvr.requestFriendship(tbl_2):andThen(function() -- Line 165
			--[[ Upvalues[2]:
				[1]: props_3_upvr (readonly)
				[2]: arg1_6 (readonly)
			]]
			props_3_upvr.requestSent(arg1_6)
		end)
	end
	function arg1.fireContactImportingTimeEvent(arg1_7) -- Line 170
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: FieldNames_upvr (copied, readonly)
		]]
		arg1.fireAnalyticsEvent(EventNames_upvr.ContactImportingTime, {
			[FieldNames_upvr.NumTotalContactsImported] = arg1.contactsCount;
			[FieldNames_upvr.NumMatchedContacts] = arg1_7.numMatchedContacts;
			[FieldNames_upvr.NumTotalContactsOnDevice] = arg1.numTotalContactsOnDevice;
			[FieldNames_upvr.NumMaxContacts] = true;
			[FieldNames_upvr.NumMinContacts] = true;
			[FieldNames_upvr.NumTotalNumbersOnDevice] = arg1.numTotalNumbersOnDevice;
			[FieldNames_upvr.NumContactsWithMultipleNumbers] = arg1.numContactsWithMultipleNumbers;
			loadingTime = os.clock() - arg1.startTime;
			isSuccessfulUpload = arg1_7.isSuccessfulUpload;
		})
	end
	function arg1.getContactsFromDevice() -- Line 188
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Promise_upvr (copied, readonly)
		]]
		local props_upvr = arg1.props
		return props_upvr.contactsProtocol:supportsContacts():andThen(function(arg1_8) -- Line 193
			--[[ Upvalues[2]:
				[1]: Promise_upvr (copied, readonly)
				[2]: props_upvr (readonly)
			]]
			if not arg1_8 then
				return Promise_upvr.reject()
			end
			return props_upvr.contactsProtocol:getContacts()
		end):catch(function() -- Line 200
			--[[ Upvalues[1]:
				[1]: Promise_upvr (copied, readonly)
			]]
			return Promise_upvr.reject()
		end)
	end
	function arg1.formatContactsFromDevice(arg1_9) -- Line 205
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: formatContacts_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local contacts = arg1_9.contacts
		if not contacts then
			contacts = {}
		end
		if #contacts == 0 then
			return {
				contacts = {};
				contactsCount = 0;
				countryCode = nil;
			}
		end
		arg1.props.deviceContactsReceived(arg1_9.contacts)
		local formatContacts_upvr_result1 = formatContacts_upvr(arg1_9)
		arg1.contactsCount = #formatContacts_upvr_result1.contacts
		arg1.numTotalContactsOnDevice = formatContacts_upvr_result1.contactsCount
		for _, v in ipairs(arg1_9.contacts) do
			local len = #v.phonenumber
			if 1 < len then
			end
		end
		arg1.numTotalNumbersOnDevice = 0 + len
		arg1.numContactsWithMultipleNumbers = 0 + 1
		return formatContacts_upvr_result1
	end
	function arg1.uploadDeviceContacts(arg1_10) -- Line 238
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: IXPVariants_upvr (copied, readonly)
			[3]: getFIntContactImporterUploadContactsMin_upvr (copied, readonly)
			[4]: Promise_upvr (copied, readonly)
			[5]: EventNames_upvr (copied, readonly)
		]]
		local props_2 = arg1.props
		if #arg1_10.contacts == 0 or props_2.variant == IXPVariants_upvr.INVITES_ONLY or #arg1_10.contacts < getFIntContactImporterUploadContactsMin_upvr() then
			return Promise_upvr.resolve({
				shouldFindContacts = false;
			})
		end
		return props_2.uploadContacts(arg1_10):andThen(function() -- Line 252
			--[[ Upvalues[1]:
				[1]: Promise_upvr (copied, readonly)
			]]
			return Promise_upvr.resolve({
				shouldFindContacts = true;
			})
		end, function() -- Line 254
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: EventNames_upvr (copied, readonly)
				[3]: Promise_upvr (copied, readonly)
			]]
			arg1.fireAnalyticsEvent(EventNames_upvr.FailedUploadContactsFromDevice, {
				failedStep = EventNames_upvr.FailedUploadContactsFromDevice;
			})
			arg1.fireContactImportingTimeEvent({
				isSuccessfulUpload = false;
				failedStep = EventNames_upvr.FailedUploadContactsFromDevice;
			})
			return Promise_upvr.resolve({
				shouldFindContacts = true;
			})
		end)
	end
	function arg1.findContacts(arg1_11) -- Line 268
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Promise_upvr (copied, readonly)
		]]
		if arg1_11.shouldFindContacts then
			return arg1.props.findContacts()
		end
		return Promise_upvr.resolve()
	end
	function arg1.getContactEntities(arg1_12) -- Line 277
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Promise_upvr (copied, readonly)
		]]
		if arg1_12 then
			return arg1.props.getContactEntities(arg1_12)
		end
		return Promise_upvr.resolve()
	end
	function arg1.fireHasLoaded(arg1_13) -- Line 287
		--[[ Upvalues[5]:
			[1]: getDeepValue_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EventNames_upvr (copied, readonly)
			[4]: FieldNames_upvr (copied, readonly)
			[5]: Promise_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var77 = arg1_13
		if not var77 then
			var77 = {}
		end
		local getDeepValue_upvr_result1 = getDeepValue_upvr(var77, "responseBody.userContactsEntities")
		if getDeepValue_upvr_result1 then
			local _ = #getDeepValue_upvr_result1
		else
		end
		arg1.fireAnalyticsEvent(EventNames_upvr.ContactsListLoaded, {
			[FieldNames_upvr.NumTotalContactsImported] = arg1.contactsCount;
			[FieldNames_upvr.NumMatchedContacts] = 0;
			[FieldNames_upvr.NumMaxContacts] = true;
			[FieldNames_upvr.NumMinContacts] = true;
			[FieldNames_upvr.NumTotalContactsOnDevice] = arg1.numTotalContactsOnDevice;
		})
		arg1:setState({
			isFetching = false;
		})
		local tbl = {
			isSuccessfulUpload = true;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.nummatchedContacts = 0
		arg1.fireContactImportingTimeEvent(tbl)
		return Promise_upvr.resolve()
	end
	function arg1.failedToUpload(arg1_14) -- Line 309
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			hasUploadError = true;
			isFetching = false;
		})
		arg1.fireContactImportingTimeEvent({
			isSuccessfulUpload = false;
		})
	end
	function arg1.getContacts() -- Line 318
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: AccessResponseEnum_upvr (copied, readonly)
			[4]: EventNames_upvr (copied, readonly)
			[5]: Promise_upvr (copied, readonly)
		]]
		arg1:setState({
			isFetching = true;
		})
		local tbl_7 = {Constants_upvr.SHOW_MATCHED_CONTACTS}
		local any_getFeatureAccess_result1 = arg1.ampApiProvider.getFeatureAccess(tbl_7)
		local var90
		if 0 < #any_getFeatureAccess_result1.featureAccessList then
			tbl_7 = any_getFeatureAccess_result1.featureAccessList[1].access
		else
			tbl_7 = AccessResponseEnum_upvr.Actionable
		end
		if tbl_7 ~= AccessResponseEnum_upvr.Granted then
			var90 = false
		else
			var90 = true
		end
		arg1:setState({
			showMatchedContacts = var90;
		})
		if arg1.props.isPVRequired and not var90 then
			local FailedGetContactsFromDevice_upvr = EventNames_upvr.FailedGetContactsFromDevice
			FailedGetContactsFromDevice_upvr = EventNames_upvr.FailedFormatContactsFromDevice
			arg1.getContactsFromDevice():andThen(arg1.formatContactsFromDevice, function(arg1_15) -- Line 116
				--[[ Upvalues[3]:
					[1]: Promise_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: FailedGetContactsFromDevice_upvr (readonly)
				]]
				if type(arg1_15) == "table" and arg1_15.hasAlreadyErrored then
					return Promise_upvr.reject({
						hasAlreadyErrored = true;
					})
				end
				arg1:setState({
					hasUploadError = true;
					isFetching = false;
				})
				arg1.fireAnalyticsEvent(FailedGetContactsFromDevice_upvr, {
					failedStep = FailedGetContactsFromDevice_upvr;
				})
				arg1.fireContactImportingTimeEvent({
					isSuccessfulUpload = false;
					failedStep = FailedGetContactsFromDevice_upvr;
				})
				return Promise_upvr.reject({
					hasAlreadyErrored = true;
				})
			end):andThen(arg1.fireHasLoaded, function(arg1_16) -- Line 116
				--[[ Upvalues[3]:
					[1]: Promise_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: FailedGetContactsFromDevice_upvr (readonly)
				]]
				if type(arg1_16) == "table" and arg1_16.hasAlreadyErrored then
					return Promise_upvr.reject({
						hasAlreadyErrored = true;
					})
				end
				arg1:setState({
					hasUploadError = true;
					isFetching = false;
				})
				arg1.fireAnalyticsEvent(FailedGetContactsFromDevice_upvr, {
					failedStep = FailedGetContactsFromDevice_upvr;
				})
				arg1.fireContactImportingTimeEvent({
					isSuccessfulUpload = false;
					failedStep = FailedGetContactsFromDevice_upvr;
				})
				return Promise_upvr.reject({
					hasAlreadyErrored = true;
				})
			end):catch(arg1.failedToUpload)
		else
			FailedGetContactsFromDevice_upvr = EventNames_upvr.FailedGetContactsFromDevice
			FailedGetContactsFromDevice_upvr = EventNames_upvr.FailedFormatContactsFromDevice
			FailedGetContactsFromDevice_upvr = EventNames_upvr.FailedUploadContactsFromDevice
			FailedGetContactsFromDevice_upvr = EventNames_upvr.FailedFindContacts
			FailedGetContactsFromDevice_upvr = EventNames_upvr.FailedGetContactEntities
			arg1.getContactsFromDevice():andThen(arg1.formatContactsFromDevice, function(arg1_17) -- Line 116
				--[[ Upvalues[3]:
					[1]: Promise_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: FailedGetContactsFromDevice_upvr (readonly)
				]]
				if type(arg1_17) == "table" and arg1_17.hasAlreadyErrored then
					return Promise_upvr.reject({
						hasAlreadyErrored = true;
					})
				end
				arg1:setState({
					hasUploadError = true;
					isFetching = false;
				})
				arg1.fireAnalyticsEvent(FailedGetContactsFromDevice_upvr, {
					failedStep = FailedGetContactsFromDevice_upvr;
				})
				arg1.fireContactImportingTimeEvent({
					isSuccessfulUpload = false;
					failedStep = FailedGetContactsFromDevice_upvr;
				})
				return Promise_upvr.reject({
					hasAlreadyErrored = true;
				})
			end):andThen(arg1.uploadDeviceContacts, function(arg1_18) -- Line 116
				--[[ Upvalues[3]:
					[1]: Promise_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: FailedGetContactsFromDevice_upvr (readonly)
				]]
				if type(arg1_18) == "table" and arg1_18.hasAlreadyErrored then
					return Promise_upvr.reject({
						hasAlreadyErrored = true;
					})
				end
				arg1:setState({
					hasUploadError = true;
					isFetching = false;
				})
				arg1.fireAnalyticsEvent(FailedGetContactsFromDevice_upvr, {
					failedStep = FailedGetContactsFromDevice_upvr;
				})
				arg1.fireContactImportingTimeEvent({
					isSuccessfulUpload = false;
					failedStep = FailedGetContactsFromDevice_upvr;
				})
				return Promise_upvr.reject({
					hasAlreadyErrored = true;
				})
			end):andThen(arg1.findContacts, function(arg1_19) -- Line 116
				--[[ Upvalues[3]:
					[1]: Promise_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: FailedGetContactsFromDevice_upvr (readonly)
				]]
				if type(arg1_19) == "table" and arg1_19.hasAlreadyErrored then
					return Promise_upvr.reject({
						hasAlreadyErrored = true;
					})
				end
				arg1:setState({
					hasUploadError = true;
					isFetching = false;
				})
				arg1.fireAnalyticsEvent(FailedGetContactsFromDevice_upvr, {
					failedStep = FailedGetContactsFromDevice_upvr;
				})
				arg1.fireContactImportingTimeEvent({
					isSuccessfulUpload = false;
					failedStep = FailedGetContactsFromDevice_upvr;
				})
				return Promise_upvr.reject({
					hasAlreadyErrored = true;
				})
			end):andThen(arg1.getContactEntities, function(arg1_20) -- Line 116
				--[[ Upvalues[3]:
					[1]: Promise_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: FailedGetContactsFromDevice_upvr (readonly)
				]]
				if type(arg1_20) == "table" and arg1_20.hasAlreadyErrored then
					return Promise_upvr.reject({
						hasAlreadyErrored = true;
					})
				end
				arg1:setState({
					hasUploadError = true;
					isFetching = false;
				})
				arg1.fireAnalyticsEvent(FailedGetContactsFromDevice_upvr, {
					failedStep = FailedGetContactsFromDevice_upvr;
				})
				arg1.fireContactImportingTimeEvent({
					isSuccessfulUpload = false;
					failedStep = FailedGetContactsFromDevice_upvr;
				})
				return Promise_upvr.reject({
					hasAlreadyErrored = true;
				})
			end):andThen(arg1.fireHasLoaded, function(arg1_21) -- Line 116
				--[[ Upvalues[3]:
					[1]: Promise_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: FailedGetContactsFromDevice_upvr (readonly)
				]]
				if type(arg1_21) == "table" and arg1_21.hasAlreadyErrored then
					return Promise_upvr.reject({
						hasAlreadyErrored = true;
					})
				end
				arg1:setState({
					hasUploadError = true;
					isFetching = false;
				})
				arg1.fireAnalyticsEvent(FailedGetContactsFromDevice_upvr, {
					failedStep = FailedGetContactsFromDevice_upvr;
				})
				arg1.fireContactImportingTimeEvent({
					isSuccessfulUpload = false;
					failedStep = FailedGetContactsFromDevice_upvr;
				})
				return Promise_upvr.reject({
					hasAlreadyErrored = true;
				})
			end):catch(arg1.failedToUpload)
		end
	end
	function arg1.closeModal(arg1_22) -- Line 348
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: IXPVariants_upvr (copied, readonly)
		]]
		local tbl_4 = {}
		local any_isFetching_result1 = arg1.isFetching(arg1.props.variant, IXPVariants_upvr)
		tbl_4.isLoading = any_isFetching_result1
		if arg1.state.isFetching then
			any_isFetching_result1 = os.clock() - arg1.startTime
		else
			any_isFetching_result1 = nil
		end
		tbl_4.loadingTime = any_isFetching_result1
		arg1.fireAnalyticsEvent(arg1_22, tbl_4)
		if arg1.props.navigation then
			arg1.props.navigation.pop()
		elseif arg1.props.onClose then
			arg1.props.onClose()
		end
	end
	function arg1.onAddFriendsActivated() -- Line 360
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: EnumScreens_upvr (copied, readonly)
		]]
		arg1.props.navigation.replace(EnumScreens_upvr.AddFriendsPage)
	end
	function arg1.isFetching(arg1_23, arg2) -- Line 367
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_23 == arg2.BLENDED then
			return arg1.state.isFetching
		end
		return false
	end
	function arg1.openDiscoverabilityModal() -- Line 372
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: EnumScreens_upvr (copied, readonly)
			[3]: DiscoverabilityAnalytics_upvr (copied, readonly)
			[4]: Constants_upvr (copied, readonly)
			[5]: AccessResponseEnum_upvr (copied, readonly)
			[6]: getFFlagFindFriendsClickedEventEnabled_upvr (copied, readonly)
			[7]: EventNames_upvr (copied, readonly)
			[8]: Dash_upvr (copied, readonly)
		]]
		local navigation_upvr = arg1.props.navigation
		local tbl_6 = {
			isStandaloneDiscoverabilityModal = true;
			entryPoint = DiscoverabilityAnalytics_upvr.EntryPoints.ContactsList;
			navigateOnActivated = function() -- Line 379, Named "navigateOnActivated"
				--[[ Upvalues[4]:
					[1]: navigation_upvr (readonly)
					[2]: EnumScreens_upvr (copied, readonly)
					[3]: Constants_upvr (copied, readonly)
					[4]: arg1 (copied, readonly)
				]]
				navigation_upvr.replace(EnumScreens_upvr.ContactsList, {
					[Constants_upvr.SHOULD_UPDATE_USER_SETTINGS] = true;
					[Constants_upvr.IS_PHONE_VERIFIED] = arg1.getPropOrParam(Constants_upvr.IS_PHONE_VERIFIED);
					openAmpUpsell = arg1.getPropOrParam(Constants_upvr.OPEN_AMP_UPSELL);
					entryPoint = arg1.entryPoint;
				})
			end;
		}
		navigation_upvr.replace(EnumScreens_upvr.DiscoverabilityOverlay, tbl_6)
		tbl_6 = Constants_upvr
		local var146 = tbl_6
		local any_getPropOrParam_result1_upvr = arg1.getPropOrParam(var146.OPEN_AMP_UPSELL)
		if any_getPropOrParam_result1_upvr then
			function var146() -- Line 393
				--[[ Upvalues[6]:
					[1]: AccessResponseEnum_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: getFFlagFindFriendsClickedEventEnabled_upvr (copied, readonly)
					[4]: EventNames_upvr (copied, readonly)
					[5]: any_getPropOrParam_result1_upvr (readonly)
					[6]: Constants_upvr (copied, readonly)
				]]
				if getFFlagFindFriendsClickedEventEnabled_upvr() then
					arg1.fireAnalyticsEvent(EventNames_upvr.FindFriendsButtonClicked)
				end
				any_getPropOrParam_result1_upvr(Constants_upvr.SHOW_MATCHED_CONTACTS, function(arg1_24, arg2) -- Line 394
					--[[ Upvalues[2]:
						[1]: AccessResponseEnum_upvr (copied, readonly)
						[2]: arg1 (copied, readonly)
					]]
					if arg1_24 == AccessResponseEnum_upvr.Granted then
						arg1.getContacts()
						arg1.openDiscoverabilityModal()
					end
				end)
			end
		else
			var146 = Dash_upvr.noop
		end
		arg1.openAmpUpsell = var146
	end
end
local FFlagRemoveCanUploadContacts_upvr = require(Parent.Parent.SharedFlags).FFlagRemoveCanUploadContacts
function any_extend_result1.didMount(arg1) -- Line 410
	--[[ Upvalues[2]:
		[1]: FFlagRemoveCanUploadContacts_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	if FFlagRemoveCanUploadContacts_upvr then
		arg1.getContacts()
	else
		if arg1.getPropOrParam(Constants_upvr.SHOULD_UPDATE_USER_SETTINGS) then
			arg1.props.updateUserSettings():andThen(arg1.getContacts):catch(function() -- Line 418
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.failedToUpload()
			end)
			return
		end
		arg1.getContacts()
	end
end
local ContactsList_upvr = require(script.Parent.ContactsList)
function any_extend_result1.render(arg1) -- Line 427
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: ContactsList_upvr (readonly)
		[3]: IXPVariants_upvr (readonly)
		[4]: Analytics_upvr (readonly)
	]]
	local props = arg1.props
	local module = {
		deviceContacts = props.deviceContacts;
		matchedContacts = props.matchedContacts;
		isFetching = arg1.isFetching(props.variant, IXPVariants_upvr);
		requestFriendship = arg1.requestFriendship;
		screenSize = props.screenSize;
		hasUploadError = arg1.state.hasUploadError;
		onAddFriendsActivated = arg1.onAddFriendsActivated;
	}
	local closeModal_2 = arg1.closeModal
	module.closeModal = closeModal_2
	if arg1.entryPoint ~= Analytics_upvr.EntryPoints.HomePage then
		closeModal_2 = false
	else
		closeModal_2 = true
	end
	module.showAddFriendsButton = closeModal_2
	module.variant = props.variant
	module.showFindFriendsBannerVariant = props.showFindFriendsBannerVariant
	module.openProfilePeekView = arg1.props.openProfilePeekView
	module.showMatchedContacts = arg1.state.showMatchedContacts
	module.openAmpUpsell = arg1.openAmpUpsell
	return Roact_upvr.createElement(ContactsList_upvr, module)
end
return dependencies.RoactRodux.connect(require(script.Parent.ContactsListMapStateToProps), require(script.Parent.ContactsListMapDispatchToProps))(any_extend_result1)