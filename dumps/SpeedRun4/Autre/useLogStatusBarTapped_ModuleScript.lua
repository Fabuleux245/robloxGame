-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:12
-- Luau version 6, Types version 3
-- Time taken: 0.002393 seconds

local UiShellEvents = script:FindFirstAncestor("UiShellEvents")
local Parent = UiShellEvents.Parent
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local AppEventIngestService_upvr = require(Parent.RoactServiceTags).AppEventIngestService
local AppUserInputService_upvr = require(Parent.RoactServiceTags).AppUserInputService
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local getCurrentRouteState_upvr = require(Parent.Navigation).getCurrentRouteState
local React_upvr = require(Parent.React)
local uiStatusBarTappedEvent_upvr = require(UiShellEvents.Analytics.uiStatusBarTappedEvent)
return function(arg1) -- Line 11, Named "useLogStatusBarTapped"
	--[[ Upvalues[7]:
		[1]: useRoactService_upvr (readonly)
		[2]: AppEventIngestService_upvr (readonly)
		[3]: AppUserInputService_upvr (readonly)
		[4]: useNavigation_upvr (readonly)
		[5]: getCurrentRouteState_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: uiStatusBarTappedEvent_upvr (readonly)
	]]
	local var3_result1_upvr_4 = useRoactService_upvr(AppEventIngestService_upvr)
	local var3_result1_upvr_2 = useRoactService_upvr(AppUserInputService_upvr)
	local var23
	if not var23 then
		var23 = {}
	end
	local var24_upvr = arg1
	if not var24_upvr then
		var24_upvr = var23.name
		if not var24_upvr then
			var24_upvr = "Unknown"
		end
	end
	React_upvr.useEffect(function() -- Line 19
		--[[ Upvalues[4]:
			[1]: var3_result1_upvr_2 (readonly)
			[2]: uiStatusBarTappedEvent_upvr (copied, readonly)
			[3]: var3_result1_upvr_4 (readonly)
			[4]: var24_upvr (readonly)
		]]
		local any_Connect_result1_upvr = var3_result1_upvr_2.StatusBarTapped:Connect(function() -- Line 20
			--[[ Upvalues[3]:
				[1]: uiStatusBarTappedEvent_upvr (copied, readonly)
				[2]: var3_result1_upvr_4 (copied, readonly)
				[3]: var24_upvr (copied, readonly)
			]]
			uiStatusBarTappedEvent_upvr(var3_result1_upvr_4, "StatusBar", {
				page = var24_upvr;
			})
		end)
		return function() -- Line 26
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end
	end, {var3_result1_upvr_4, var3_result1_upvr_2, var24_upvr})
end