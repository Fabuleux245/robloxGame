-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:34
-- Luau version 6, Types version 3
-- Time taken: 0.003029 seconds

local Parent = script.Parent.Parent
local Shared = require(Parent.Shared)
local LuauPolyfill = require(Parent.LuauPolyfill)
local ReactSymbols = Shared.ReactSymbols
local module_3 = {}
local isValidElementType_upvr = Shared.isValidElementType
local Object_upvr = LuauPolyfill.Object
local Array_upvr = LuauPolyfill.Array
local REACT_ELEMENT_TYPE_upvr = ReactSymbols.REACT_ELEMENT_TYPE
local getComponentName_upvr = Shared.getComponentName
local inspect_upvr = LuauPolyfill.util.inspect
local console_upvr = Shared.console
local REACT_MEMO_TYPE_upvr = ReactSymbols.REACT_MEMO_TYPE
function module_3.memo(arg1, arg2) -- Line 38
	--[[ Upvalues[8]:
		[1]: isValidElementType_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: REACT_ELEMENT_TYPE_upvr (readonly)
		[5]: getComponentName_upvr (readonly)
		[6]: inspect_upvr (readonly)
		[7]: console_upvr (readonly)
		[8]: REACT_MEMO_TYPE_upvr (readonly)
	]]
	if _G.__DEV__ then
		local var20
		if not isValidElementType_upvr(arg1) then
			var20 = ""
			if arg1 == nil or typeof(arg1) == "table" and #Object_upvr.keys(arg1) == 0 then
				var20 = var20.." You likely forgot to export your component from the file ".."it's defined in, or you might have mixed up default and named imports."
			end
			local var21
			if arg1 == nil then
				var21 = "nil"
			elseif Array_upvr.isArray(arg1) then
				var21 = "array"
			elseif arg1 ~= nil and typeof(arg1) == "table" and arg1["$$typeof"] == REACT_ELEMENT_TYPE_upvr then
				var21 = string.format("<%s />", getComponentName_upvr(arg1.type) or "UNKNOWN")
				var20 = " Did you accidentally export a JSX literal or Element instead of a component?"
			else
				var21 = typeof(arg1)
				if arg1 ~= nil then
					var20 = '\n'..inspect_upvr(arg1)
				end
			end
			console_upvr.error("memo: The first argument must be a component. Instead received: `%s`.%s", var21, var20)
		end
	end
	local module_2 = {
		["$$typeof"] = REACT_MEMO_TYPE_upvr;
	}
	module_2.type = arg1
	module_2.compare = arg2 or nil
	if _G.__DEV__ then
		local var23_upvw
		setmetatable(module_2, {
			__index = function(arg1_4, arg2_4) -- Line 104, Named "__index"
				--[[ Upvalues[1]:
					[1]: var23_upvw (read and write)
				]]
				if arg2_4 == "displayName" then
					return var23_upvw
				end
				return rawget(arg1_4, arg2_4)
			end;
			__newindex = function(arg1_5, arg2_5, arg3) -- Line 110, Named "__newindex"
				--[[ Upvalues[2]:
					[1]: var23_upvw (read and write)
					[2]: arg1 (readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [15] 11. Error Block 4 start (CF ANALYSIS FAILED)
				arg1.displayName = var23_upvw
				do
					return
				end
				-- KONSTANTERROR: [15] 11. Error Block 4 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [20] 15. Error Block 5 start (CF ANALYSIS FAILED)
				rawset(arg1_5, arg2_5, arg3)
				-- KONSTANTERROR: [20] 15. Error Block 5 end (CF ANALYSIS FAILED)
			end;
		})
	end
	return module_2
end
return module_3