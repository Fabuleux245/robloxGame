-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:59
-- Luau version 6, Types version 3
-- Time taken: 0.000762 seconds

local VirtualEvents_upvr = script:FindFirstAncestor("VirtualEvents")
local Rodux_upvr = require(VirtualEvents_upvr.Parent.Rodux)
local RoduxNetworking_upvr = require(VirtualEvents_upvr.network).RoduxNetworking
return function() -- Line 7, Named "installReducer"
	--[[ Upvalues[3]:
		[1]: Rodux_upvr (readonly)
		[2]: RoduxNetworking_upvr (readonly)
		[3]: VirtualEvents_upvr (readonly)
	]]
	return Rodux_upvr.combineReducers({
		networkStatus = RoduxNetworking_upvr.installReducer();
		events = require(VirtualEvents_upvr.Reducers.events);
		media = require(VirtualEvents_upvr.Reducers.media);
		experienceDetails = require(VirtualEvents_upvr.Reducers.experienceDetails);
		rsvps = require(VirtualEvents_upvr.Reducers.rsvps);
	})
end