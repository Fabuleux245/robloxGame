-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:22
-- Luau version 6, Types version 3
-- Time taken: 0.001935 seconds

local LuauPolyfill_upvr = require(script.Parent.Parent.LuauPolyfill)
local inspect_upvr = LuauPolyfill_upvr.util.inspect
local Error_upvr = LuauPolyfill_upvr.Error
return {
	describeError = function(arg1) -- Line 34, Named "describeError"
		--[[ Upvalues[1]:
			[1]: LuauPolyfill_upvr (readonly)
		]]
		if typeof(arg1) == "string" then
			local var2 = ":[%d]+: "
			local string_find_result1, string_find_result2 = string.find(arg1, var2)
			if string_find_result2 then
				var2 = string.sub(arg1, string_find_result2 + 1)
			else
				var2 = arg1
			end
			local any_new_result1_2 = LuauPolyfill_upvr.Error.new(var2)
			any_new_result1_2.stack = debug.traceback(nil, 2)
			return any_new_result1_2
		end
		return arg1
	end;
	errorToString = function(arg1) -- Line 54, Named "errorToString"
		--[[ Upvalues[1]:
			[1]: inspect_upvr (readonly)
		]]
		if typeof(arg1) == "table" then
			if arg1.message and arg1.stack then
				return "\n------ Error caught by React ------\n"..arg1.message.."\n------ Error caught by React ------\n"..tostring(arg1.stack)
			end
			return inspect_upvr(arg1)
		end
		return inspect_upvr(arg1)
	end;
	parseReactError = function(arg1) -- Line 80, Named "parseReactError"
		--[[ Upvalues[1]:
			[1]: Error_upvr (readonly)
		]]
		local string_split_result1 = string.split(arg1, "\n------ Error caught by React ------\n")
		if #string_split_result1 == 3 then
			local unpacked_value_1, unpacked_value_2, unpacked_value_3 = table.unpack(string_split_result1)
			local any_new_result1_3 = Error_upvr.new(unpacked_value_2)
			any_new_result1_3.stack = unpacked_value_3
			return any_new_result1_3, unpacked_value_1
		end
		local any_new_result1 = Error_upvr.new(arg1)
		any_new_result1.stack = nil
		return any_new_result1, ""
	end;
	__ERROR_DIVIDER = "\n------ Error caught by React ------\n";
}