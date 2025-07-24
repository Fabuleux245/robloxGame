-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:55
-- Luau version 6, Types version 3
-- Time taken: 0.001286 seconds

local Rodux_upvr = require(script:FindFirstAncestor("FriendsRodux").Parent.Rodux)
local module_upvr = {}
return function(arg1) -- Line 11
	--[[ Upvalues[2]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(module_upvr, {
		[arg1.friendsNetworking.GetFriendRequests.Succeeded.name] = function(arg1_2, arg2) -- Line 15
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var15 = arg1_2
			if not var15 then
				var15 = {}
			end
			local var16 = var15.count or 0
			if not var15.requestsById then
				local tbl = {}
			end
			local data = arg2.responseBody.data
			local nextPageCursor = arg2.responseBody.nextPageCursor
			if nextPageCursor == var15.lastCursor and nextPageCursor ~= nil then
				return var15
			end
			for i, v in ipairs(data) do
				if not tbl[tostring(v.id)] then
					tbl[tostring(v.id)] = var16 + i
				end
			end
			return {
				count = var16 + #data;
				lastCursor = nextPageCursor;
				requestsById = tbl;
			}
		end;
	})
end