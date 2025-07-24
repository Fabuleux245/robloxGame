-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:08
-- Luau version 6, Types version 3
-- Time taken: 0.011123 seconds

local StreamNotifications = script:FindFirstAncestor("StreamNotifications")
local components = StreamNotifications.components
local Parent = StreamNotifications.Parent
local ThirdPartyUserService_upvr = game:GetService("ThirdPartyUserService")
local NotificationsCommon_upvr = require(Parent.NotificationsCommon)
local HttpRequest = require(Parent.HttpRequest)
local tbl_2 = {}
local HttpRbxApi = HttpRequest.requestFunctions.HttpRbxApi
tbl_2.requestFunction = HttpRbxApi
if require(Parent.SharedFlags).FFlagLuaAppDefaultHttpRetry then
	HttpRbxApi = game:DefineFastInt("StreamNotificationsContentHttpRetryCount", 4)
else
	HttpRbxApi = nil
end
tbl_2.maxRetryCount = HttpRbxApi
local UIBlox = require(Parent.UIBlox)
local SharedFlags = require(Parent.SharedFlags)
local GetFFlagFilterNotificationsForPCGDKEnabled_upvr = SharedFlags.GetFFlagFilterNotificationsForPCGDKEnabled
local function _() -- Line 68, Named "GetIsFriendCommunicationRestricted"
	--[[ Upvalues[2]:
		[1]: GetFFlagFilterNotificationsForPCGDKEnabled_upvr (readonly)
		[2]: ThirdPartyUserService_upvr (readonly)
	]]
	local GetFFlagFilterNotificationsForPCGDKEnabled_upvr_result1 = GetFFlagFilterNotificationsForPCGDKEnabled_upvr()
	if GetFFlagFilterNotificationsForPCGDKEnabled_upvr_result1 then
		GetFFlagFilterNotificationsForPCGDKEnabled_upvr_result1 = ThirdPartyUserService_upvr
		if GetFFlagFilterNotificationsForPCGDKEnabled_upvr_result1 then
			GetFFlagFilterNotificationsForPCGDKEnabled_upvr_result1 = ThirdPartyUserService_upvr:IsChatRestrictionSupported()
			if GetFFlagFilterNotificationsForPCGDKEnabled_upvr_result1 then
				if ThirdPartyUserService_upvr.FriendCommunicationRestrictionStatus == Enum.ChatRestrictionStatus.NotRestricted then
					GetFFlagFilterNotificationsForPCGDKEnabled_upvr_result1 = false
				else
					GetFFlagFilterNotificationsForPCGDKEnabled_upvr_result1 = true
				end
			end
		end
	end
	return GetFFlagFilterNotificationsForPCGDKEnabled_upvr_result1
