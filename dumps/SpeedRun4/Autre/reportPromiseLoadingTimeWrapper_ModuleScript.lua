-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:27
-- Luau version 6, Types version 3
-- Time taken: 0.001378 seconds

local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")
local Parent = SocialLuaAnalytics.Parent
local Timers_upvr = require(script.Parent.Timers)
local EventTypes_upvr = require(SocialLuaAnalytics.Analytics.Enums).EventTypes
local RetrievalStatus_upvr = require(Parent.Http).Enum.RetrievalStatus
local Promise_upvr = require(Parent.Promise)
return function(arg1, arg2, arg3) -- Line 54, Named "reportPromiseLoadingTimeWrapper"
	--[[ Upvalues[4]:
		[1]: Timers_upvr (readonly)
		[2]: EventTypes_upvr (readonly)
		[3]: RetrievalStatus_upvr (readonly)
		[4]: Promise_upvr (readonly)
	]]
	return function(...) -- Line 59, Named "reportPromiseLoadingTime"
		--[[ Upvalues[7]:
			[1]: Timers_upvr (copied, readonly)
			[2]: arg3 (readonly)
			[3]: arg2 (readonly)
			[4]: EventTypes_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: RetrievalStatus_upvr (copied, readonly)
			[7]: Promise_upvr (copied, readonly)
		]]
		local args_list_upvr = {...}
		local var3_result1_upvr = Timers_upvr()
		local any_start_result1_upvr = var3_result1_upvr.start()
		local function var9_upvr(arg1_2, arg2_2) -- Line 65
			--[[ Upvalues[6]:
				[1]: arg3 (copied, readonly)
				[2]: var3_result1_upvr (readonly)
				[3]: any_start_result1_upvr (readonly)
				[4]: arg2 (copied, readonly)
				[5]: args_list_upvr (readonly)
				[6]: EventTypes_upvr (copied, readonly)
			]]
			if arg3 and arg3.fireEvent then
				local arg2_result1 = arg2(unpack(args_list_upvr))
				if not arg2_result1 then
					arg2_result1 = {}
				end
				local tbl = {
					fetch = arg2_result1.fetch;
					nextPage = arg2_result1.nextPage;
				}
				tbl.status = arg1_2
				tbl.result = arg2_2
				arg3.fireEvent(EventTypes_upvr.LoadingTime, tbl, var3_result1_upvr.stop(any_start_result1_upvr))
			end
		end
		return arg1(...):andThen(function(arg1_3) -- Line 80
			--[[ Upvalues[2]:
				[1]: var9_upvr (readonly)
				[2]: RetrievalStatus_upvr (copied, readonly)
			]]
			pcall(function() -- Line 81
				--[[ Upvalues[3]:
					[1]: var9_upvr (copied, readonly)
					[2]: RetrievalStatus_upvr (copied, readonly)
					[3]: arg1_3 (readonly)
				]]
				var9_upvr(RetrievalStatus_upvr.Done, arg1_3)
			end)
			return arg1_3
		end):catch(function(arg1_4) -- Line 86
			--[[ Upvalues[3]:
				[1]: var9_upvr (readonly)
				[2]: RetrievalStatus_upvr (copied, readonly)
				[3]: Promise_upvr (copied, readonly)
			]]
			pcall(function() -- Line 87
				--[[ Upvalues[2]:
					[1]: var9_upvr (copied, readonly)
					[2]: RetrievalStatus_upvr (copied, readonly)
				]]
				var9_upvr(RetrievalStatus_upvr.Failed)
			end)
			return Promise_upvr.reject(arg1_4)
		end)
	end
end