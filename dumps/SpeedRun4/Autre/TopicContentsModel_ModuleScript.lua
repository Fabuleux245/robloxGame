-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:48
-- Luau version 6, Types version 3
-- Time taken: 0.002383 seconds

local TopicContentsEntryModel_upvr = require(script:FindFirstAncestor("TopicContentsRodux").TopicContentsEntryModel)
local module_upvr = {
	new = function() -- Line 11, Named "new"
		return {
			entries = {};
			rowsRequested = 0;
			hasMoreRows = false;
			nextPageExclusiveStartId = 0;
			updatedTimestamp = nil;
			nextPageToken = "";
		}
	end;
}
function module_upvr.mock() -- Line 25
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: TopicContentsEntryModel_upvr (readonly)
	]]
	local any_new_result1 = module_upvr.new()
	any_new_result1.entries = {TopicContentsEntryModel_upvr.mock()}
	any_new_result1.rowsRequested = 1
	any_new_result1.hasMoreRows = false
	any_new_result1.nextPageExclusiveStartId = 0
	any_new_result1.updatedTimestamp = nil
	any_new_result1.nextPageToken = ""
	return any_new_result1
end
function module_upvr.fromData(arg1) -- Line 39
	local module = {
		entries = arg1.entries;
		rowsRequested = arg1.rowsRequested;
		hasMoreRows = arg1.hasMoreRows;
		nextPageExclusiveStartId = arg1.nextPageExclusiveStartId;
	}
	local updatedTimestamp = arg1.updatedTimestamp
	module.updatedTimestamp = updatedTimestamp
	if arg1.nextPageToken then
		updatedTimestamp = arg1.nextPageToken
	else
		updatedTimestamp = ""
	end
	module.nextPageToken = updatedTimestamp
	return module
end
function module_upvr.fromContentList(arg1, arg2, arg3, arg4) -- Line 53
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: TopicContentsEntryModel_upvr (readonly)
	]]
	local any_new_result1_2_upvr = module_upvr.new()
	any_new_result1_2_upvr.updatedTimestamp = arg4
	any_new_result1_2_upvr.entries = {}
	any_new_result1_2_upvr.hasMoreRows = false
	if arg1 then
		for _, v_upvr in ipairs(arg1) do
			if any_new_result1_2_upvr.hasMoreRows then
				return any_new_result1_2_upvr
			end
			TopicContentsEntryModel_upvr.fromOmniRecommendations(v_upvr):match(function(arg1_2) -- Line 72
				--[[ Upvalues[4]:
					[1]: v_upvr (readonly)
					[2]: arg2 (readonly)
					[3]: arg3 (readonly)
					[4]: any_new_result1_2_upvr (readonly)
				]]
				local arg2_result1 = arg2(v_upvr.contentType)
				if arg2_result1 ~= nil then
					local arg3_result1 = arg3(arg1_2, arg2_result1)
					if arg3_result1 ~= nil then
						table.insert(any_new_result1_2_upvr.entries, arg3_result1)
						return
					end
					any_new_result1_2_upvr.hasMoreRows = true
				end
			end):matchError(function(arg1_3) -- Line 84
				warn(arg1_3)
			end)
		end
	end
	return any_new_result1_2_upvr
end
return module_upvr