end
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useDeviceType_upvr = require(Parent.RobloxAppHooks).useDeviceType
local React_upvr = require(Parent.React)
local EnumStreamNotificationsDisplayState_upvr = require(StreamNotifications.EnumStreamNotificationsDisplayState)
local EnumStreamNotificationsLoadingMoreState_upvr = require(StreamNotifications.EnumStreamNotificationsLoadingMoreState)
local UserInputService_upvr = game:GetService("UserInputService")
local constants_upvr = require(StreamNotifications.constants)
local getStreamNotifications_upvr = require(StreamNotifications.utils.getStreamNotifications)
local any_config_result1_upvr = HttpRequest.config(tbl_2)
local sortNotifications_upvr = require(StreamNotifications.utils.sortNotifications)
local GetFStringPCGDKFilteredNotificationTypes_upvr = SharedFlags.GetFStringPCGDKFilteredNotificationTypes
local Cryo_upvr = require(Parent.Cryo)
local NotificationHelper_upvr = NotificationsCommon_upvr.NotificationHelper
local EventStream_upvr = require(StreamNotifications.analytics.analyticsService).EventStream
local analyticsConstants_upvr = require(StreamNotifications.analytics.analyticsConstants)
local clearUnreadNotifications_upvr = require(StreamNotifications.utils.clearUnreadNotifications)
local postReportNotification_upvr = require(StreamNotifications.utils.postReportNotification)
local Players_upvr = game:GetService("Players")
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("LuaAppNewStreamNotificationsLogFix", false)
local type_upvr = NotificationsCommon_upvr.type
local JoinExperience_upvr = NotificationsCommon_upvr.JoinExperience
local SessionService_upvr = game:GetService("SessionService")
local reportEvent_upvr = require(StreamNotifications.utils.reportEvent)
local any_new_result1_upvr = require(Parent.Analytics).AnalyticsReporters.EventIngest.new(game:GetService("EventIngestService"))
local postNotificationsApi_upvr = require(StreamNotifications.utils.postNotificationsApi)
local MetaActionsMenu_upvr = require(components.MetaActionsMenu)
local LoadingSpinner_upvr = UIBlox.App.Loading.LoadingSpinner
local StreamNotificationBundleWrapper_upvr = require(components.StreamNotificationBundleWrapper)
local StreamNotificationAnimationWrapper_upvr = require(components.StreamNotificationAnimationWrapper)
local EmptyNotifications_upvr = require(components.EmptyNotifications)
local GuiService_upvr = game:GetService("GuiService")
local FFlagLuaAppNotifStreamFocusNav_upvr = require(Parent.SharedFlags).FFlagLuaAppNotifStreamFocusNav
return function(arg1) -- Line 82
	--[[ Upvalues[38]:
		[1]: useStyle_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useDeviceType_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: EnumStreamNotificationsDisplayState_upvr (readonly)
		[6]: EnumStreamNotificationsLoadingMoreState_upvr (readonly)
		[7]: UserInputService_upvr (readonly)
		[8]: constants_upvr (readonly)
		[9]: getStreamNotifications_upvr (readonly)
		[10]: any_config_result1_upvr (readonly)
		[11]: sortNotifications_upvr (readonly)
		[12]: GetFFlagFilterNotificationsForPCGDKEnabled_upvr (readonly)
		[13]: GetFStringPCGDKFilteredNotificationTypes_upvr (readonly)
		[14]: ThirdPartyUserService_upvr (readonly)
		[15]: Cryo_upvr (readonly)
		[16]: NotificationHelper_upvr (readonly)
		[17]: EventStream_upvr (readonly)
		[18]: analyticsConstants_upvr (readonly)
		[19]: clearUnreadNotifications_upvr (readonly)
		[20]: postReportNotification_upvr (readonly)
		[21]: Players_upvr (readonly)
		[22]: NavigateDown_upvr (readonly)
		[23]: AppPage_upvr (readonly)
		[24]: game_DefineFastFlag_result1_upvr (readonly)
		[25]: type_upvr (readonly)
		[26]: JoinExperience_upvr (readonly)
		[27]: SessionService_upvr (readonly)
		[28]: reportEvent_upvr (readonly)
		[29]: any_new_result1_upvr (readonly)
		[30]: postNotificationsApi_upvr (readonly)
		[31]: NotificationsCommon_upvr (readonly)
		[32]: MetaActionsMenu_upvr (readonly)
		[33]: LoadingSpinner_upvr (readonly)
		[34]: StreamNotificationBundleWrapper_upvr (readonly)
		[35]: StreamNotificationAnimationWrapper_upvr (readonly)
		[36]: EmptyNotifications_upvr (readonly)
		[37]: GuiService_upvr (readonly)
		[38]: FFlagLuaAppNotifStreamFocusNav_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 53 start (CF ANALYSIS FAILED)
	local any_useState_result1_4_upvr, any_useState_result2_upvr_4 = React_upvr.useState({})
	local any_useState_result1_2_upvr, any_useState_result2_upvr = React_upvr.useState(nil)
	local any_useState_result1_3_upvr, any_useState_result2_upvr_2 = React_upvr.useState(EnumStreamNotificationsDisplayState_upvr.Initializing)
	local var121_upvw
	local var119_upvw
	local showOverlay_upvr = arg1.showOverlay
	if not showOverlay_upvr then
		function showOverlay_upvr(arg1_2) -- Line 102
		end
	end
	local any_useRef_result1_upvr_2 = React_upvr.useRef(EnumStreamNotificationsLoadingMoreState_upvr.Loading)
	local any_useState_result1, any_useState_result2_upvr_3 = React_upvr.useState(EnumStreamNotificationsLoadingMoreState_upvr.Loading)
	local var64 = 0
	if UserInputService_upvr.StatusBarSize then
		var64 = UserInputService_upvr.StatusBarSize.Y
	else
		var64 = 0
	end
	local var68_upvw
	React_upvr.useEffect(function() -- Line 111
		--[[ Upvalues[1]:
			[1]: var68_upvw (read and write)
		]]
		var68_upvw()
	end, {})
	local function _(arg1_3) -- Line 115
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: any_useState_result2_upvr_3 (readonly)
		]]
		any_useRef_result1_upvr_2.current = arg1_3
		any_useState_result2_upvr_3(arg1_3)
	end
	function var68_upvw() -- Line 120
		--[[ Upvalues[21]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: EnumStreamNotificationsLoadingMoreState_upvr (copied, readonly)
			[3]: any_useState_result2_upvr_3 (readonly)
			[4]: getStreamNotifications_upvr (copied, readonly)
			[5]: any_config_result1_upvr (copied, readonly)
			[6]: constants_upvr (copied, readonly)
			[7]: any_useRef_result1_upvr (readonly)
			[8]: sortNotifications_upvr (copied, readonly)
			[9]: GetFFlagFilterNotificationsForPCGDKEnabled_upvr (copied, readonly)
			[10]: GetFStringPCGDKFilteredNotificationTypes_upvr (copied, readonly)
			[11]: ThirdPartyUserService_upvr (copied, readonly)
			[12]: any_useState_result2_upvr_4 (readonly)
			[13]: Cryo_upvr (copied, readonly)
			[14]: NotificationHelper_upvr (copied, readonly)
			[15]: EventStream_upvr (copied, readonly)
			[16]: analyticsConstants_upvr (copied, readonly)
			[17]: any_useState_result2_upvr_2 (readonly)
			[18]: EnumStreamNotificationsDisplayState_upvr (copied, readonly)
			[19]: clearUnreadNotifications_upvr (copied, readonly)
			[20]: any_useState_result1_4_upvr (readonly)
			[21]: var69_upvw (read and write)
		]]
		if any_useRef_result1_upvr_2.current == EnumStreamNotificationsLoadingMoreState_upvr.NoMoreNotifications then
		else
			local Loading = EnumStreamNotificationsLoadingMoreState_upvr.Loading
			any_useRef_result1_upvr_2.current = Loading
			any_useState_result2_upvr_3(Loading)
			getStreamNotifications_upvr(any_config_result1_upvr, constants_upvr.DefaultMaxRows, any_useRef_result1_upvr.current):andThen(function(arg1_4) -- Line 128
				--[[ Upvalues[20]:
					[1]: sortNotifications_upvr (copied, readonly)
					[2]: GetFFlagFilterNotificationsForPCGDKEnabled_upvr (copied, readonly)
					[3]: GetFStringPCGDKFilteredNotificationTypes_upvr (copied, readonly)
					[4]: ThirdPartyUserService_upvr (copied, readonly)
					[5]: any_useState_result2_upvr_4 (copied, readonly)
					[6]: Cryo_upvr (copied, readonly)
					[7]: EnumStreamNotificationsLoadingMoreState_upvr (copied, readonly)
					[8]: any_useRef_result1_upvr_2 (copied, readonly)
					[9]: any_useState_result2_upvr_3 (copied, readonly)
					[10]: NotificationHelper_upvr (copied, readonly)
					[11]: EventStream_upvr (copied, readonly)
					[12]: analyticsConstants_upvr (copied, readonly)
					[13]: constants_upvr (copied, readonly)
					[14]: any_useState_result2_upvr_2 (copied, readonly)
					[15]: EnumStreamNotificationsDisplayState_upvr (copied, readonly)
					[16]: clearUnreadNotifications_upvr (copied, readonly)
					[17]: any_config_result1_upvr (copied, readonly)
					[18]: any_useRef_result1_upvr (copied, readonly)
					[19]: any_useState_result1_4_upvr (copied, readonly)
					[20]: var69_upvw (copied, read and write)
				]]
				-- KONSTANTERROR: [51] 41. Error Block 14 start (CF ANALYSIS FAILED)
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [51.2]
				-- KONSTANTERROR: [51] 41. Error Block 14 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [0] 1. Error Block 47 start (CF ANALYSIS FAILED)
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [51.1]
				if nil then
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [51.8]
					if nil then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
						if nil and nil and nil then
							-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [51.9]
							-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [51.4718606]
							-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [51.10]
							if nil == nil then
							else
							end
						end
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						if not nil then
						end
						-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [51.3]
						-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [51.4]
						-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [51.5]
						-- KONSTANTWARNING: GOTO [16] #15
					end
					-- KONSTANTWARNING: GOTO [42] #35
				end
				-- KONSTANTERROR: [0] 1. Error Block 47 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [52] 42. Error Block 42 start (CF ANALYSIS FAILED)
				if nil then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if 0 < #nil then
						local var91_upvw
						any_useState_result2_upvr_4(function(arg1_6) -- Line 154
							--[[ Upvalues[2]:
								[1]: Cryo_upvr (copied, readonly)
								[2]: var91_upvw (read and write)
							]]
							return Cryo_upvr.List.join(arg1_6, var91_upvw)
						end)
						local Default_2 = EnumStreamNotificationsLoadingMoreState_upvr.Default
						any_useRef_result1_upvr_2.current = Default_2
						any_useState_result2_upvr_3(Default_2)
						for _, v_2 in ipairs(var91_upvw) do
							local clientEventsPayload_2 = v_2.content.clientEventsPayload
							if not clientEventsPayload_2 then
								clientEventsPayload_2 = {}
							end
							NotificationHelper_upvr.fireEvent(EventStream_upvr, analyticsConstants_upvr.Context.fetched, analyticsConstants_upvr.EventNames.notificationRetrieved, Cryo_upvr.Dictionary.join(clientEventsPayload_2, {
								sendrVersion = constants_upvr.SENDRVersion;
								notificationType = v_2.content.notificationType or nil;
								notificationId = v_2.id or nil;
							}))
						end
						-- KONSTANTWARNING: GOTO [134] #100
					end
				end
				local NoMoreNotifications = EnumStreamNotificationsLoadingMoreState_upvr.NoMoreNotifications
				any_useRef_result1_upvr_2.current = NoMoreNotifications
				any_useState_result2_upvr_3(NoMoreNotifications)
				any_useState_result2_upvr_2(EnumStreamNotificationsDisplayState_upvr.Default)
				clearUnreadNotifications_upvr(any_config_result1_upvr)
				any_useRef_result1_upvr.current = (tonumber(any_useRef_result1_upvr.current) or 0) + constants_upvr.DefaultMaxRows
				if any_useState_result1_4_upvr and #any_useState_result1_4_upvr < constants_upvr.DefaultMaxRows then
					var69_upvw()
				end
				-- KONSTANTERROR: [52] 42. Error Block 42 end (CF ANALYSIS FAILED)
			end):catch(function(arg1_7) -- Line 184
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr_2 (copied, readonly)
					[2]: EnumStreamNotificationsDisplayState_upvr (copied, readonly)
				]]
				any_useState_result2_upvr_2(EnumStreamNotificationsDisplayState_upvr.ErrorRetrieving)
			end)
		end
	end
	local any_useRef_result1_upvr = React_upvr.useRef(var64)
	local var69_upvw = var68_upvw
	local useDeviceType_upvr_result1_upvr = useDeviceType_upvr()
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local function var100_upvr(arg1_8, arg2) -- Line 189
		--[[ Upvalues[11]:
			[1]: postReportNotification_upvr (copied, readonly)
			[2]: any_config_result1_upvr (copied, readonly)
			[3]: var121_upvw (read and write)
			[4]: arg1 (readonly)
			[5]: any_useState_result2_upvr_2 (readonly)
			[6]: EnumStreamNotificationsDisplayState_upvr (copied, readonly)
			[7]: useDeviceType_upvr_result1_upvr (readonly)
			[8]: Players_upvr (copied, readonly)
			[9]: useDispatch_upvr_result1_upvr (readonly)
			[10]: NavigateDown_upvr (copied, readonly)
			[11]: AppPage_upvr (copied, readonly)
		]]
		arg1.setDisplayScreenGuiEnabled(false)
		local tbl_3 = {
			reportEntryPoint = "Notification";
			assetId = arg2.id;
			reportSurface = string.lower(useDeviceType_upvr_result1_upvr);
		}
		local string_lower_result1 = string.lower(useDeviceType_upvr_result1_upvr)
		tbl_3.submissionEntryPoint = string_lower_result1
		if Players_upvr.LocalPlayer then
			string_lower_result1 = tostring(Players_upvr.LocalPlayer.UserId)
		else
			string_lower_result1 = nil
		end
		tbl_3.submitterUserId = string_lower_result1
		function tbl_3.onSubmitReportCallback() -- Line 193
			--[[ Upvalues[8]:
				[1]: postReportNotification_upvr (copied, readonly)
				[2]: any_config_result1_upvr (copied, readonly)
				[3]: arg2 (readonly)
				[4]: var121_upvw (copied, read and write)
				[5]: arg1_8 (readonly)
				[6]: arg1 (copied, readonly)
				[7]: any_useState_result2_upvr_2 (copied, readonly)
				[8]: EnumStreamNotificationsDisplayState_upvr (copied, readonly)
			]]
			postReportNotification_upvr(any_config_result1_upvr, arg2.id):andThen(function(arg1_9) -- Line 195
			end):catch(function(arg1_10) -- Line 196
			end)
			var121_upvw(arg1_8, arg2)
			arg1.setDisplayScreenGuiEnabled(true)
			any_useState_result2_upvr_2(EnumStreamNotificationsDisplayState_upvr.Default)
		end
		function tbl_3.onCloseCallback() -- Line 205
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: any_useState_result2_upvr_2 (copied, readonly)
				[3]: EnumStreamNotificationsDisplayState_upvr (copied, readonly)
			]]
			arg1.setDisplayScreenGuiEnabled(true)
			any_useState_result2_upvr_2(EnumStreamNotificationsDisplayState_upvr.Default)
		end
		useDispatch_upvr_result1_upvr(NavigateDown_upvr({
			name = AppPage_upvr.ReportDialog;
			reportData = tbl_3;
		}))
	end
	local function _(arg1_11) -- Line 228
		--[[ Upvalues[4]:
			[1]: var119_upvw (read and write)
			[2]: any_useState_result1_4_upvr (readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: any_useState_result2_upvr_4 (readonly)
		]]
		var119_upvw()
		if any_useState_result1_4_upvr and arg1_11 then
			any_useState_result2_upvr_4(Cryo_upvr.List.map(any_useState_result1_4_upvr, function(arg1_12) -- Line 231
				--[[ Upvalues[1]:
					[1]: arg1_11 (readonly)
				]]
				if arg1_12.id == arg1_11 then
					arg1_12.dismiss = true
				end
				return arg1_12
			end))
		end
	end
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_15, arg2) -- Line 254
		--[[ Upvalues[23]:
			[1]: any_useState_result1_2_upvr (readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: NotificationHelper_upvr (copied, readonly)
			[4]: EventStream_upvr (copied, readonly)
			[5]: analyticsConstants_upvr (copied, readonly)
			[6]: Cryo_upvr (copied, readonly)
			[7]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[8]: constants_upvr (copied, readonly)
			[9]: type_upvr (copied, readonly)
			[10]: JoinExperience_upvr (copied, readonly)
			[11]: arg1 (readonly)
			[12]: SessionService_upvr (copied, readonly)
			[13]: reportEvent_upvr (copied, readonly)
			[14]: any_new_result1_upvr (copied, readonly)
			[15]: postNotificationsApi_upvr (copied, readonly)
			[16]: any_config_result1_upvr (copied, readonly)
			[17]: var121_upvw (read and write)
			[18]: var119_upvw (read and write)
			[19]: any_useState_result2_upvr_2 (readonly)
			[20]: EnumStreamNotificationsDisplayState_upvr (copied, readonly)
			[21]: var100_upvr (readonly)
			[22]: any_useState_result1_4_upvr (readonly)
			[23]: any_useState_result2_upvr_4 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 4. Error Block 3 start (CF ANALYSIS FAILED)
		any_useState_result2_upvr(any_useState_result1_2_upvr)
		-- KONSTANTERROR: [3] 4. Error Block 3 end (CF ANALYSIS FAILED)
	end)
	local function var117_upvr(arg1_16) -- Line 338
		--[[ Upvalues[8]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: any_useState_result2_upvr_2 (readonly)
			[3]: EnumStreamNotificationsDisplayState_upvr (copied, readonly)
			[4]: NotificationHelper_upvr (copied, readonly)
			[5]: EventStream_upvr (copied, readonly)
			[6]: analyticsConstants_upvr (copied, readonly)
			[7]: NotificationsCommon_upvr (copied, readonly)
			[8]: constants_upvr (copied, readonly)
		]]
		any_useState_result2_upvr(arg1_16)
		any_useState_result2_upvr_2(EnumStreamNotificationsDisplayState_upvr.MetaActions)
		NotificationHelper_upvr.fireEvent(EventStream_upvr, analyticsConstants_upvr.Context.click, analyticsConstants_upvr.EventNames.openMetaActions, {
			visualItemType = NotificationsCommon_upvr.type.VisualItemTypeEnum.MetaAction;
			sendrVersion = constants_upvr.SENDRVersion;
		})
	end
	function var119_upvw() -- Line 354
		--[[ Upvalues[10]:
			[1]: showOverlay_upvr (readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: any_useState_result1_3_upvr (readonly)
			[4]: EnumStreamNotificationsDisplayState_upvr (copied, readonly)
			[5]: NotificationHelper_upvr (copied, readonly)
			[6]: EventStream_upvr (copied, readonly)
			[7]: analyticsConstants_upvr (copied, readonly)
			[8]: NotificationsCommon_upvr (copied, readonly)
			[9]: constants_upvr (copied, readonly)
			[10]: any_useState_result2_upvr_2 (readonly)
		]]
		showOverlay_upvr(true)
		any_useState_result2_upvr(nil)
		if any_useState_result1_3_upvr == EnumStreamNotificationsDisplayState_upvr.MetaActions then
			NotificationHelper_upvr.fireEvent(EventStream_upvr, analyticsConstants_upvr.Context.click, analyticsConstants_upvr.EventNames.closeMetaActions, {
				visualItemType = NotificationsCommon_upvr.type.VisualItemTypeEnum.MetaAction;
				sendrVersion = constants_upvr.SENDRVersion;
			})
		end
		any_useState_result2_upvr_2(EnumStreamNotificationsDisplayState_upvr.Default)
	end
	function var121_upvw(arg1_17, arg2) -- Line 371
		--[[ Upvalues[2]:
			[1]: any_useState_result1_4_upvr (readonly)
			[2]: any_useState_result2_upvr_4 (readonly)
		]]
		if any_useState_result1_4_upvr then
			if arg2 then
				for _, v in ipairs(any_useState_result1_4_upvr) do
					if v.id == arg2.id then
						v.content.currentState = arg1_17
					end
					table.insert({}, v)
				end
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		any_useState_result2_upvr_4({})
	end
	local function _() -- Line 387
		--[[ Upvalues[7]:
			[1]: React_upvr (copied, readonly)
			[2]: MetaActionsMenu_upvr (copied, readonly)
			[3]: any_useState_result1_3_upvr (readonly)
			[4]: any_useState_result1_2_upvr (readonly)
			[5]: arg1 (readonly)
			[6]: any_useCallback_result1_upvr (readonly)
			[7]: var119_upvw (read and write)
		]]
		return React_upvr.createElement(MetaActionsMenu_upvr, {
			displayState = any_useState_result1_3_upvr;
			activeNotification = any_useState_result1_2_upvr;
			isSmallScreen = arg1.isSmallScreen;
			handleActions = any_useCallback_result1_upvr;
			closeNotificationDisplay = var119_upvw;
		})
	end
	local _ = {any_useState_result1_3_upvr, any_useState_result1_2_upvr}
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_13) -- Line 242
		--[[ Upvalues[3]:
			[1]: any_useState_result1_4_upvr (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: any_useState_result2_upvr_4 (readonly)
		]]
		if any_useState_result1_4_upvr and arg1_13 then
			any_useState_result2_upvr_4(Cryo_upvr.List.filter(any_useState_result1_4_upvr, function(arg1_14) -- Line 244
				--[[ Upvalues[1]:
					[1]: arg1_13 (readonly)
				]]
				local var114 = false
				if arg1_14.id ~= arg1_13 then
					if arg1_14.dismiss == true then
						var114 = false
					else
						var114 = true
					end
				end
				return var114
			end))
		end
	end)
	local var132_upvr = constants_upvr.Modal.HeaderHeight + var64
	local function _() -- Line 397
		--[[ Upvalues[15]:
			[1]: any_useState_result1_3_upvr (readonly)
			[2]: EnumStreamNotificationsDisplayState_upvr (copied, readonly)
			[3]: React_upvr (copied, readonly)
			[4]: LoadingSpinner_upvr (copied, readonly)
			[5]: constants_upvr (copied, readonly)
			[6]: any_useState_result1_4_upvr (readonly)
			[7]: StreamNotificationBundleWrapper_upvr (copied, readonly)
			[8]: any_useCallback_result1_upvr_2 (readonly)
			[9]: any_useCallback_result1_upvr (readonly)
			[10]: var117_upvr (readonly)
			[11]: StreamNotificationAnimationWrapper_upvr (copied, readonly)
			[12]: any_useRef_result1_upvr_2 (readonly)
			[13]: EnumStreamNotificationsLoadingMoreState_upvr (copied, readonly)
			[14]: var132_upvr (readonly)
			[15]: EmptyNotifications_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 5. Error Block 2 start (CF ANALYSIS FAILED)
		do
			return React_upvr.createElement(LoadingSpinner_upvr, {
				size = UDim2.fromOffset(constants_upvr.InitializingNotifications.Size, constants_upvr.InitializingNotifications.Size);
				position = UDim2.fromScale(0.5, 0.5);
				anchorPoint = Vector2.new(0.5, 0.5);
			})
		end
		-- KONSTANTERROR: [6] 5. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [42] 30. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [42] 30. Error Block 3 end (CF ANALYSIS FAILED)
	end
	local _ = {any_useState_result1_4_upvr, any_useState_result1_3_upvr, any_useState_result1}
	local function _(arg1_18) -- Line 523
		--[[ Upvalues[6]:
			[1]: any_useState_result1_3_upvr (readonly)
			[2]: EnumStreamNotificationsDisplayState_upvr (copied, readonly)
			[3]: constants_upvr (copied, readonly)
			[4]: any_useRef_result1_upvr_2 (readonly)
			[5]: EnumStreamNotificationsLoadingMoreState_upvr (copied, readonly)
			[6]: var69_upvw (read and write)
		]]
		local Y_2 = arg1_18.AbsoluteCanvasSize.Y
		local Y = arg1_18.AbsoluteWindowSize.Y
		if Y == 0 or Y_2 == 0 or any_useState_result1_3_upvr ~= EnumStreamNotificationsDisplayState_upvr.Default then
		elseif Y_2 - Y - constants_upvr.LoadingMoreNotifications.TriggerDistance <= arg1_18.CanvasPosition.Y and any_useRef_result1_upvr_2.current == EnumStreamNotificationsLoadingMoreState_upvr.Default then
			var69_upvw()
		end
	end
	if UserInputService_upvr.BottomBarSize then
		-- KONSTANTWARNING: GOTO [239] #211
	end
	-- KONSTANTERROR: [0] 1. Error Block 53 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [238] 210. Error Block 60 start (CF ANALYSIS FAILED)
	if GuiService_upvr:GetSafeZoneOffsets() then
		-- KONSTANTWARNING: GOTO [252] #221
	end
	-- KONSTANTERROR: [238] 210. Error Block 60 end (CF ANALYSIS FAILED)
end