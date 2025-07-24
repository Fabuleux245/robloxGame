-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:32
-- Luau version 6, Types version 3
-- Time taken: 0.000542 seconds

local Spy_upvr = require(script.Parent.Parent.Spy)
return function(arg1) -- Line 4
	--[[ Upvalues[1]:
		[1]: Spy_upvr (readonly)
	]]
	local any_is_result1 = Spy_upvr.is(arg1)
	local module = {
		pass = any_is_result1;
	}
	local var5
	if any_is_result1 then
		var5 = "Expected object to be anything but a Spy."
	else
		var5 = string.format("Expected object to be a Spy. Got %q instead.", tostring(arg1))
	end
	module.message = var5
	return module
end