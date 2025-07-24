-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:57
-- Luau version 6, Types version 3
-- Time taken: 0.001689 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local useLocalization_upvr = require(VirtualEvents.Parent.Localization).Hooks.useLocalization
local React_upvr = require(VirtualEvents.Parent.React)
return function(arg1, arg2, arg3, arg4) -- Line 33, Named "useCTAProps"
	--[[ Upvalues[2]:
		[1]: useLocalization_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		notifyMe = "Feature.VirtualEvents.NotifyMe";
		unfollowEvent = "Feature.VirtualEvents.UnfollowEvent";
		join = "Feature.VirtualEvents.Join";
		goHome = "Feature.VirtualEvents.GoHome";
	})
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = arg2
	tbl[3] = arg4
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 46
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: useLocalization_upvr_result1_upvr (readonly)
			[4]: arg4 (readonly)
			[5]: arg3 (readonly)
		]]
		if arg1.eventStatus ~= "cancelled" and arg1.eventStatus ~= "moderated" then
			if arg2 == "Upcoming" or arg2 == "UpcomingImminent" then
				if arg1.userRsvpStatus == "going" then
					return {
						text = useLocalization_upvr_result1_upvr.unfollowEvent;
						icon = nil;
						variant = "Standard";
						onActivated = arg4.onRsvpChanged;
					}
				end
				local module = {
					text = useLocalization_upvr_result1_upvr.notifyMe;
				}
				local var9
				module.icon = var9
				if arg3 then
					var9 = "Emphasis"
				else
					var9 = "Standard"
				end
				module.variant = var9
				module.onActivated = arg4.onRsvpChanged
				return module
			end
			if arg2 == "Ongoing" or arg2 == "ElapsedImminent" then
				return {
					text = useLocalization_upvr_result1_upvr.join;
					icon = nil;
					variant = "Emphasis";
					onActivated = arg4.onJoinEvent;
				}
			end
			return nil
		end
		return {
			text = useLocalization_upvr_result1_upvr.goHome;
			icon = nil;
			variant = "Standard";
			onActivated = arg4.onClose;
		}
	end, tbl)
	local tbl_2 = {}
	tbl_2[1] = arg1
	tbl_2[2] = arg2
	tbl_2[3] = arg4
	local any_useMemo_result1_upvr_2 = React_upvr.useMemo(function() -- Line 84
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg4 (readonly)
		]]
		if arg1.eventStatus ~= "cancelled" and arg1.eventStatus ~= "moderated" and arg2 ~= "Elapsed" then
			return {
				text = nil;
				icon = "icons/actions/shareArrowOff";
				variant = "Standard";
				onActivated = arg4.onShare;
			}
		end
		return nil
	end, tbl_2)
	return React_upvr.useMemo(function() -- Line 101
		--[[ Upvalues[2]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: any_useMemo_result1_upvr_2 (readonly)
		]]
		return {
			button = any_useMemo_result1_upvr;
			icon = any_useMemo_result1_upvr_2;
		}
	end, {any_useMemo_result1_upvr, any_useMemo_result1_upvr_2})
end