-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:55
-- Luau version 6, Types version 3
-- Time taken: 0.006002 seconds

local Http = script:FindFirstAncestor("Http")
local Parent = Http.Parent
local Result_upvr = require(Parent.Result)
local Promise_upvr = require(Parent.Promise)
local RetrievalStatus_upvr = require(Http.Enum).RetrievalStatus
local module_upvr_2 = {}
local tbl_4_upvw = {}
function module_upvr_2.ClearOutstandingPromiseStatus() -- Line 37
	--[[ Upvalues[1]:
		[1]: tbl_4_upvw (read and write)
	]]
	tbl_4_upvw = {}
end
local function singleFetchKeymapper_upvr(arg1) -- Line 41, Named "singleFetchKeymapper"
	return arg1
end
function module_upvr_2.GetStatus(arg1, arg2) -- Line 50
	--[[ Upvalues[1]:
		[1]: RetrievalStatus_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
	local var8
	if typeof(arg1) ~= "table" then
		var8 = false
	else
		var8 = true
	end
	assert(var8)
	if typeof(arg2) ~= "string" then
		var8 = false
		-- KONSTANTWARNING: GOTO [22] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 17. Error Block 26 start (CF ANALYSIS FAILED)
	var8 = true
	assert(var8)
	if 0 >= #arg2 then
		var8 = false
	else
		var8 = true
	end
	assert(var8)
	var8 = arg1.FetchingStatus
	local var9 = var8[arg2]
	if not var9 then
		var8 = RetrievalStatus_upvr
		var9 = var8.NotStarted
	end
	do
		return var9
	end
	-- KONSTANTERROR: [21] 17. Error Block 26 end (CF ANALYSIS FAILED)
end
function module_upvr_2.Single(arg1, arg2) -- Line 81
	--[[ Upvalues[4]:
		[1]: module_upvr_2 (readonly)
		[2]: singleFetchKeymapper_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: Result_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var10
	if typeof(arg1) ~= "string" then
		var10 = false
	else
		var10 = true
	end
	assert(var10)
	if typeof(arg2) ~= "function" then
		var10 = false
		-- KONSTANTWARNING: GOTO [22] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 17. Error Block 22 start (CF ANALYSIS FAILED)
	var10 = true
	assert(var10)
	if 0 >= #arg1 then
		var10 = false
	else
		var10 = true
	end
	assert(var10)
	do
		return function(arg1_2) -- Line 86
			--[[ Upvalues[6]:
				[1]: module_upvr_2 (copied, readonly)
				[2]: arg1 (readonly)
				[3]: singleFetchKeymapper_upvr (copied, readonly)
				[4]: arg2 (readonly)
				[5]: Promise_upvr (copied, readonly)
				[6]: Result_upvr (copied, readonly)
			]]
			local module_2 = {}
			module_2[1] = arg1
			return module_upvr_2.Batch(module_2, singleFetchKeymapper_upvr, function(arg1_3, arg2_2) -- Line 88
				--[[ Upvalues[4]:
					[1]: arg2 (copied, readonly)
					[2]: Promise_upvr (copied, readonly)
					[3]: arg1 (copied, readonly)
					[4]: Result_upvr (copied, readonly)
				]]
				local var14
				if #arg2_2 ~= 1 then
					var14 = false
				else
					var14 = true
				end
				assert(var14)
				var14 = arg1_3
				var14 = assert
				var14(Promise_upvr.is(arg2(var14)))
				var14 = arg2(var14):andThen(function(...) -- Line 94
					--[[ Upvalues[3]:
						[1]: Promise_upvr (copied, readonly)
						[2]: arg1 (copied, readonly)
						[3]: Result_upvr (copied, readonly)
					]]
					local var18
					if #{...} > 1 then
						var18 = false
					else
						var18 = true
					end
					assert(var18)
					var18 = Promise_upvr
					var18 = {}
					var18[arg1] = Result_upvr.new(true, ...)
					return var18.resolve(var18)
				end, function(...) -- Line 97
					--[[ Upvalues[3]:
						[1]: Promise_upvr (copied, readonly)
						[2]: arg1 (copied, readonly)
						[3]: Result_upvr (copied, readonly)
					]]
					local var21
					if #{...} > 1 then
						var21 = false
					else
						var21 = true
					end
					assert(var21)
					var21 = Promise_upvr
					var21 = {}
					var21[arg1] = Result_upvr.new(false, ...)
					return var21.resolve(var21)
				end)
				return var14
			end)(arg1_2):andThen(function(arg1_4) -- Line 101
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: Promise_upvr (copied, readonly)
				]]
				local any_unwrap_result1, any_unwrap_result2_2 = arg1_4[arg1]:unwrap()
				if any_unwrap_result1 then
					return Promise_upvr.resolve(any_unwrap_result2_2)
				end
				return Promise_upvr.reject(any_unwrap_result2_2)
			end)
		end
	end
	-- KONSTANTERROR: [21] 17. Error Block 22 end (CF ANALYSIS FAILED)
end
local BatchUpdateFetchingStatus_upvr = require(Http.Actions).BatchUpdateFetchingStatus
local PromiseUtilities_upvr = require(Parent.AppCommonLib).Utils.PromiseUtilities
function module_upvr_2.Batch(arg1, arg2, arg3) -- Line 154
	--[[ Upvalues[6]:
		[1]: tbl_4_upvw (read and write)
		[2]: Promise_upvr (readonly)
		[3]: RetrievalStatus_upvr (readonly)
		[4]: BatchUpdateFetchingStatus_upvr (readonly)
		[5]: PromiseUtilities_upvr (readonly)
		[6]: Result_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var27
	if typeof(arg1) ~= "table" then
		var27 = false
	else
		var27 = true
	end
	assert(var27)
	if typeof(arg2) ~= "function" then
		var27 = false
		-- KONSTANTWARNING: GOTO [22] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 17. Error Block 22 start (CF ANALYSIS FAILED)
	var27 = true
	assert(var27)
	if typeof(arg3) ~= "function" then
		var27 = false
	else
		var27 = true
	end
	assert(var27)
	do
		return function(arg1_5) -- Line 159
			--[[ Upvalues[9]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
				[3]: tbl_4_upvw (copied, read and write)
				[4]: Promise_upvr (copied, readonly)
				[5]: RetrievalStatus_upvr (copied, readonly)
				[6]: BatchUpdateFetchingStatus_upvr (copied, readonly)
				[7]: arg3 (readonly)
				[8]: PromiseUtilities_upvr (copied, readonly)
				[9]: Result_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local tbl = {}
			local tbl_2_upvr = {}
			for _, v in ipairs(arg1) do
				local arg2_result1 = arg2(v)
				local var51 = tbl_4_upvw[arg2_result1]
				if var51 then
					({})[arg2_result1] = var51
				else
					table.insert(tbl, v)
					tbl_2_upvr[v] = arg2_result1
				end
			end
			local var52_upvw
			local function var53(arg1_6) -- Line 178
				--[[ Upvalues[1]:
					[1]: var52_upvw (read and write)
				]]
				var52_upvw = arg1_6
			end
			var53 = nil
			local var54 = var53
			if 0 < #tbl then
				for i_2, v_2 in pairs(tbl_2_upvr) do
					table.insert({}, {
						key = v_2;
						status = RetrievalStatus_upvr.Fetching;
					})
					tbl_4_upvw[v_2] = Promise_upvr.new(var53)
					local var60
				end
				if 0 < #var60 then
					i_2 = var60
					arg1_5:dispatch(BatchUpdateFetchingStatus_upvr(i_2))
				end
				var54 = arg3(arg1_5, tbl)
				assert(Promise_upvr.is(var54))
			else
				var54 = Promise_upvr.resolve({})
			end
			local module_upvr = {}
			var54:andThen(function(arg1_7) -- Line 209
				--[[ Upvalues[2]:
					[1]: PromiseUtilities_upvr (copied, readonly)
					[2]: module_upvr (readonly)
				]]
				local var63_upvw = arg1_7
				if not var63_upvw then
					var63_upvw = {}
				end
				return PromiseUtilities_upvr.Batch(module_upvr):andThen(function(arg1_8) -- Line 212
					--[[ Upvalues[1]:
						[1]: var63_upvw (read and write)
					]]
					local module = {}
					for i_3, v_3 in pairs(arg1_8) do
						local _, any_unwrap_result2 = v_3:unwrap()
						module[i_3] = any_unwrap_result2[i_3]
					end
					return var63_upvw, module
				end)
			end, function() -- Line 222
				assert(false, "PerformFetch fetchFunctor should never reject")
			end):andThen(function(arg1_9, arg2_3) -- Line 225
				--[[ Upvalues[6]:
					[1]: tbl_2_upvr (readonly)
					[2]: Result_upvr (copied, readonly)
					[3]: RetrievalStatus_upvr (copied, readonly)
					[4]: tbl_4_upvw (copied, read and write)
					[5]: arg1_5 (readonly)
					[6]: BatchUpdateFetchingStatus_upvr (copied, readonly)
				]]
				local tbl_3 = {}
				for i_4, v_4 in pairs(tbl_2_upvr) do
					local var86
					if var86 then
						arg2_3[v_4] = arg1_9[v_4]
					else
						var86 = Result_upvr.error()
						arg2_3[v_4] = var86
					end
					local function INLINED() -- Internal function, doesn't exist in bytecode
						var86 = RetrievalStatus_upvr.Done
						return var86
					end
					if not arg2_3[v_4]:unwrap() or not INLINED() then
						var86 = RetrievalStatus_upvr.Failed
					end
					table.insert(tbl_3, {
						key = v_4;
						status = var86;
					})
					tbl_4_upvw[v_4] = nil
				end
				if 0 < #tbl_3 then
					i_4 = tbl_3
					arg1_5:dispatch(BatchUpdateFetchingStatus_upvr(i_4))
				end
				return arg2_3
			end):andThen(function(arg1_10) -- Line 255
				--[[ Upvalues[1]:
					[1]: var52_upvw (read and write)
				]]
				var52_upvw(arg1_10)
			end)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return Promise_upvr.new(var53)
		end
	end
	-- KONSTANTERROR: [21] 17. Error Block 22 end (CF ANALYSIS FAILED)
end
return module_upvr_2