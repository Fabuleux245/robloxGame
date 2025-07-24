-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:32
-- Luau version 6, Types version 3
-- Time taken: 0.003657 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local Foundation = require(VirtualEvents.Parent.Foundation)
local useTokens_upvr = Foundation.Hooks.useTokens
local useLocalization_upvr = require(VirtualEvents.Parent.Localization).Hooks.useLocalization
local React_upvr = require(VirtualEvents.Parent.React)
local View_upvr = Foundation.View
local EventSocialProof_upvr = require(VirtualEvents.Components.EventSocialProof)
local Players_upvr = game:GetService("Players")
local Text_upvr = Foundation.Text
local formatNumberWithShortUnits_upvr = require(VirtualEvents.Common.formatNumberWithShortUnits)
return function(arg1) -- Line 21, Named "AttendanceChip"
	--[[ Upvalues[8]:
		[1]: useTokens_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: View_upvr (readonly)
		[5]: EventSocialProof_upvr (readonly)
		[6]: Players_upvr (readonly)
		[7]: Text_upvr (readonly)
		[8]: formatNumberWithShortUnits_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var3_result1 = useTokens_upvr()
	local experienceDetails = arg1.virtualEvent.experienceDetails
	local rsvpCounters = arg1.virtualEvent.rsvpCounters
	local var15
	if arg1.eventStatus ~= "Ongoing" then
		var15 = false
	else
		var15 = true
	end
	if var15 and experienceDetails and experienceDetails.playing == 0 or not var15 and rsvpCounters and rsvpCounters.going == 0 then
		do
			return nil
		end
		local var20
	end
	if rsvpCounters and rsvpCounters.going then
		var20 = rsvpCounters.going
	else
		var20 = 0
		local var21
	end
	if experienceDetails and experienceDetails.playing then
		var21 = experienceDetails.playing
	else
		var21 = 0
	end
	local module = {
		Padding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 4);
			PaddingRight = UDim.new(0, 12);
		});
	}
	local tbl = {
		userIds = React_upvr.useMemo(function() -- Line 32
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.virtualEvent.rsvps then
				for _, v in arg1.virtualEvent.rsvps do
					if v.rsvpStatus == "going" then
						table.insert({}, tostring(v.userId))
					end
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return {}
		end, {arg1.virtualEvent});
	}
	if Players_upvr.LocalPlayer then
		-- KONSTANTWARNING: GOTO [132] #93
	end
	tbl.desiredFirstUserId = nil
	module.EventSocialProof = React_upvr.createElement(EventSocialProof_upvr, tbl)
	local tbl_2 = {}
	if var15 then
		-- KONSTANTWARNING: GOTO [148] #106
	end
	if var15 then
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	tbl_2.Text = "%s %s":format(formatNumberWithShortUnits_upvr(var20), useLocalization_upvr({
		interested = "Feature.VirtualEvents.AttendanceBeforeEvent";
		attendingNow = "Feature.VirtualEvents.AttendanceDuringEvent";
	}).interested)
	tbl_2.textStyle = var3_result1.Inverse.Content.Emphasis
	tbl_2.fontStyle = var3_result1.Typography.TitleSmall
	tbl_2.tag = "auto-x size-0-full shrink text-caption-large text-truncate-end"
	module.AttendanceCount = React_upvr.createElement(Text_upvr, tbl_2)
	return React_upvr.createElement(View_upvr, {
		backgroundStyle = var3_result1.Inverse.Surface.Surface_300;
		tag = {
			["row gap-xsmall size-0-700 auto-x align-y-center align-x-center clip radius-circle"] = true;
		};
	}, module)
end