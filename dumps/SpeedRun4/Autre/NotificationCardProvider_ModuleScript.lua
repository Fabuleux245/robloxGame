-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:36
-- Luau version 6, Types version 3
-- Time taken: 0.001713 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local analyticsService_upvr = require(Parent.analytics.analyticsService)
local constants_upvr = require(Parent.constants)
local toastNotificationHelper_upvr = require(Parent.utils.toastNotificationHelper)
local React_upvr = require(Parent.Parent.React)
local NotificationCardContext_upvr = require(Parent_2.NotificationCardContext)
return function(arg1) -- Line 23, Named "NotificationCardProvider"
	--[[ Upvalues[5]:
		[1]: analyticsService_upvr (readonly)
		[2]: constants_upvr (readonly)
		[3]: toastNotificationHelper_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: NotificationCardContext_upvr (readonly)
	]]
	local tbl = {
		thumbnail = constants_upvr.CardSizeDefault.thumbnail;
		cardPadding = constants_upvr.Padding.DefaultCardPadding;
	}
	local var9
	if var9 then
		var9 = constants_upvr.CardSizeCompact.thumbnail
		tbl.thumbnail = var9
		var9 = constants_upvr.Padding.CompactCardPadding
		tbl.cardPadding = var9
	end
	if arg1.isCompact then
		var9 = constants_upvr.CardTransparency.Compact
	else
		var9 = constants_upvr.CardTransparency.Default
	end
	local EventStream_upvr = analyticsService_upvr.EventStream
	return React_upvr.createElement(NotificationCardContext_upvr.Provider, {
		value = {
			state = arg1.state;
			cardSize = tbl;
			handleActions = arg1.handleActions;
			sendEvent = function(arg1_2) -- Line 36
				--[[ Upvalues[2]:
					[1]: toastNotificationHelper_upvr (copied, readonly)
					[2]: EventStream_upvr (readonly)
				]]
				toastNotificationHelper_upvr.fireEvent(EventStream_upvr, arg1_2)
			end;
			cardTransparency = var9;
			notificationReceivedTimestampMs = arg1.notificationReceivedTimestampMs;
			timers = arg1.timers;
			displayTimestampMs = arg1.displayTimestampMs;
		};
	}, arg1.children)
end