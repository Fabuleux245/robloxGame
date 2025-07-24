-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:12
-- Luau version 6, Types version 3
-- Time taken: 0.001841 seconds

local tbl_upvr = {
	SingularMutualFriend = "Feature.Friends.Label.SingularMutualFriend";
	MutualFriends = "Feature.Friends.Label.MutualFriends";
	PlayedTogether = "Feature.Friends.Label.Frequent";
}
local function _(arg1) -- Line 49
	local var3
	if arg1.mutualFriendsCount then
		var3 = arg1.mutualFriendsCount
		return var3
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var3 = #arg1.mutualFriendsList
		return var3
	end
	if not arg1.mutualFriendsList or not INLINED() then
		var3 = 0
	end
	return var3
end
local RecommendationContextType_upvr = require(script:FindFirstAncestor("SocialLibraries").dependencies).RoduxFriends.Enums.RecommendationContextType
return function(arg1) -- Line 55
	--[[ Upvalues[2]:
		[1]: RecommendationContextType_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var6
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var6 = arg1.contextType.rawValue()
		return var6
	end
	if not arg1.contextType or not INLINED_2() then
		var6 = nil
	end
	if arg1.mutualFriendsCount then
		local _ = arg1.mutualFriendsCount
	elseif not arg1.mutualFriendsList or not #arg1.mutualFriendsList then
	end
	if var6 == RecommendationContextType_upvr.MutualFriends.rawValue() and 0 < 0 then
		local const_number_upvr = 0
		if const_number_upvr == 1 then
		else
		end
	elseif var6 == RecommendationContextType_upvr.Frequents.rawValue() then
	end
	return {
		icon = {
			path = "icons/status/player/friend";
		};
		label = {
			formatter = function(arg1_2) -- Line 65
				--[[ Upvalues[1]:
					[1]: const_number_upvr (readonly)
				]]
				if arg1_2 then
					return tostring(const_number_upvr)..' '..string.lower(arg1_2)
				end
				return nil
			end;
			text = nil;
			textKey = tbl_upvr.PlayedTogether;
		};
	}
end