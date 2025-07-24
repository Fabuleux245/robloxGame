-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:16:05
-- Luau version 6, Types version 3
-- Time taken: 0.000879 seconds

local LuauPolyfill = require(script.Parent.Parent.Parent.LuauPolyfill)
local module_2 = {
	compose = function(arg1, arg2) -- Line 22, Named "compose"
		if arg1 ~= nil and arg2 ~= nil then
			local module = {}
			module[1] = arg1
			module[2] = arg2
			return module
		end
		if arg1 ~= nil then
			return arg1
		end
		return arg2
	end;
}
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
function module_2.create(arg1) -- Line 31
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	if _G.__DEV__ then
		Array_upvr.forEach(Object_upvr.keys(arg1), function(arg1_2) -- Line 36
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Object_upvr (copied, readonly)
			]]
			if arg1[arg1_2] then
				Object_upvr.freeze(arg1[arg1_2])
			end
		end)
	end
	return arg1
end
return module_2