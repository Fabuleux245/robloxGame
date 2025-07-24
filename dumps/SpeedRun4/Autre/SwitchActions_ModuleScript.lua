-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:03
-- Luau version 6, Types version 3
-- Time taken: 0.000691 seconds

local var1_upvr = require(script.Parent.Parent.NavigationSymbol)("JUMP_TO")
local module_2 = {
	JumpTo = var1_upvr;
}
setmetatable(module_2, {
	__index = function(arg1, arg2) -- Line 16, Named "__index"
		error("%q is not a valid member of SwitchActions":format(tostring(arg2)), 2)
	end;
})
local Object_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).Object
function module_2.jumpTo(arg1) -- Line 22
	--[[ Upvalues[2]:
		[1]: var1_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	local module = {
		type = var1_upvr;
		preserveFocus = true;
	}
	if arg1 then
		return Object_upvr.assign(module, arg1)
	end
	return module
end
return module_2