-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:50
-- Luau version 6, Types version 3
-- Time taken: 0.004391 seconds

local UserLib = script:FindFirstAncestor("UserLib")
local ReceivedUserPresence_upvr = require(UserLib.Actions.ReceivedUserPresence)
local WebPresenceMap_upvr = require(UserLib.Enum.WebPresenceMap)
local UpdateFriendPresenceCounts_upvr = require(UserLib.Parent.LegacyFriendsRodux).Actions.UpdateFriendPresenceCounts
return function(arg1, arg2) -- Line 8
	--[[ Upvalues[3]:
		[1]: ReceivedUserPresence_upvr (readonly)
		[2]: WebPresenceMap_upvr (readonly)
		[3]: UpdateFriendPresenceCounts_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	for _, v in pairs(arg1) do
		local var50 = arg2:getState().Users[tostring(v.userId)]
		local var51
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var51 = var50.universeId
			return var51
		end
		if not var50 or not INLINED_2() then
			var51 = nil
		end
		if not v.placeId or not tostring(v.placeId) then
		end
		if not v.rootPlaceId or not tostring(v.rootPlaceId) then
		end
		if not v.gameId or not tostring(v.gameId) then
		end
		if not v.lastOnline or not tostring(v.lastOnline) then
		end
		arg2:dispatch(ReceivedUserPresence_upvr(tostring(v.userId), WebPresenceMap_upvr[v.userPresenceType], v.lastLocation, nil, nil, nil, nil, v.universeId, var51))
	end
	local tbl_2 = {}
	for _, v_2 in pairs(arg2:getState().Users) do
		var51 = v_2.isFriend
		if var51 then
			var51 = v_2.presence
			if var51 then
				var51 = tbl_2[v_2.presence] or 0
				tbl_2[v_2.presence] = var51 + 1
			end
		end
	end
	arg2:dispatch(UpdateFriendPresenceCounts_upvr(tbl_2))
end