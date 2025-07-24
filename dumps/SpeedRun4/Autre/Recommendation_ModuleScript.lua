-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:45
-- Luau version 6, Types version 3
-- Time taken: 0.005332 seconds

local FriendsRodux = script:FindFirstAncestor("FriendsRodux")
local llama_upvr = require(FriendsRodux.Parent.llama)
local RecommendationContextType_upvr = require(FriendsRodux.Enums.RecommendationContextType)
local module_upvr = {}
function module_upvr.new(arg1) -- Line 10
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	assert(module_upvr.isValid(arg1))
	module_upvr.__index = module_upvr
	local module = {
		id = arg1.id;
		entityId = arg1.entityId;
		rank = arg1.rank;
		contextType = arg1.contextType;
		mutualFriendsList = arg1.mutualFriendsList;
		mutualFriendsCount = arg1.mutualFriendsCount;
		thumbnailEntities = arg1.thumbnailEntities;
		entityDisplayName = arg1.entityDisplayName;
	}
	setmetatable(module, module_upvr)
	return module
end
local mockId_upvr = require(script.Parent.mockId)
function module_upvr.mock(arg1) -- Line 31
	--[[ Upvalues[4]:
		[1]: mockId_upvr (readonly)
		[2]: RecommendationContextType_upvr (readonly)
		[3]: llama_upvr (readonly)
		[4]: module_upvr (readonly)
	]]
	local any_join_result1 = llama_upvr.Dictionary.join({
		id = mockId_upvr();
		contextType = RecommendationContextType_upvr.MutualFriends;
	}, arg1)
	local module_2 = {
		id = any_join_result1.id;
		mutualFriendsList = any_join_result1.mutualFriendsList;
	}
	local rank = any_join_result1.rank
	if not rank then
		rank = tonumber(any_join_result1.id)
	end
	module_2.rank = rank
	rank = any_join_result1.contextType
	local var11 = rank
	module_2.contextType = var11
	if any_join_result1.mutualFriendsCount then
		var11 = any_join_result1.mutualFriendsCount
	else
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var11 = #any_join_result1.mutualFriendsList
			return var11
		end
		if not any_join_result1.mutualFriendsList or not INLINED() then
			var11 = 0
		end
	end
	module_2.mutualFriendsCount = var11
	return module_upvr.new(module_2)
end
function module_upvr.isValid(arg1) -- Line 50
	--[[ Upvalues[1]:
		[1]: RecommendationContextType_upvr (readonly)
	]]
	if not arg1 then
		return false, "Expected recommendation information to be given"
	end
	if not arg1.id then
		return false, "Expected user's id to be given"
	end
	if not arg1.rank then
		return false, "Expected user's rank to be given"
	end
	if not arg1.contextType or not RecommendationContextType_upvr.isEnumValue(arg1.contextType) then
		return false, "Expected contextType to be given"
	end
	if arg1.mutualFriendsList and type(arg1.mutualFriendsList) ~= "table" then
		return false, "mutualFriendList must be a table of strings"
	end
	if arg1.mutualFriendsCount and type(arg1.mutualFriendsCount) ~= "number" then
		return false, "mutualFriendsCount must be a number"
	end
	if arg1.contextType == RecommendationContextType_upvr.Contacts and not arg1.entityId then
		return false, "entity Id must be given for Contacts recommendation type"
	end
	return true, "Valid Recommendation"
end
function module_upvr.isEqual(arg1, arg2) -- Line 76
	--[[ Upvalues[1]:
		[1]: llama_upvr (readonly)
	]]
	local var15 = false
	if arg1.id == arg2.id then
		var15 = llama_upvr.List.equals(arg1.mutualFriendsList, arg2.mutualFriendsList)
		if var15 then
			var15 = false
			if arg1.rank == arg2.rank then
				var15 = false
				if arg1.contextType == arg2.contextType then
					if arg1.mutualFriendsCount ~= arg2.mutualFriendsCount then
						var15 = false
					else
						var15 = true
					end
				end
			end
		end
	end
	return var15
end
function module_upvr.format(arg1) -- Line 84
	--[[ Upvalues[3]:
		[1]: RecommendationContextType_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: llama_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
	if arg1.contextType then
		if not RecommendationContextType_upvr.fromRawValue(arg1.contextType) then
			-- KONSTANTWARNING: GOTO [17] #13
		end
	else
	end
	if arg1.mutualFriendsCount then
		-- KONSTANTWARNING: GOTO [31] #23
	end
	-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 17. Error Block 27 start (CF ANALYSIS FAILED)
	if arg1.mutualFriendsList then
		-- KONSTANTWARNING: GOTO [31] #23
	end
	-- KONSTANTERROR: [23] 17. Error Block 27 end (CF ANALYSIS FAILED)
end
return module_upvr