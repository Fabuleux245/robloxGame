-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:56
-- Luau version 6, Types version 3
-- Time taken: 0.002501 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useLocalization_upvr = require(VirtualEvents.Parent.Localization).Hooks.useLocalization
local React_upvr = require(VirtualEvents.Parent.React)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local Images_upvr = UIBlox.App.ImageSet.Images
return function(arg1, arg2, arg3) -- Line 58, Named "useActionBarProps"
	--[[ Upvalues[4]:
		[1]: useLocalization_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ButtonType_upvr (readonly)
		[4]: Images_upvr (readonly)
	]]
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		notifyMe = "Feature.VirtualEvents.NotifyMe";
		unfollowEvent = "Feature.VirtualEvents.UnfollowEvent";
		joinEvent = "Feature.VirtualEvents.JoinEvent";
		goHome = "Feature.VirtualEvents.GoHome";
	})
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = arg2
	tbl[3] = arg3
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 70
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: ButtonType_upvr (copied, readonly)
			[4]: useLocalization_upvr_result1_upvr (readonly)
			[5]: Images_upvr (copied, readonly)
			[6]: arg3 (readonly)
		]]
		if arg1.eventStatus ~= "cancelled" and arg1.eventStatus ~= "moderated" then
			if arg2 == "Upcoming" or arg2 == "UpcomingImminent" then
				if arg1.userRsvpStatus == "going" then
					return {
						props = {
							buttonType = ButtonType_upvr.Secondary;
							text = useLocalization_upvr_result1_upvr.unfollowEvent;
							icon = Images_upvr["icons/actions/favoriteOn"];
							onActivated = arg3.onRsvpChanged;
						};
					}
				end
				return {
					props = {
						buttonType = ButtonType_upvr.PrimarySystem;
						text = useLocalization_upvr_result1_upvr.notifyMe;
						icon = Images_upvr["icons/actions/favoriteOff"];
						onActivated = arg3.onRsvpChanged;
					};
				}
			end
			if arg2 == "Ongoing" or arg2 == "ElapsedImminent" then
				return {
					props = {
						buttonType = ButtonType_upvr.PrimaryContextual;
						text = useLocalization_upvr_result1_upvr.joinEvent;
						onActivated = arg3.onJoinEvent;
					};
				}
			end
			return nil
		end
		return {
			props = {
				buttonType = ButtonType_upvr.Secondary;
				text = useLocalization_upvr_result1_upvr.goHome;
				onActivated = arg3.onClose;
			};
		}
	end, tbl)
	local tbl_2 = {}
	tbl_2[1] = arg1
	tbl_2[2] = arg2
	tbl_2[3] = arg3
	local any_useMemo_result1_upvr_2 = React_upvr.useMemo(function() -- Line 114
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: Images_upvr (copied, readonly)
			[4]: arg3 (readonly)
		]]
		if arg1.eventStatus ~= "cancelled" and arg1.eventStatus ~= "moderated" and arg2 ~= "Elapsed" then
			return {
				props = {
					anchorPoint = Vector2.new(0.5, 0.5);
					position = UDim2.fromScale(0.5, 0.5);
					icon = Images_upvr["icons/actions/share"];
					userInteractionEnabled = true;
					onActivated = arg3.onShare;
				};
			}
		end
		return nil
	end, tbl_2)
	return React_upvr.useMemo(function() -- Line 134
		--[[ Upvalues[2]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: any_useMemo_result1_upvr_2 (readonly)
		]]
		return {
			button = any_useMemo_result1_upvr;
			icons = {any_useMemo_result1_upvr_2};
		}
	end, {any_useMemo_result1_upvr, any_useMemo_result1_upvr_2})
end