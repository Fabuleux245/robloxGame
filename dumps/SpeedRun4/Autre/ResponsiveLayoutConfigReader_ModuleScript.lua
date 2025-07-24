-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:10
-- Luau version 6, Types version 3
-- Time taken: 0.003632 seconds

local Parent = script.Parent.Parent.Parent.Parent.Parent
local t = require(Parent.t)
local Array_upvr = require(Parent.LuauPolyfill).Array
local function _(arg1, arg2) -- Line 28, Named "hasValue"
	for _, v in arg1 do
		if v == arg2 then
			return true
		end
	end
	return false
end
local function _(arg1, arg2) -- Line 37, Named "matches"
	local var10
	if arg1 and arg2 then
		var10 = typeof(arg2)
		if var10 == "table" then
			for _, v_2 in arg2 do
				if v_2 == arg1 then
					var10 = true
					return var10
				end
			end
			var10 = false
			return var10
		end
		if arg2 ~= arg1 then
			var10 = false
		else
			var10 = true
		end
		return var10
	end
	return true
end
local function readValue_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 48, Named "readValue"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: readValue_upvr (readonly)
	]]
	local var11_upvw = arg1[arg4]
	local var12_upvw
	if var11_upvw ~= nil then
		var12_upvw = arg5
	else
		var12_upvw = -1
	end
	Array_upvr.forEach(arg1, function(arg1_2) -- Line 51
		--[[ Upvalues[7]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
			[3]: readValue_upvr (copied, readonly)
			[4]: arg4 (readonly)
			[5]: arg5 (readonly)
			[6]: var12_upvw (read and write)
			[7]: var11_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [29] 24. Error Block 13 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [29] 24. Error Block 13 end (CF ANALYSIS FAILED)
	end)
	return var11_upvw, var12_upvw
end
local module_upvr = {
	name = "_default";
	min = math.huge;
	max = 0;
}
local tbl_upvr = {
	[t.strictInterface({
		Scale = t.number;
		Offset = t.number;
	})] = function(arg1) -- Line 89
		return UDim.new(arg1.Scale, arg1.Offset)
	end;
}
return {
	getValue = function(arg1, arg2) -- Line 95, Named "getValue"
		--[[ Upvalues[3]:
			[1]: Array_upvr (readonly)
			[2]: readValue_upvr (readonly)
			[3]: tbl_upvr (readonly)
		]]
		local config = arg1.config
		local var30_upvw = config[arg2]
		local var31_upvw
		if var30_upvw ~= nil then
			var31_upvw = 0
		else
			var31_upvw = -1
		end
		local breakpoint_upvr = arg1.breakpoint
		local kind_upvr = arg1.kind
		local const_number_upvr = 0
		Array_upvr.forEach(config, function(arg1_4) -- Line 51
			--[[ Upvalues[7]:
				[1]: breakpoint_upvr (readonly)
				[2]: kind_upvr (readonly)
				[3]: readValue_upvr (copied, readonly)
				[4]: arg2 (readonly)
				[5]: const_number_upvr (readonly)
				[6]: var31_upvw (read and write)
				[7]: var30_upvw (read and write)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [29] 24. Error Block 13 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [29] 24. Error Block 13 end (CF ANALYSIS FAILED)
		end)
		local var36 = var30_upvw
		breakpoint_upvr = nil
		kind_upvr = nil
		for i_3, v_3 in tbl_upvr, breakpoint_upvr, kind_upvr do
			if i_3(var36) then
				return v_3(var36)
			end
		end
		return var36
	end;
	findBreakpoint = function(arg1, arg2) -- Line 69, Named "findBreakpoint"
		--[[ Upvalues[2]:
			[1]: Array_upvr (readonly)
			[2]: module_upvr (readonly)
		]]
		local any_find_result1 = Array_upvr.find(arg1, function(arg1_3) -- Line 70
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			local var18 = false
			if type(arg1_3) == "table" then
				var18 = false
				if type(arg1_3.breakpoint) == "string" then
					var18 = false
					if arg2 <= (arg1_3.max or math.huge) then
						if (arg1_3.min or 0) > arg2 then
							var18 = false
						else
							var18 = true
						end
					end
				end
			end
			return var18
		end)
		if any_find_result1 then
			return {
				name = any_find_result1.breakpoint;
				min = any_find_result1.min or 0;
				max = any_find_result1.max or math.huge;
			}
		end
		return module_upvr
	end;
}