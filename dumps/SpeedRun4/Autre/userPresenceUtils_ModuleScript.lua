-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:54:03
-- Luau version 6, Types version 3
-- Time taken: 0.003024 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local PresenceType_upvr = require(AppChat.Http.RoduxPresence).Enums.PresenceType
local component_assets_circle_25 = require(AppChat.Parent.UIBlox).App.ImageSet.Images["component_assets/circle_25"]
local tbl_upvr = {
	[PresenceType_upvr.Offline] = "Common.Presence.Label.Offline";
	[PresenceType_upvr.Online] = "Common.Presence.Label.Online";
	[PresenceType_upvr.InGame] = "";
	[PresenceType_upvr.InStudio] = "";
}
local tbl_upvr_2 = {
	[PresenceType_upvr.Offline] = "";
	[PresenceType_upvr.Online] = component_assets_circle_25;
	[PresenceType_upvr.InGame] = component_assets_circle_25;
	[PresenceType_upvr.InStudio] = component_assets_circle_25;
}
return {
	getUserDisplayPresence = function(arg1, arg2) -- Line 41
		--[[ Upvalues[3]:
			[1]: tbl_upvr (readonly)
			[2]: PresenceType_upvr (readonly)
			[3]: tbl_upvr_2 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if not arg1 then
			do
				return {
					text = "";
				}
			end
			local _
		end
		local function INLINED() -- Internal function, doesn't exist in bytecode
			tbl.image = tbl_upvr_2[PresenceType_upvr.Online]
			tbl.text = tbl_upvr[PresenceType_upvr.Online]
			local tbl = {}
			return tbl
		end
		if not arg2 or not INLINED() then
			local module = {}
			local userPresenceType_2 = arg1.userPresenceType
			if userPresenceType_2 == PresenceType_upvr.Offline then
			elseif userPresenceType_2 == PresenceType_upvr.Online then
			elseif userPresenceType_2 == PresenceType_upvr.InGame or userPresenceType_2 == PresenceType_upvr.InStudio then
				if arg1.lastLocation then
				else
				end
			else
			end
			module.text = ""
			module.image = tbl_upvr_2[arg1.userPresenceType]
		end
		return module
	end;
	getUserPresenceText = function(arg1) -- Line 22
		--[[ Upvalues[2]:
			[1]: PresenceType_upvr (readonly)
			[2]: tbl_upvr (readonly)
		]]
		local userPresenceType = arg1.userPresenceType
		local lastLocation = arg1.lastLocation
		if userPresenceType == PresenceType_upvr.Offline then
			return tbl_upvr[PresenceType_upvr.Offline]
		end
		if userPresenceType == PresenceType_upvr.Online then
			return tbl_upvr[PresenceType_upvr.Online]
		end
		if userPresenceType == PresenceType_upvr.InGame or userPresenceType == PresenceType_upvr.InStudio then
			if lastLocation then
				return tostring(lastLocation)
			end
			return tbl_upvr[PresenceType_upvr.Online]
		end
		return ""
	end;
	userPresenceImage = tbl_upvr_2;
	userPresenceText = tbl_upvr;
}