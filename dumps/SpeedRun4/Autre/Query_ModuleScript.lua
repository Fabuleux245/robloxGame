-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:16
-- Luau version 6, Types version 3
-- Time taken: 0.001970 seconds

local Cryo_upvr = require(script:FindFirstAncestor("ApolloLocalState").Parent.Cryo)
local module = {}
local tbl_4 = {
	omniFeedItem = {};
}
local tbl_2 = {}
local function read(arg1, arg2, arg3) -- Line 12
	local module_3 = {}
	for _, v in pairs(arg3.args.userIds) do
		local any_toReference_result1 = arg3:toReference({
			__typename = "ProfileInsights";
			targetUserId = v;
		})
		table.insert(module_3, any_toReference_result1)
		if not arg3:canRead(any_toReference_result1) then
			return nil
		end
	end
	return module_3
end
tbl_2.read = read
tbl_4.profilesInsightsByUserIds = tbl_2
local tbl = {}
local function read(arg1, arg2, arg3) -- Line 34
	local module_2 = {}
	for _, v_2 in arg3.args.userIds do
		local any_toReference_result1_2 = arg3:toReference({
			__typename = "UserProfile";
			id = v_2;
		})
		table.insert(module_2, any_toReference_result1_2)
		if not arg3:canRead(any_toReference_result1_2) then
			return nil
		end
	end
	return module_2
end
tbl.read = read
tbl_4.userProfiles = tbl
local tbl_3 = {
	keyArgs = {"userId", "sort"};
}
local mergeListsWithoutDuplicates_upvr = require(script.Parent.utils.mergeListsWithoutDuplicates)
function tbl_3.merge(arg1, arg2, arg3) -- Line 57
	--[[ Upvalues[2]:
		[1]: mergeListsWithoutDuplicates_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	if not arg2 then
		return arg3
	end
	if arg2.nextCursor == arg3.curCursor then
		local var23 = arg2
		if var23 then
			var23 = arg2.friends
		end
		local var24 = arg3
		if var24 then
			var24 = arg3.friends
		end
		return Cryo_upvr.Dictionary.join(arg3, {
			friends = mergeListsWithoutDuplicates_upvr(var23, var24, "__ref");
		})
	end
	return arg2
end
tbl_4.allFriendsByUserId = tbl_3
tbl_4.onlineFriendsByUserId = {
	keyArgs = {"userId", "sort"};
	read = function(arg1, arg2, arg3) -- Line 80, Named "read"
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		if not arg2 then
			return arg2
		end
		return Cryo_upvr.List.filter(arg2, function(arg1_2) -- Line 85
			--[[ Upvalues[1]:
				[1]: arg3 (readonly)
			]]
			local any_readField_result1 = arg3:readField("userPresenceType", arg3:readField("presence", arg1_2))
			local var30 = any_readField_result1
			if var30 then
				if any_readField_result1 == "Offline" then
					var30 = false
				else
					var30 = true
				end
			end
			return var30
		end)
	end;
}
module.fields = tbl_4
return module