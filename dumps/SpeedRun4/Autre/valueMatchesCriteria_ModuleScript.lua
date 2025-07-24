-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:46
-- Luau version 6, Types version 3
-- Time taken: 0.003230 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module = {}
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local Object_upvr = LuauPolyfill.Object
local instanceof_upvr = LuauPolyfill.instanceof
local LuauRegExp_upvr = require(Parent.LuauRegExp)
local function valueMatchesCriteria_upvr(arg1, arg2) -- Line 16, Named "valueMatchesCriteria"
	--[[ Upvalues[6]:
		[1]: Array_upvr (readonly)
		[2]: valueMatchesCriteria_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: instanceof_upvr (readonly)
		[6]: LuauRegExp_upvr (readonly)
	]]
	if arg1 == nil then
		if arg1 ~= arg2 then
		else
		end
		return true
	end
	if Array_upvr.isArray(arg1) then
		local any_isArray_result1 = Array_upvr.isArray(arg2)
		if any_isArray_result1 then
			any_isArray_result1 = Array_upvr.every
			any_isArray_result1 = any_isArray_result1(arg1, function(arg1_4, arg2_3) -- Line 31
				--[[ Upvalues[2]:
					[1]: valueMatchesCriteria_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				return valueMatchesCriteria_upvr(arg1_4, arg2[arg2_3])
			end)
		end
		return any_isArray_result1
	end
	if typeof(arg1) == "table" then
		local var15 = false
		if typeof(arg2) == "table" then
			var15 = Boolean_upvr.toJSBoolean(arg2)
			if var15 then
				var15 = Array_upvr.every
				var15 = var15(Object_upvr.keys(arg2), function(arg1_5) -- Line 45
					--[[ Upvalues[3]:
						[1]: valueMatchesCriteria_upvr (copied, readonly)
						[2]: arg1 (readonly)
						[3]: arg2 (readonly)
					]]
					return valueMatchesCriteria_upvr(arg1[arg1_5], arg2[arg1_5])
				end)
			end
		end
		return var15
	end
	if instanceof_upvr(arg2, LuauRegExp_upvr) then
		return arg2:test(arg1)
	end
	if arg1 ~= arg2 then
	else
	end
	return true
end
module.valueMatchesCriteria = valueMatchesCriteria_upvr
return module