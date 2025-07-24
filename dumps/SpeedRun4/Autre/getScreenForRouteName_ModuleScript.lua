-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:58
-- Luau version 6, Types version 3
-- Time taken: 0.001025 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local invariant_upvr = require(Parent.utils.invariant)
local isValidScreenComponent_upvr = require(Parent.utils.isValidScreenComponent)
return function(arg1, arg2) -- Line 12
	--[[ Upvalues[4]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: invariant_upvr (readonly)
		[4]: isValidScreenComponent_upvr (readonly)
	]]
	local var8 = arg1[arg2]
	if var8 == nil then
		error("There is no route defined for key %s.\nMust be one of: %s":format(arg2, table.concat(Array_upvr.map(Object_upvr.keys(arg1), function(arg1_2) -- Line 16
			return "'%s'":format(arg1_2)
		end), ',')), 2)
	end
	if type(var8) == "table" then
		if var8.screen ~= nil then
			invariant_upvr(isValidScreenComponent_upvr(var8.screen), "screen for key '%s' must be a valid Roact component.", arg2)
			return var8.screen
		end
		if type(var8.getScreen) == "function" then
			local any_getScreen_result1 = var8.getScreen()
			invariant_upvr(isValidScreenComponent_upvr(any_getScreen_result1), "The getScreen defined for route '%s' didn't return a valid ".."screen or navigator.\n\n".."Please pass it like this:\n".."%s = {\n    getScreen: function() return MyScreen end\n}", arg2, arg2)
			return any_getScreen_result1
		end
	end
	invariant_upvr(isValidScreenComponent_upvr(var8), "Value for key '%s' must be a route config table or a valid Roact component.", arg2)
	return var8
end