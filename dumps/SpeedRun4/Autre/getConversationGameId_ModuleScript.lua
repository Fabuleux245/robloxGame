-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:49
-- Luau version 6, Types version 3
-- Time taken: 0.002594 seconds

local UserModel_upvr = require(script:FindFirstAncestor("SocialLibraries").dependencies).UserModel
return function(arg1, arg2, arg3) -- Line 7
	--[[ Upvalues[1]:
		[1]: UserModel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var45
	if arg1.pinnedGame then
		var45 = arg1.pinnedGame
		if var45.universeId then
			var45 = arg1.pinnedGame.universeId
			return tostring(var45)
		end
	end
	local tbl_2 = {}
	var45 = pairs
	local participants = arg1.participants
	if not participants then
		participants = {}
	end
	var45 = var45(participants)
	local var45_result1, var45_result2, var45_result3 = var45(participants)
	for _, v in var45_result1, var45_result2, var45_result3 do
		local var51 = arg3[v]
		if var51 ~= nil and v ~= arg2 and var51.presence == UserModel_upvr.PresenceType.IN_GAME and var51.rootPlaceId then
			tbl_2[var51.rootPlaceId] = tbl_2[var51.rootPlaceId] or 0
			tbl_2[var51.rootPlaceId] += 1
		end
	end
	var45_result1 = nil
	for i_2, v_2 in pairs(tbl_2) do
		if 0 < v_2 then
			var45_result1 = i_2
		end
	end
	if not var45_result1 or not tostring(var45_result1) then
	end
	return nil
end