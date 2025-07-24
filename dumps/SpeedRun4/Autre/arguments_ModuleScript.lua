-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:12
-- Luau version 6, Types version 3
-- Time taken: 0.001098 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local module = {}
local Utils = require(Parent.Utils)
local deduplicateArguments_upvw
local isSome_upvr = Utils.isSome
local compareNodes_upvr = Utils.compareNodes
function module.mergeArguments(arg1, arg2, arg3) -- Line 30
	--[[ Upvalues[4]:
		[1]: deduplicateArguments_upvw (read and write)
		[2]: Array_upvr (readonly)
		[3]: isSome_upvr (readonly)
		[4]: compareNodes_upvr (readonly)
	]]
	local deduplicateArguments_result1 = deduplicateArguments_upvw(Array_upvr.filter(Array_upvr.concat({}, arg2, arg1), isSome_upvr))
	if arg3 and arg3.sort then
		Array_upvr.sort(deduplicateArguments_result1, compareNodes_upvr)
	end
	return deduplicateArguments_result1
end
local Boolean_upvr = LuauPolyfill.Boolean
function deduplicateArguments_upvw(arg1) -- Line 52, Named "deduplicateArguments"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	return Array_upvr.reduce(arg1, function(arg1_2, arg2) -- Line 56
		--[[ Upvalues[2]:
			[1]: Array_upvr (copied, readonly)
			[2]: Boolean_upvr (copied, readonly)
		]]
		if not Boolean_upvr.toJSBoolean(Array_upvr.find(arg1_2, function(arg1_3) -- Line 57
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			local var13
			if arg1_3.name.value ~= arg2.name.value then
				var13 = false
			else
				var13 = true
			end
			return var13
		end)) then
			local module_2 = {}
			module_2[1] = arg2
			return Array_upvr.concat(arg1_2, module_2)
		end
		return arg1_2
	end, {})
end
return module