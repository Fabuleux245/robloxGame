-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:21
-- Luau version 6, Types version 3
-- Time taken: 0.006797 seconds

local LuauPolyfill = require(script.Parent.Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local function equal_upvr(arg1, arg2) -- Line 12, Named "equal"
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: equal_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 85 start (CF ANALYSIS FAILED)
	if typeof(arg1) ~= typeof(arg2) then
		return false
	end
	if arg1 == arg2 then
		return true
	end
	if typeof(arg1) == "table" then
		if Array_upvr.isArray(arg1) and not Array_upvr.isArray(arg2) then
			return false
		end
		if #arg1 ~= #arg2 or #Object_upvr.keys(arg1) ~= #Object_upvr.keys(arg2) then
			return false
		end
		if Array_upvr.isArray(arg1) then
			for i, _ in ipairs(arg1) do
				if not equal_upvr(arg1[i], arg2[i]) then
					return false
				end
			end
			do
				return true
			end
			-- KONSTANTWARNING: GOTO [106] #88
		end
		-- KONSTANTWARNING: GOTO [80] #66
	end
	-- KONSTANTERROR: [0] 1. Error Block 85 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [106] 88. Error Block 81 start (CF ANALYSIS FAILED)
	local var28
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var28 = typeof(arg1)
		return var28 == "number"
	end
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var28 = typeof(arg1)
		return var28 == "boolean"
	end
	if var28 == "string" or INLINED_3() or INLINED_4() then
		if arg1 ~= arg2 then
			var28 = false
		else
			var28 = true
		end
		return var28
	end
	var28 = typeof(arg1)
	if var28 == "function" then
		var28 = false
		local var29 = var28
		if debug.info(arg1, 'n') == debug.info(arg2, 'n') then
			var29 = false
			if debug.info(arg1, 's') == debug.info(arg2, 's') then
				var29 = false
				if debug.info(arg1, 'l') == debug.info(arg2, 'l') then
					if debug.info(arg1, 'a') ~= debug.info(arg2, 'a') then
						var29 = false
					else
						var29 = true
					end
				end
			end
		end
		return var29
	end
	if typeof(arg1) == "thread" then
		error("unhandled equality check for type 'thread'")
	elseif typeof(arg1) == "userdata" then
		error("unhandled equality check for type 'userdata'")
	end
	error("unhandled equality check for type "..typeof(arg1))
	-- KONSTANTERROR: [106] 88. Error Block 81 end (CF ANALYSIS FAILED)
end
return equal_upvr