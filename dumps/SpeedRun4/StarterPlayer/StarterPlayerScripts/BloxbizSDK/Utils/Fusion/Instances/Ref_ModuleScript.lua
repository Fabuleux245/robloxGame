-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:59
-- Luau version 6, Types version 3
-- Time taken: 0.000652 seconds

local Parent = script.Parent.Parent
local module = {
	type = "SpecialKey";
	kind = "Ref";
	stage = "observer";
}
local xtypeof_upvr = require(Parent.Utility.xtypeof)
local logError_upvr = require(Parent.Logging.logError)
function module.apply(arg1, arg2, arg3, arg4) -- Line 18
	--[[ Upvalues[2]:
		[1]: xtypeof_upvr (readonly)
		[2]: logError_upvr (readonly)
	]]
	if xtypeof_upvr(arg2) ~= "State" or arg2.kind ~= "Value" then
		logError_upvr("invalidRefType")
	else
		arg2:set(arg3)
		table.insert(arg4, function() -- Line 23
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			arg2:set(nil)
		end)
	end
end
return module