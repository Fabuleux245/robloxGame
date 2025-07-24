-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:39
-- Luau version 6, Types version 3
-- Time taken: 0.000684 seconds

local FormFactor_upvr = require(script.Parent.FormFactor)
local SetFormFactor_upvr = require(script.Parent.SetFormFactor)
return function(arg1, arg2) -- Line 6
	--[[ Upvalues[2]:
		[1]: FormFactor_upvr (readonly)
		[2]: SetFormFactor_upvr (readonly)
	]]
	local var4 = arg1
	if not var4 then
		var4 = FormFactor_upvr.UNKNOWN
	end
	if arg2.type == SetFormFactor_upvr.name then
		return arg2.formFactor
	end
	return var4
end