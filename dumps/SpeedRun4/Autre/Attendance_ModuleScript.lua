-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:31
-- Luau version 6, Types version 3
-- Time taken: 0.001701 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local React_upvr = require(VirtualEvents.Parent.React)
local AttendanceCount_upvr = require(VirtualEvents.Components.AttendanceCount)
local FacePile_upvr = require(VirtualEvents.Components.FacePile)
local Players_upvr = game:GetService("Players")
return function(arg1) -- Line 16, Named "Attendance"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: AttendanceCount_upvr (readonly)
		[3]: FacePile_upvr (readonly)
		[4]: Players_upvr (readonly)
	]]
	local experienceDetails = arg1.virtualEvent.experienceDetails
	local rsvpCounters = arg1.virtualEvent.rsvpCounters
	if arg1.eventStatus == "Ongoing" and experienceDetails and experienceDetails.playing == 0 or arg1.eventStatus ~= "Ongoing" and rsvpCounters and rsvpCounters.going == 0 then
		return nil
	end
	local module = {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, 8);
		});
	}
	local tbl_2 = {
		layoutOrder = 1;
		eventStatus = arg1.eventStatus;
	}
	local var15
	if rsvpCounters and rsvpCounters.going then
		var15 = rsvpCounters.going
	else
		var15 = 0
	end
	tbl_2.interested = var15
	if experienceDetails and experienceDetails.playing then
		var15 = experienceDetails.playing
	else
		var15 = 0
	end
	tbl_2.attending = var15
	module.AttendanceCount = React_upvr.createElement(AttendanceCount_upvr, tbl_2)
	local tbl = {}
	var15 = 2
	tbl.layoutOrder = var15
	tbl.userIds = React_upvr.useMemo(function() -- Line 20
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
	end, {arg1.virtualEvent})
	if Players_upvr.LocalPlayer then
		var15 = tostring(Players_upvr.LocalPlayer.UserId)
	else
		var15 = nil
	end
	tbl.desiredFirstUserId = var15
	module.FacePile = React_upvr.createElement(FacePile_upvr, tbl)
	return React_upvr.createElement("Folder", nil, module)
end