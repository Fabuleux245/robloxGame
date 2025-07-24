-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:04
-- Luau version 6, Types version 3
-- Time taken: 0.002791 seconds

local Parent = script:FindFirstAncestor("GameCollections").Parent
local function _(arg1, arg2) -- Line 17, Named "getGameSetTypeId"
	if arg1 ~= nil then
		if arg2 then
			return arg1.topicId
		end
		return arg1.gameSetTypeId
	end
	return nil
end
local function _(arg1, arg2) -- Line 29, Named "getGameSetTargetId"
	if not arg2 and arg1 ~= nil then
		return arg1.gameSetTargetId
	end
	return nil
end
local function _(arg1, arg2) -- Line 39, Named "getAppliedFilters"
	if not arg2 and arg1 then
		return arg1.appliedFilters
	end
	return nil
end
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local AppEventIngestService_upvr = require(Parent.RoactServiceTags).AppEventIngestService
local RoactAnalytics_upvr = require(Parent.RoactServiceTags).RoactAnalytics
local React_upvr = require(Parent.React)
local SendGameImpressions_upvr = require(script.Parent.SendGameImpressions)
local Signal_upvr = require(Parent.AppCommonLib).Signal
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) -- Line 55, Named "useGameSortImpressionsParams"
	--[[ Upvalues[6]:
		[1]: useRoactService_upvr (readonly)
		[2]: AppEventIngestService_upvr (readonly)
		[3]: RoactAnalytics_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: SendGameImpressions_upvr (readonly)
		[6]: Signal_upvr (readonly)
	]]
	local useRoactService_upvr_result1_upvr = useRoactService_upvr(AppEventIngestService_upvr)
	local useRoactService_upvr_result1_upvr_2 = useRoactService_upvr(RoactAnalytics_upvr)
	local module = {useRoactService_upvr_result1_upvr, useRoactService_upvr_result1_upvr_2}
	module[3] = arg3
	module[4] = arg5
	module[5] = arg6
	module[6] = arg2
	module[7] = arg1
	module[8] = arg4
	module[9] = arg10
	module[10] = arg11
	module[11] = arg7
	module[12] = arg12
	local any_useRef_result1 = React_upvr.useRef(nil)
	if any_useRef_result1.current == nil then
		any_useRef_result1.current = Signal_upvr.new()
	end
	local current_upvr = any_useRef_result1.current
	local tbl = {}
	tbl[1] = arg9
	tbl[2] = current_upvr
	React_upvr.useEffect(function() -- Line 119
		--[[ Upvalues[2]:
			[1]: current_upvr (readonly)
			[2]: arg9 (readonly)
		]]
		current_upvr:fire()
		local var21_upvw
		if arg9 then
			var21_upvw = arg9:connect(function() -- Line 128
				--[[ Upvalues[1]:
					[1]: current_upvr (copied, readonly)
				]]
				current_upvr:fire()
			end)
		end
		return function() -- Line 133
			--[[ Upvalues[1]:
				[1]: var21_upvw (read and write)
			]]
			if var21_upvw then
				var21_upvw:disconnect()
			end
		end
	end, tbl)
	return React_upvr.useCallback(function(arg1_2) -- Line 73
		--[[ Upvalues[13]:
			[1]: arg12 (readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: SendGameImpressions_upvr (copied, readonly)
			[5]: useRoactService_upvr_result1_upvr (readonly)
			[6]: useRoactService_upvr_result1_upvr_2 (readonly)
			[7]: arg4 (readonly)
			[8]: arg3 (readonly)
			[9]: arg11 (readonly)
			[10]: arg7 (readonly)
			[11]: arg10 (readonly)
			[12]: arg5 (readonly)
			[13]: arg6 (readonly)
		]]
		local var11
		if var11 ~= nil then
			local var12 = arg1
			if var12 ~= nil then
				if arg2 then
					var11 = var12.topicId
				else
					var11 = var12.gameSetTypeId
				end
			else
				var11 = nil
			end
			local var13 = arg1
			local var14
			if not arg2 and var13 ~= nil then
				var14 = var13.gameSetTargetId
			else
				var14 = nil
			end
			local var15 = arg1
			local var16
			if not arg2 and var15 then
				var16 = var15.appliedFilters
			else
				var16 = nil
			end
			SendGameImpressions_upvr.sendFromTopicContents(useRoactService_upvr_result1_upvr, useRoactService_upvr_result1_upvr_2, arg1_2, arg12, arg4, var11, arg3, arg11, var14, arg7, arg10, arg5, arg6, var16)
		end
	end, module), current_upvr, React_upvr.useCallback(function() -- Line 140
		--[[ Upvalues[1]:
			[1]: current_upvr (readonly)
		]]
		current_upvr:fire()
	end, {current_upvr})
end