-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:52
-- Luau version 6, Types version 3
-- Time taken: 0.002155 seconds

local Parent = script:FindFirstAncestor("AppCommonLib").Parent
local module = {}
local Promise_upvr = require(Parent.Promise)
local Result_upvr = require(Parent.Result)
function module.Batch(arg1, arg2) -- Line 30
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: Result_upvr (readonly)
	]]
	local var9
	if type(arg1) ~= "table" then
		var9 = false
	else
		var9 = true
	end
	assert(var9, "PromiseUtilities expects a list of Promises!")
	var9 = pairs(arg1)
	local pairs_result1_2, pairs_result2, pairs_result3 = pairs(arg1)
	for _, v in pairs_result1_2, pairs_result2, pairs_result3 do
		assert(Promise_upvr.is(v), "PromiseUtilities expects a list of Promises!")
		local var13_upvw
	end
	pairs_result1_2 = Promise_upvr.new
	pairs_result1_2 = pairs_result1_2(function(arg1_2, arg2_2) -- Line 40
		--[[ Upvalues[4]:
			[1]: Result_upvr (copied, readonly)
			[2]: var13_upvw (read and write)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
		]]
		local var19_upvw = 0
		local tbl_upvr = {}
		local function _(arg1_3, arg2_3, arg3) -- Line 44, Named "promiseCompleted"
			--[[ Upvalues[5]:
				[1]: tbl_upvr (readonly)
				[2]: Result_upvr (copied, readonly)
				[3]: var19_upvw (read and write)
				[4]: var13_upvw (copied, read and write)
				[5]: arg1_2 (readonly)
			]]
			tbl_upvr[arg1_3] = Result_upvr.new(arg2_3, arg3)
			var19_upvw += 1
			if var19_upvw == var13_upvw then
				arg1_2(tbl_upvr)
			end
		end
		if next(arg1) == nil then
			arg1_2(tbl_upvr)
		end
		for i_2_upvr, v_2 in pairs(arg1) do
			v_2:andThen(function(arg1_4, ...) -- Line 58
				--[[ Upvalues[6]:
					[1]: i_2_upvr (readonly)
					[2]: tbl_upvr (readonly)
					[3]: Result_upvr (copied, readonly)
					[4]: var19_upvw (read and write)
					[5]: var13_upvw (copied, read and write)
					[6]: arg1_2 (readonly)
				]]
				if 0 < select('#', ...) then
					warn("Promises in PromiseUtilities.Batch should not return tuple")
				end
				tbl_upvr[i_2_upvr] = Result_upvr.new(true, arg1_4)
				var19_upvw += 1
				if var19_upvw == var13_upvw then
					arg1_2(tbl_upvr)
				end
			end, function(arg1_5) -- Line 63
				--[[ Upvalues[7]:
					[1]: i_2_upvr (readonly)
					[2]: tbl_upvr (readonly)
					[3]: Result_upvr (copied, readonly)
					[4]: var19_upvw (read and write)
					[5]: var13_upvw (copied, read and write)
					[6]: arg1_2 (readonly)
					[7]: arg2 (copied, readonly)
				]]
				tbl_upvr[i_2_upvr] = Result_upvr.new(false, arg1_5)
				var19_upvw += 1
				if var19_upvw == var13_upvw then
					arg1_2(tbl_upvr)
				end
				if arg2 then
					arg2(arg1_5)
				end
			end)
		end
	end)
	return pairs_result1_2
end
function module.CountResults(arg1) -- Line 73
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var37
	for _, v_3 in pairs(arg1) do
		local any_unwrap_result1, _ = v_3:unwrap()
		if not any_unwrap_result1 then
			local var40 = 0 + 1
		end
		var37 += 1
	end
	return {
		successCount = var37 - var40;
		failureCount = var40;
		totalCount = var37;
	}
end
return module