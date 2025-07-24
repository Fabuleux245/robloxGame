-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:03
-- Luau version 6, Types version 3
-- Time taken: 0.004461 seconds

local Http = script:FindFirstAncestor("Http")
local Parent = Http.Parent
local Thumbnail_upvr = require(Http.Models).Thumbnail
local Promise_upvr = require(Parent.Promise)
local module_2_upvr = {}
local Result_upvr = require(Parent.Result)
function module_2_upvr._fetchIcons(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 20
	--[[ Upvalues[3]:
		[1]: Result_upvr (readonly)
		[2]: Thumbnail_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	local function _(arg1_2) -- Line 30, Named "keyMapperForCurrentRequestNameAndSize"
		--[[ Upvalues[3]:
			[1]: arg5 (readonly)
			[2]: arg6 (readonly)
			[3]: arg4 (readonly)
		]]
		local module_5 = {}
		module_5.targetId = arg1_2
		module_5.requestName = arg6
		module_5.iconSize = arg4
		return arg5(module_5)
	end
	local function getTableOfFailedResults_upvr(arg1_3) -- Line 38, Named "getTableOfFailedResults"
		--[[ Upvalues[4]:
			[1]: arg5 (readonly)
			[2]: arg6 (readonly)
			[3]: arg4 (readonly)
			[4]: Result_upvr (copied, readonly)
		]]
		local module_4 = {}
		for _, v in pairs(arg1_3) do
			local tbl_3 = {
				targetId = v;
			}
			tbl_3.requestName = arg6
			tbl_3.iconSize = arg4
			module_4[arg5(tbl_3)] = Result_upvr.new(false, {
				targetId = v;
			})
		end
		return module_4
	end
	return arg7(arg2, arg3, arg4):andThen(function(arg1_4) -- Line 49
		--[[ Upvalues[10]:
			[1]: getTableOfFailedResults_upvr (readonly)
			[2]: arg3 (readonly)
			[3]: Thumbnail_upvr (copied, readonly)
			[4]: arg4 (readonly)
			[5]: arg5 (readonly)
			[6]: arg6 (readonly)
			[7]: Result_upvr (copied, readonly)
			[8]: arg1 (readonly)
			[9]: arg8 (readonly)
			[10]: Promise_upvr (copied, readonly)
		]]
		local var34 = arg1_4
		if var34 then
			var34 = arg1_4.responseBody
			if var34 then
				var34 = arg1_4.responseBody.data
			end
		end
		if typeof(var34) == "table" then
			for _, v_2 in pairs(var34) do
				if Thumbnail_upvr.isCompleteThumbnailData(v_2) then
					local tostring_result1 = tostring(v_2.targetId)
					local var39 = false
					if Thumbnail_upvr.checkStateIsFinal(v_2.state) then
						({})[tostring_result1] = Thumbnail_upvr.fromThumbnailData(v_2, arg4)
						var39 = true
					end
					local tbl_2 = {
						targetId = tostring_result1;
					}
					tbl_2.requestName = arg6
					tbl_2.iconSize = arg4
					getTableOfFailedResults_upvr(arg3)[arg5(tbl_2)] = Result_upvr.new(var39, v_2)
				end
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1:dispatch(arg8({}))
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return Promise_upvr.resolve(getTableOfFailedResults_upvr(arg3))
	end, function(arg1_5) -- Line 69
		--[[ Upvalues[3]:
			[1]: getTableOfFailedResults_upvr (readonly)
			[2]: arg3 (readonly)
			[3]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.resolve(getTableOfFailedResults_upvr(arg3))
	end)
end
local maximum_upvw_2 = math.max(0, tonumber(settings():GetFVariable("LuaAppNonFinalThumbnailMaxRetries")) or 0)
local maximum_upvw = math.max(0, tonumber(settings():GetFVariable("LuaAppThumbnailsApiRetryTimeMultiplier")) or 0)
local tutils_upvr = require(Parent.tutils)
function module_2_upvr._fetch(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 75
	--[[ Upvalues[6]:
		[1]: module_2_upvr (readonly)
		[2]: maximum_upvw_2 (read and write)
		[3]: maximum_upvw (read and write)
		[4]: Thumbnail_upvr (readonly)
		[5]: tutils_upvr (readonly)
		[6]: Promise_upvr (readonly)
	]]
	return module_2_upvr._fetchIcons(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8):andThen(function(arg1_6) -- Line 95
		--[[ Upvalues[14]:
			[1]: maximum_upvw_2 (copied, read and write)
			[2]: maximum_upvw (copied, read and write)
			[3]: Thumbnail_upvr (copied, readonly)
			[4]: tutils_upvr (copied, readonly)
			[5]: Promise_upvr (copied, readonly)
			[6]: module_2_upvr (copied, readonly)
			[7]: arg1 (readonly)
			[8]: arg2 (readonly)
			[9]: arg3 (readonly)
			[10]: arg4 (readonly)
			[11]: arg5 (readonly)
			[12]: arg6 (readonly)
			[13]: arg7 (readonly)
			[14]: arg8 (readonly)
		]]
		if _G.__TESTEZ_RUNNING_TEST__ then
			maximum_upvw_2 = 1
			maximum_upvw = 0.001
		end
		local module_3_upvr = {}
		local function retry_upvr(arg1_7) -- Line 104, Named "retry"
			--[[ Upvalues[16]:
				[1]: arg1_6 (read and write)
				[2]: Thumbnail_upvr (copied, readonly)
				[3]: module_3_upvr (readonly)
				[4]: tutils_upvr (copied, readonly)
				[5]: Promise_upvr (copied, readonly)
				[6]: maximum_upvw (copied, read and write)
				[7]: module_2_upvr (copied, readonly)
				[8]: arg1 (copied, readonly)
				[9]: arg2 (copied, readonly)
				[10]: arg3 (copied, readonly)
				[11]: arg4 (copied, readonly)
				[12]: arg5 (copied, readonly)
				[13]: arg6 (copied, readonly)
				[14]: arg7 (copied, readonly)
				[15]: arg8 (copied, readonly)
				[16]: retry_upvr (readonly)
			]]
			for i_3, v_3 in pairs(arg1_6) do
				local any_unwrap_result1, any_unwrap_result2 = v_3:unwrap()
				if any_unwrap_result1 and Thumbnail_upvr.checkStateIsFinal(any_unwrap_result2.state) then
					module_3_upvr[i_3] = v_3
				else
					table.insert({}, any_unwrap_result2)
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if tutils_upvr.fieldCount({}) == 0 then
				return Promise_upvr.resolve(module_3_upvr)
			end
			return Promise_upvr.new(function(arg1_8, arg2_2) -- Line 122
				--[[ Upvalues[2]:
					[1]: maximum_upvw (copied, read and write)
					[2]: arg1_7 (readonly)
				]]
				coroutine.wrap(function() -- Line 123
					--[[ Upvalues[3]:
						[1]: maximum_upvw (copied, read and write)
						[2]: arg1_7 (copied, readonly)
						[3]: arg1_8 (readonly)
					]]
					wait(maximum_upvw * math.pow(2, arg1_7 - 1))
					arg1_8()
				end)()
			end):andThen(function() -- Line 130
				--[[ Upvalues[9]:
					[1]: module_2_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: arg2 (copied, readonly)
					[4]: arg3 (copied, readonly)
					[5]: arg4 (copied, readonly)
					[6]: arg5 (copied, readonly)
					[7]: arg6 (copied, readonly)
					[8]: arg7 (copied, readonly)
					[9]: arg8 (copied, readonly)
				]]
				return module_2_upvr._fetchIcons(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
			end):andThen(function(arg1_9) -- Line 142
				--[[ Upvalues[5]:
					[1]: arg1_6 (copied, read and write)
					[2]: arg1_7 (readonly)
					[3]: retry_upvr (copied, readonly)
					[4]: Promise_upvr (copied, readonly)
					[5]: module_3_upvr (copied, readonly)
				]]
				arg1_6 = arg1_9
				if 1 < arg1_7 then
					return retry_upvr(arg1_7 - 1)
				end
				return Promise_upvr.resolve(module_3_upvr)
			end)
		end
		return retry_upvr(maximum_upvw_2)
	end)
end
local ArgCheck_upvr = require(Parent.ArgCheck)
local PerformFetch_upvr = require(Http.PerformFetch)
function module_2_upvr.Fetch(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 156
	--[[ Upvalues[3]:
		[1]: ArgCheck_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: PerformFetch_upvr (readonly)
	]]
	ArgCheck_upvr.isType(arg2, "table", "requests")
	ArgCheck_upvr.isType(arg4, "string", "requestName")
	ArgCheck_upvr.isNonNegativeNumber(#arg2, "requests count")
	module_2_upvr.KeyMapper = arg3
	return PerformFetch_upvr.Batch(arg2, arg3, function(arg1_10, arg2_3) -- Line 162
		--[[ Upvalues[6]:
			[1]: module_2_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg3 (readonly)
			[4]: arg4 (readonly)
			[5]: arg5 (readonly)
			[6]: arg6 (readonly)
		]]
		local module = {}
		local var69
		for _, v_4 in ipairs(arg2_3) do
			table.insert(module, v_4.targetId)
		end
		return module_2_upvr._fetch(arg1_10, arg1, module, nil, arg3, arg4, arg5, arg6)
	end)
end
return module_2_upvr