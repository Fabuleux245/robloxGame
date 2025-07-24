-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:12
-- Luau version 6, Types version 3
-- Time taken: 0.004727 seconds

local StreamNotifications = script:FindFirstAncestor("StreamNotifications")
local Parent = StreamNotifications.Parent
local SharedFlags = require(Parent.SharedFlags)
local ThirdPartyUserService_upvr = game:GetService("ThirdPartyUserService")
local UIBlox = require(Parent.UIBlox)
local GetFFlagNotificationsComplianceShouldRestrictStream_upvr = SharedFlags.GetFFlagNotificationsComplianceShouldRestrictStream
local var7_upvr
if SharedFlags.FFlagLuaAppNotificationsUnfilledBellIcon then
	var7_upvr = "icons/common/notificationOff"
else
	var7_upvr = "icons/common/notificationOn"
end
var7_upvr = SharedFlags.GetFFlagFilterNotificationsForPCGDKEnabled
local function _() -- Line 36, Named "GetIsFriendCommunicationRestricted"
	--[[ Upvalues[2]:
		[1]: var7_upvr (readonly)
		[2]: ThirdPartyUserService_upvr (readonly)
	]]
	local var7_upvr_result1 = var7_upvr()
	if var7_upvr_result1 then
		var7_upvr_result1 = ThirdPartyUserService_upvr
		if var7_upvr_result1 then
			var7_upvr_result1 = ThirdPartyUserService_upvr:IsChatRestrictionSupported()
			if var7_upvr_result1 then
				if ThirdPartyUserService_upvr.FriendCommunicationRestrictionStatus == Enum.ChatRestrictionStatus.NotRestricted then
					var7_upvr_result1 = false
				else
					var7_upvr_result1 = true
				end
			end
		end
	end
	return var7_upvr_result1
end
local React_upvr = require(Parent.React)
local NotificationHelper_upvr = require(Parent.NotificationsCommon).NotificationHelper
local EventStream_upvr = require(StreamNotifications.analytics.analyticsService).EventStream
local analyticsConstants_upvr = require(StreamNotifications.analytics.analyticsConstants)
local constants_upvr = require(StreamNotifications.constants)
local StreamNotifications_2_upvr = require(StreamNotifications.StreamNotifications)
local isAppNavEnabled_upvr = require(Parent.SharedFlags).isAppNavEnabled
local UtilityActionIcon_upvr = UIBlox.App.Button.UtilityActionIcon
local var20_upvr = UIBlox.App.ImageSet.Images[var7_upvr]
local ixpHelper_upvr = require(Parent.NotificationsCommon).ixpHelper
local GetFStringNotificationsStreamNotificationUXLayer_upvr = require(Parent.SharedFlags).GetFStringNotificationsStreamNotificationUXLayer
local IconButton_upvr = UIBlox.App.Button.IconButton
local IconSize_upvr = UIBlox.App.Constant.IconSize
local Badge_upvr = UIBlox.App.Indicator.Badge
local BadgeVariant_upvr = UIBlox.App.Indicator.Enum.BadgeVariant
local function var11(arg1) -- Line 50
	--[[ Upvalues[18]:
		[1]: React_upvr (readonly)
		[2]: NotificationHelper_upvr (readonly)
		[3]: EventStream_upvr (readonly)
		[4]: analyticsConstants_upvr (readonly)
		[5]: constants_upvr (readonly)
		[6]: StreamNotifications_2_upvr (readonly)
		[7]: GetFFlagNotificationsComplianceShouldRestrictStream_upvr (readonly)
		[8]: isAppNavEnabled_upvr (readonly)
		[9]: UtilityActionIcon_upvr (readonly)
		[10]: var20_upvr (readonly)
		[11]: ixpHelper_upvr (readonly)
		[12]: GetFStringNotificationsStreamNotificationUXLayer_upvr (readonly)
		[13]: var7_upvr (readonly)
		[14]: ThirdPartyUserService_upvr (readonly)
		[15]: IconButton_upvr (readonly)
		[16]: IconSize_upvr (readonly)
		[17]: Badge_upvr (readonly)
		[18]: BadgeVariant_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 42 start (CF ANALYSIS FAILED)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local var29_upvr
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var29_upvr = tonumber(arg1.notificationCount)
		return var29_upvr
	end
	if not arg1.notificationCount or not INLINED() then
		var29_upvr = 0
	end
	-- KONSTANTERROR: [0] 1. Error Block 42 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 17. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 17. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 18. Error Block 7 start (CF ANALYSIS FAILED)
	React_upvr.useEffect(function() -- Line 62
		--[[ Upvalues[5]:
			[1]: var29_upvr (readonly)
			[2]: NotificationHelper_upvr (copied, readonly)
			[3]: EventStream_upvr (copied, readonly)
			[4]: analyticsConstants_upvr (copied, readonly)
			[5]: constants_upvr (copied, readonly)
		]]
		if 0 < var29_upvr then
			NotificationHelper_upvr.fireEvent(EventStream_upvr, analyticsConstants_upvr.Context.seen, analyticsConstants_upvr.EventNames.openCTAShown, {
				count = var29_upvr;
				sendrVersion = constants_upvr.SENDRVersion;
			})
		end
	end, {var29_upvr})
	local function _() -- Line 76
		--[[ Upvalues[4]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: React_upvr (copied, readonly)
			[3]: StreamNotifications_2_upvr (copied, readonly)
			[4]: any_useState_result2_upvr (readonly)
		]]
		if any_useState_result1_upvr then
			return React_upvr.createElement(StreamNotifications_2_upvr, {
				displayStream = any_useState_result2_upvr;
			})
		end
		return nil
	end
	local _ = {any_useState_result1_upvr}
	-- KONSTANTERROR: [23] 18. Error Block 7 end (CF ANALYSIS FAILED)
end
if GetFFlagNotificationsComplianceShouldRestrictStream_upvr() then
	var11 = require(Parent.UniversalAppPolicy).RoactAppPolicy.connect(function(arg1, arg2) -- Line 152
		return {
			shouldRestrictStream = arg1.getNotificationsCanReceiveStream() or false;
		}
	end)(var11)
end
return var11